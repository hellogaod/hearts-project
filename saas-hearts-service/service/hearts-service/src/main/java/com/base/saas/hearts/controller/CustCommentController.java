package com.base.saas.hearts.controller;

import com.base.saas.hearts.domain.entity.CustComment;
import com.base.saas.hearts.service.CustCommentService;
import com.base.saas.language.LocaleMessage;
import com.base.saas.logger.LoggerCommon;
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

import java.util.List;

@RestController
@RequestMapping("/api/custComment")
@Api(tags = "app评论管理")
public class CustCommentController {

    @Autowired
    CustCommentService custCommentService;

    @PostMapping("/addComment")
    @ApiOperation(value = "新增评论", notes = "新增评论")
    public ResponseEntity addRole(@RequestBody CustComment custComment) {

        String logmsg = LocaleMessage.get("message.system.save.fail");
        try {
            boolean flag = custCommentService.addCustComment(custComment);
            if (flag) {
                return ResponseEntity.ok().body(null);
            } else {
                return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(logmsg)).body(null);
            }
        } catch (Exception e) {

            LoggerCommon.info(this.getClass(), "新增评论异常：" + ExceptionStackUtils.collectExceptionStackMsg(e));

            return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(logmsg)).body(null);
        }
    }

    @PostMapping("/updateStatus")
    @ApiOperation(value = "修改评论状态", notes = "修改评论状态")
    public ResponseEntity updateStatus(@RequestBody CustComment custComment) {
        String logmsg = LocaleMessage.get("message.system.update.fail");
        try {
            boolean flag = custCommentService.updateCustComment(custComment);
            if (flag) {
                return ResponseEntity.ok().body(null);
            } else {
                return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(logmsg)).body(null);
            }
        } catch (Exception e) {

            LoggerCommon.info(this.getClass(), "修改评论状态异常：" + ExceptionStackUtils.collectExceptionStackMsg(e));

            return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(logmsg)).body(null);
        }
    }
    @GetMapping("/getCommentList")
    @ApiOperation(value = "评论列表", notes = "评论列表")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pageSize", value = "分页大小", dataType = "int", paramType = "query", required = true),
            @ApiImplicitParam(name = "pageIndex", value = "当前页码", dataType = "int", paramType = "query", required = true),
            @ApiImplicitParam(name = "status", value = "状态，0：禁用，1：正常", dataType = "int", paramType = "query", required = false),
            @ApiImplicitParam(name = "talkId", value = "所属话题", dataType = "String", paramType = "query", required = false),
            @ApiImplicitParam(name = "companyCode", value = "所属企业", dataType = "String", paramType = "query", required = false),
    })
    public ResponseEntity getRoleList(@RequestParam("pageSize") Integer pageSize,
                                      @RequestParam("pageIndex") Integer pageIndex,
                                      @RequestParam(value = "status", required = false) Integer status,
                                      @RequestParam(value = "talkId", required = false) String talkId,
                                      @RequestParam(value = "companyCode", required = false) String companyCode) {

        try {
            PageHelper.startPage(pageIndex, pageSize, true);
            List<CustComment> list = custCommentService.getCustCommentList(status,talkId,null,companyCode);
            PageInfo pageInfo = new PageInfo(list);
            return ResponseEntity.ok().body(pageInfo);
        } catch (Exception e) {
            String logmsg = LocaleMessage.get("message.query.errorMessage");

            LoggerCommon.info(this.getClass(), "获取评论列表异常：" + ExceptionStackUtils.collectExceptionStackMsg(e));

            return ResponseEntity.badRequest().headers(HeaderUtil.createErrorMsg(logmsg)).body(null);
        }
    }

}
