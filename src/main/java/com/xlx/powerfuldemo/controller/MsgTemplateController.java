package com.xlx.powerfuldemo.controller;


import com.alibaba.fastjson.JSON;
import com.xlx.powerfuldemo.common.aop.validator.ParamValid;
import com.xlx.powerfuldemo.common.response.AjaxResult;
import com.xlx.powerfuldemo.component.redis.RedisService;
import com.xlx.powerfuldemo.dao.entity.MsgTemplate;
import com.xlx.powerfuldemo.dao.mapper.MsgTemplateMapper;
import com.xlx.powerfuldemo.model.input.SaveTemplateInput;
import com.xlx.powerfuldemo.model.vo.MsgTemplateVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

import javax.validation.Valid;

/**
 * <p>
 * 消息模板 前端控制器
 * </p>
 *
 * @author xieluxin
 * @since 2020-01-19
 */
@Controller
@RequestMapping("/template")
@Slf4j
public class MsgTemplateController {
    @Autowired
    private RedisService redisService;

    @Autowired
    private MsgTemplateMapper msgTemplateMapper;

    /**
     * 参数校验  样例方法
     * @param input
     * @param bindingResult
     * @return
     */
    @PostMapping("/save")
    @ResponseBody
    @ParamValid
    public AjaxResult save(@RequestBody @Valid SaveTemplateInput input, BindingResult bindingResult) {
        MsgTemplateVO msgTemplateVO = input.getMsgTemplateVO();
        MsgTemplate template = new MsgTemplate();
        template.setContent(msgTemplateVO.getContent());
        template.setCreateDate(msgTemplateVO.getCreateDate());
        template.setUrl(msgTemplateVO.getUrl());
        template.setUpdateDate(msgTemplateVO.getUpdateDate());
        template.setTitle(msgTemplateVO.getTitle());
        template.setTemplateID(msgTemplateVO.getTemplateID());
        template.setPlatformType(msgTemplateVO.getPlatformType());
        template.setPicUrl(msgTemplateVO.getPicUrl());
        template.setOthers(msgTemplateVO.getOthers());
        template.setMsgType(msgTemplateVO.getMsgType());
        template.setFunctionType(msgTemplateVO.getFunctionType());

        int insert = msgTemplateMapper.insert(template);
        return AjaxResult.success(insert == 1);
    }

    /**
     * redis 缓存测试方法
     * @param id
     * @return
     */
    @RequestMapping("/query")
    @ResponseBody
    public AjaxResult queryById(@RequestParam(defaultValue = "1") Integer id) {
        MsgTemplate templdate = msgTemplateMapper.selectById(id);
        redisService.set("template11",templdate);
        Object str = redisService.getStr("template11");
        log.info("缓存内容={}", JSON.toJSONString(str));
        return AjaxResult.success(true);
    }
}
