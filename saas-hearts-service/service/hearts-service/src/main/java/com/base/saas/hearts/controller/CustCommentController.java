package com.base.saas.hearts.controller;

import com.base.saas.hearts.domain.entity.CustComment;
import com.base.saas.hearts.service.CustCommentService;
import com.base.saas.language.LocaleMessage;
import com.base.saas.logger.LoggerCommon;
import com.base.saas.util.ExceptionStackUtils;
import com.base.saas.util.HeaderUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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

}
