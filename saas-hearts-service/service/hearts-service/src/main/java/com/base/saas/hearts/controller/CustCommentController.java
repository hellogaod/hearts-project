package com.base.saas.hearts.controller;

import com.base.saas.hearts.service.CustCommentService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/custComment")
@Api(tags = "app评论管理")
public class CustCommentController {

    @Autowired
    CustCommentService custCommentService;
}
