package com.base.saas.hearts.controller;

import com.base.saas.AppConstant;
import com.base.saas.hearts.domain.entity.CustUser;
import com.base.saas.hearts.domain.model.ResponseData;
import com.base.saas.hearts.domain.model.ReturnMap;
import com.base.saas.hearts.service.CustUserService;
import com.base.saas.language.LocaleMessage;
import com.base.saas.logger.LoggerCommon;
import com.base.saas.userinfo.AppUserContextUtil;
import com.base.saas.userinfo.UserInfo;
import com.base.saas.util.CreateIDUtil;
import com.base.saas.util.ExceptionStackUtils;
import com.base.saas.util.HeaderUtil;
import com.base.saas.util.redis.RedisUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/api/custUser")
@Api(tags = "app用户管理")
public class CustUserController {

    @Autowired
    CustUserService custUserService;


    @ApiOperation(value = "app用户注册", httpMethod = "POST", notes = "app用户注册")
    @PostMapping("/register")
    public ResponseEntity register(@RequestBody CustUser custUser) {

        String logmsg;
        try {

            ResponseData responseData = new ResponseData();

            boolean flag = custUserService.addCustUser(custUser);//保存

            if (flag) {//保存成功

                responseData.setCode(200);
                responseData.setMsg("app用户注册成功");
                LoggerCommon.info(this.getClass(), "app用户注册成功");
                return ResponseEntity.ok().body(responseData);
            } else {
                responseData.setCode(400);
                LoggerCommon.info(this.getClass(), "app用户注册失败");
                responseData.setMsg("app用户手机号码重复！");
                logmsg = LocaleMessage.get("message.system.save.fail");

                return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(logmsg)).body(responseData);
            }
        } catch (Exception e) {
            logmsg = LocaleMessage.get("message.system.save.fail");

            LoggerCommon.info(this.getClass(), "app用户注册失败：" + ExceptionStackUtils.collectExceptionStackMsg(e));

            return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(logmsg)).body(null);
        }

    }

    @ApiOperation(value = "app用户登录", notes = "app用户登录")
    @PostMapping("/doLogin")
    public ResponseEntity doLogin(@RequestBody CustUser custUser, HttpServletRequest request) {
        CustUser appUserInfo = null;
        String localeTipMsg = LocaleMessage.get("system.server.exception");
        try {
            ReturnMap<CustUser> returnMap = custUserService.login(custUser.getNickname(), custUser.getPassword(), custUser.getCompanyCode());
            if (returnMap.getCode() == 1) {
                appUserInfo = returnMap.getT();
            } else {
                localeTipMsg = LocaleMessage.get(returnMap.getMsg());
            }
        } catch (Exception e) {

            LoggerCommon.info(this.getClass(), "app用户登录异常：" + ExceptionStackUtils.collectExceptionStackMsg(e));

        }

        if (appUserInfo == null) {
            return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(localeTipMsg))
                    .body(null);
        }
        String sessionId = CreateIDUtil.getId();

        UserInfo userInfo = new UserInfo();
        userInfo.setUserId(appUserInfo.getId());
        userInfo.setCompanyCode(appUserInfo.getCompanyCode());
        userInfo.setAccount(appUserInfo.getNickname());
        userInfo.setToken(sessionId);
        AppUserContextUtil.setUserInfo(sessionId, userInfo);

        String loginIp = request.getRemoteAddr();
        //最后一次登录ip和登录时间修改
        custUserService.updateCustUserLastLoginInfo(appUserInfo.getId(), loginIp);

        return ResponseEntity.ok().headers(HeaderUtil.createAppToken(sessionId)).body(appUserInfo);
    }

    @ApiOperation(value = "app列表", notes = "app用户列表")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pageSize", value = "分页大小", dataType = "int", paramType = "query", required = true),
            @ApiImplicitParam(name = "pageIndex", value = "当前页码", dataType = "int", paramType = "query", required = true),
            @ApiImplicitParam(name = "status", value = "状态", dataType = "int", paramType = "query", required = false)
    })
    @GetMapping("/getList")
    public ResponseEntity getList(@RequestParam(value = "pageSize") Integer pageSize,
                                  @RequestParam(value = "pageIndex") Integer pageIndex,
                                  @RequestParam(value = "status", required = false) Integer status) {
        LoggerCommon.info(this.getClass(), "app用户列表");

        PageHelper.startPage(pageIndex, pageSize, true);
        try {
            List<CustUser> custUsers = custUserService.getCustUserList(status);
            PageInfo<CustUser> pageInfo = new PageInfo<>(custUsers);
            LoggerCommon.info(this.getClass(), "成功查询列表数据");
            return ResponseEntity.ok().body(pageInfo);
        } catch (Exception e) {
            String logmsg = LocaleMessage.get("message.query.errorMessage");

            LoggerCommon.info(this.getClass(), "查询数据列表异常：" + ExceptionStackUtils.collectExceptionStackMsg(e));

            return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(logmsg)).body(null);
        }

    }

    @ApiOperation(value = "退出", httpMethod = "POST", notes = "退出")
    @PostMapping("/logout")
    public ResponseEntity logout() {

        if (AppUserContextUtil.getUserInfo() != null) {
            RedisUtil.del(AppConstant.APP_USER_INFO + AppUserContextUtil.getUserTokenId());
        }
        return ResponseEntity.ok().body(null);
    }

    @ApiOperation(value = "修改密码", notes = "修改密码")
    @PostMapping("/updateCustUserPwd")
    public ResponseEntity updateCustUserPwd(@RequestBody CustUser custUser) {

        String localeTipMsg = LocaleMessage.get("message.system.update.fail");
        try {
            boolean flag = custUserService.updateCustUserPassword(custUser.getNickname(), custUser.getUniqueIdenty(), custUser.getPassword());

            if (flag) {
                LoggerCommon.info(this.getClass(), "修改密码成功");
                return ResponseEntity.ok().body(null);
            } else {
                LoggerCommon.info(this.getClass(), "修改密码失败：" + localeTipMsg);
                return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(localeTipMsg)).body(null);
            }
        } catch (Exception e) {

            LoggerCommon.info(this.getClass(), "修改密码：" + localeTipMsg);
            return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(localeTipMsg)).body(null);
        }
    }

    @GetMapping("/getUserDetailById")
    @ApiOperation(value = "查询app用户详情", notes = "查询app用户详情")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "userId", value = "用户id", dataType = "String", paramType = "query", required = true),
    })
    public ResponseEntity getUserById(@RequestParam String userId) {
        try {
            CustUser user = custUserService.getCustUserInfoById(userId);
            return ResponseEntity.ok().body(user);
        } catch (Exception e) {
            String logmsg = LocaleMessage.get("message.query.errorMessage");

            LoggerCommon.info(this.getClass(), "查询app用户异常：" + ExceptionStackUtils.collectExceptionStackMsg(e));

            return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(logmsg)).body(null);
        }
    }

    @ApiOperation(value = "修改状态", notes = "修改状态")
    @PostMapping("/updateCustUserStatus")
    public ResponseEntity updateCustUserStatus(@RequestBody CustUser custUser) {

        String localeTipMsg = LocaleMessage.get("message.system.update.fail");
        try {
            boolean flag = custUserService.updateCustUserStatus(custUser.getId(), custUser.getStatus());

            if (flag) {
                LoggerCommon.info(this.getClass(), "修改状态成功");
                return ResponseEntity.ok().body(null);
            } else {
                LoggerCommon.info(this.getClass(), "修改状态失败：" + localeTipMsg);
                return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(localeTipMsg)).body(null);
            }
        } catch (Exception e) {

            LoggerCommon.info(this.getClass(), "修改状态：" + localeTipMsg);
            return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(localeTipMsg)).body(null);
        }
    }


}
