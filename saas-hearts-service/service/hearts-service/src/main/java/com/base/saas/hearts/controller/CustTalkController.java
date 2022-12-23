package com.base.saas.hearts.controller;

import com.base.saas.hearts.domain.entity.CustTalk;
import com.base.saas.hearts.service.CustTalkService;
import com.base.saas.language.LocaleMessage;
import com.base.saas.logger.LoggerCommon;
import com.base.saas.userinfo.UserContextUtil;
import com.base.saas.util.ExceptionStackUtils;
import com.base.saas.util.HeaderUtil;
import com.base.saas.util.StringUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/custTalk")
@Api(tags = "app话题管理")
public class CustTalkController {

    @Autowired
    CustTalkService custTalkService;

    @PostMapping("/addTalk")
    @ApiOperation(value = "新增话题", notes = "新增话题")
    public ResponseEntity addRole(@RequestBody CustTalk custTalk) {

        String logmsg = LocaleMessage.get("message.system.save.fail");
        try {
            boolean flag = custTalkService.addCustTalk(custTalk);

            if (flag) {
                return ResponseEntity.ok().body(null);
            } else {
                return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(logmsg)).body(null);
            }
        } catch (Exception e) {


            LoggerCommon.info(this.getClass(), "修改话题异常：" + ExceptionStackUtils.collectExceptionStackMsg(e));

            return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(logmsg)).body(null);
        }
    }

    @PostMapping("/updateTalk")
    @ApiOperation(value = "修改话题", notes = "修改话题")
    public ResponseEntity updateStatus(@RequestBody CustTalk custTalk) {
        String logmsg = LocaleMessage.get("message.system.update.fail");

        try {
            boolean flag = custTalkService.updateCustTalk(custTalk);
            if (flag) {
                return ResponseEntity.ok().body(null);
            } else {
                return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(logmsg)).body(null);
            }
        } catch (Exception e) {

            LoggerCommon.info(this.getClass(), "修改话题异常：" + ExceptionStackUtils.collectExceptionStackMsg(e));

            return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(logmsg)).body(null);
        }
    }

    @GetMapping("/getTalkDetail")
    @ApiOperation(value = "话题详情", notes = "话题详情")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "talkId", value = "话题id", dataType = "String", paramType = "query", required = true),
    })
    public ResponseEntity getRoleList( @RequestParam(value = "talkId") String talkId) {

        try {
            CustTalk custTalk = custTalkService.getCustTalkInfoById(talkId);
            return ResponseEntity.ok().body(custTalk);
        } catch (Exception e) {
            String logmsg = LocaleMessage.get("message.query.errorMessage");

            LoggerCommon.info(this.getClass(), "话题详情异常：" + ExceptionStackUtils.collectExceptionStackMsg(e));

            return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(logmsg)).body(null);
        }
    }

    @GetMapping("/getTalkList")
    @ApiOperation(value = "话题列表", notes = "话题列表")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pageSize", value = "分页大小", dataType = "int", paramType = "query", required = true),
            @ApiImplicitParam(name = "pageIndex", value = "当前页码", dataType = "int", paramType = "query", required = true),
            @ApiImplicitParam(name = "status", value = "状态，0：禁用，1：正常", dataType = "int", paramType = "query", required = false),
            @ApiImplicitParam(name = "createrUserId", value = "创建者id", dataType = "String", paramType = "query", required = false),
            @ApiImplicitParam(name = "companyCode", value = "所属企业", dataType = "String", paramType = "query", required = false),
    })
    public ResponseEntity getRoleList(@RequestParam("pageSize") Integer pageSize,
                                      @RequestParam("pageIndex") Integer pageIndex,
                                      @RequestParam(value = "status", required = false) Integer status,
                                      @RequestParam(value = "createrUserId", required = false) String createrUserId,
                                      @RequestParam(value = "companyCode", required = false) String companyCode) {

        try {
            PageHelper.startPage(pageIndex, pageSize, true);
            List<CustTalk> list = custTalkService.getCustTalkList(status,createrUserId,companyCode);
            PageInfo pageInfo = new PageInfo(list);
            return ResponseEntity.ok().body(pageInfo);
        } catch (Exception e) {
            String logmsg = LocaleMessage.get("message.query.errorMessage");

            LoggerCommon.info(this.getClass(), "获取话题列表异常：" + ExceptionStackUtils.collectExceptionStackMsg(e));

            return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(logmsg)).body(null);
        }
    }

}
