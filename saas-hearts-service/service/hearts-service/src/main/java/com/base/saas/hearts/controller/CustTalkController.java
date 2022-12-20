package com.base.saas.hearts.controller;

import com.base.saas.hearts.service.CustTalkService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/custTalk")
@Api(tags = "app话题管理")
public class CustTalkController {

    @Autowired
    CustTalkService custTalkService;
}
