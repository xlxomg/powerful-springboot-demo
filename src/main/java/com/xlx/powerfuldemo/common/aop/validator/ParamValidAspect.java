package com.xlx.powerfuldemo.common.aop.validator;

import com.xlx.powerfuldemo.common.response.AjaxResult;
import com.xlx.powerfuldemo.common.response.ErrorCode;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;

/**
 * 参数校验切面
 * @Author xieluxin
 * @Date 2020/1/21 15:19
 * @Version 1.0
 */
@Aspect
@Component
@Slf4j
public class ParamValidAspect {

    @Around(value = "@annotation(com.xlx.powerfuldemo.common.aop.validator.ParamValid)", argNames = "pjp")
    public AjaxResult paramValid(ProceedingJoinPoint pjp) throws Throwable {
        Object[] paramObj = pjp.getArgs();
        if (paramObj.length > 0) {
            if (paramObj[1] instanceof BindingResult) {
                BindingResult result = (BindingResult) paramObj[1];
                if (result.hasErrors()) {
                    return AjaxResult.error(ErrorCode.FAIL.getCode(), validRequestParams(result));
                }
            }
        }
        // result的值就是被拦截方法的返回值
        Object result;
        result = pjp.proceed();
        return (AjaxResult) result;
    }
    /**
     * 校验
     */
    private String validRequestParams(BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            StringBuffer sf = new StringBuffer();
            if (null != bindingResult.getGlobalErrors() && bindingResult.getGlobalErrors().size() > 0) {
                bindingResult.getGlobalErrors().forEach(error -> sf.append(error.getObjectName()).
                        append(":").append(error.getDefaultMessage()).append("; "));
            } else {
                bindingResult.getAllErrors().forEach(error -> sf.append(((FieldError) error).getField()).
                        append(":").append(error.getDefaultMessage()).append("; "));
            }
            return sf.toString();
        }
        return null;
    }
}