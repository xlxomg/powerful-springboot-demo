package com.xlx.powerfuldemo.common.aop;

import com.alibaba.fastjson.JSON;
import com.google.common.collect.Maps;
import com.xlx.powerfuldemo.common.exception.HttpException;
import com.xlx.powerfuldemo.common.exception.InvokeException;
import com.xlx.powerfuldemo.common.exception.ParamException;
import com.xlx.powerfuldemo.common.exception.ServiceException;
import com.xlx.powerfuldemo.common.response.AjaxResult;
import com.xlx.powerfuldemo.common.response.ErrorCode;
import com.xlx.powerfuldemo.common.response.Params;
import com.xlx.powerfuldemo.common.util.BeanUtil;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Field;
import java.net.URLDecoder;
import java.util.Map;

/**
 * @Description controller层入参打印切面
 * @Author Alex
 * @CreateDate 05/07/2019 16:21
 * @Version 1.0
 */
@Aspect
@Component
@Slf4j
public class ControllerAspect {

    private final HttpServletRequest request;

    public ControllerAspect(HttpServletRequest request) {
        this.request = request;
    }

    @Pointcut("execution(* com.xlx.powerfuldemo.controller.*Controller*.*(..))")
    public void controllerAspect() {

    }

    @Around(value = "controllerAspect()", argNames = "pjp")
    private AjaxResult doAround(ProceedingJoinPoint pjp) throws Exception {
        try {
            String method = request.getMethod();
            Object[] args = pjp.getArgs();
            String params = "";
            //获取请求参数集合并进行遍历拼接
            if (args.length > 0) {
                if (!"GET".equals(method)) {
                    Object object = args[0];
                    Map map = getKeyAndValue(object);
                    params = JSON.toJSONString(map);
                    log.info("请求body 入参===" + params);
                } else {
                    log.info("请求query入参===" + request.getQueryString());
                }
            }
            // result的值就是被拦截方法的返回值
            Object result = pjp.proceed();
            AjaxResult ajaxResult = (AjaxResult) result;
            if (BeanUtil.checkIsNotEmpty(ajaxResult)) {
                Params ajaxResultParams = new Params();
                if (BeanUtil.checkIsNotEmpty(request.getQueryString())) {
                    ajaxResultParams.setQueryParams(URLDecoder.decode(request.getQueryString(), "UTF-8"));
                }
                ajaxResultParams.setBodyParams(JSON.parseObject(params));
                ajaxResult.setParams(ajaxResultParams);
//                log.info("请求出参     ===" + ajaxResult.toString());
            }
            return (AjaxResult) result;
        } catch (Throwable throwable) {
            if (throwable instanceof ParamException) {
                throw new ParamException(throwable.getMessage());
            } else if (throwable instanceof HttpException) {
                throw new HttpException(((HttpException) throwable).getCode(), throwable.getMessage());
            } else if (throwable instanceof ServiceException) {
                throw new ServiceException(throwable.getMessage());
            } else if (throwable instanceof InvokeException) {
                throw new InvokeException(throwable.getMessage());
            } else {
                throw new Exception(throwable);
            }
        }
    }


    private static Map<String, Object> getKeyAndValue(Object obj) {
        Map<String, Object> map = Maps.newHashMapWithExpectedSize(10);
        // 得到类对象
        Class userCla = obj.getClass();
        /* 得到类中的所有属性集合 */
        Field[] fs = userCla.getDeclaredFields();
        for (Field f : fs) {
            // 设置些属性是可以访问的
            f.setAccessible(true);
            Object val;
            try {
                // 得到此属性的值
                val = f.get(obj);
                // 设置键值
                map.put(f.getName(), val);
            } catch (IllegalArgumentException | IllegalAccessException e) {
                e.printStackTrace();
            }
        }
        return map;
    }
}
