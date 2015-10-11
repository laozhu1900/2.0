package com.jar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zhuzw_000 on 2015/9/21.
 */

@Controller
@RequestMapping(value = "/tools")
public class ToolsTestController {


    @RequestMapping(value = "/input")
    public String input(){

        return "tools/input";
    }


}
