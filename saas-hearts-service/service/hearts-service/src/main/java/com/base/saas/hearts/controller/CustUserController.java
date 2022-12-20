package com.base.saas.hearts.controller;

import com.base.saas.hearts.domain.entity.CustUser;
import com.base.saas.hearts.service.CustUserService;
import com.base.saas.language.LocaleMessage;
import com.base.saas.logger.LoggerCommon;
import com.base.saas.userinfo.AppUserContextUtil;
import com.base.saas.userinfo.UserInfo;
import com.base.saas.util.ExceptionStackUtils;
import com.base.saas.util.HeaderUtil;
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

    @ApiOperation(value = "app列表", notes = "app用户列表")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pageSize", value = "分页大小", dataType = "int", paramType = "query", required = true),
            @ApiImplicitParam(name = "pageIndex", value = "当前页码", dataType = "int", paramType = "query", required = true),
            @ApiImplicitParam(name = "status", value = "状态", dataType = "int", paramType = "query", required = false)
    })
    @GetMapping("/getList")
    public ResponseEntity getDictList(@RequestParam(value = "pageSize") Integer pageSize,
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

    @ApiOperation(value = "app用户注册", httpMethod = "POST", notes = "app用户注册")
    @PostMapping("/register")
    public ResponseEntity saveDict(@RequestBody CustUser custUser) {

        String logmsg ;
        try {
            boolean flag = custUserService.addCustUser(custUser);//保存

            if (flag) {//保存成功

                LoggerCommon.info(this.getClass(), "app用户注册成功" );
                return ResponseEntity.ok().body(null);
            } else {
                LoggerCommon.info(this.getClass(), "app用户注册失败" );

                logmsg = LocaleMessage.get("message.system.save.fail");

                return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(logmsg)).body(null);
            }
        } catch (Exception e) {
            logmsg = LocaleMessage.get("message.system.save.fail");

            LoggerCommon.info(this.getClass(), "app用户注册失败：" + ExceptionStackUtils.collectExceptionStackMsg(e));

            return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(logmsg)).body(null);
        }

    }

    @ApiOperation(value = "app用户登录", notes = "app用户登录")
    @PostMapping("/login")
    public ResponseEntity doLogin(@RequestBody CustUser custUser,HttpServletRequest request) {
        CustUser appUserInfo = null;
        String localeTipMsg = LocaleMessage.get("system.server.exception");
        try {
            appUserInfo = custUserService.login(custUser.getNickname(),custUser.getPassword());
        } catch (Exception e) {

            LoggerCommon.info(this.getClass(), "app用户登录异常：" + ExceptionStackUtils.collectExceptionStackMsg(e));

        }

        if (appUserInfo == null){
            return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(localeTipMsg))
                    .body(null);
        }

        UserInfo userInfo = new UserInfo();
        userInfo.setUserId(appUserInfo.getId());
        userInfo.setCompanyCode(appUserInfo.getCompanyCode());
        userInfo.setAccount(appUserInfo.getNickname());
        AppUserContextUtil.setUserInfo(request.getSession().getId(), userInfo);

        String loginIp = request.getRemoteAddr();
        //最后一次登录ip和登录时间修改
        custUserService.updateCustUserLastLoginInfo(appUserInfo.getId(),loginIp);

        String sessionId = request.getSession().getId();

        return ResponseEntity.ok().headers(HeaderUtil.createToken(sessionId)).body(appUserInfo);
    }

    2.修改用户信息
    4. 错误次数
    5. 修改状态
    6. 修改密码
    7. 获取用户信息

    1. 新增话题
    2. 修改话题
    3. 话题详情
    4. 话题列表

    1. 新增评论
    2. 修改评论状态
    3. 评论列表-可能不需要
    4. 话题详情
}
