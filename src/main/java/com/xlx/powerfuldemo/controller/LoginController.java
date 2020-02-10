package com.xlx.powerfuldemo.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @Author xieluxin
 * @Date 2020/1/2 11:41
 * @Version 1.0
 */
@Controller
@Slf4j
@RequestMapping("/login")
public class LoginController  {

    /**
     * 注册
     * @param phone 手机
     * @param password 密码
     */
    public void register(String phone,String password){
    }


    /**
     * 登陆
     */
    public void login(){
    }

    /**
     * 注销
     * @param userId 用户id
     */
    public void logout(String userId){
    }

    @ResponseBody
    @RequestMapping(value = "/session")
    public Map<String, Object> getSession(HttpServletRequest request) {
        request.getSession().setAttribute("username", "admin");
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("sessionId", request.getSession().getId());
        return map;
    }

    @ResponseBody
    @RequestMapping(value = "/get")
    public String get(HttpServletRequest request) {
        String userName = (String) request.getSession().getAttribute("username");

        return userName;
    }

}