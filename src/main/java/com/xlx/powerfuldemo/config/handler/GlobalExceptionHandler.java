package com.xlx.powerfuldemo.config.handler;

import com.xlx.powerfuldemo.common.exception.InvokeException;
import com.xlx.powerfuldemo.common.exception.ServiceException;
import com.xlx.powerfuldemo.common.response.AjaxResult;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.servlet.http.HttpServletRequest;

/**
 * @Author xieluxin
 * @Date 2020/1/20 17:44
 * @Version 1.0
 */
@RestControllerAdvice
@Slf4j
public class GlobalExceptionHandler {

    public AjaxResult handleException(HttpServletRequest request, Exception e) {
        AjaxResult result = new AjaxResult();
        result.setDescription(e.getMessage());
         if (e instanceof InvokeException) {
//            result.setErrcode(ErrorCode.INTERNAL_SERVER_ERROR.getCode() + "");
//                result.setErrorCode(ErrorCode.TANLIAN_SERVER_ERROR).setDescription("碳链接口 [" + request.getRequestURI() + "] 内部服务异常，异常消息：" + e.getMessage());
        } else if (e instanceof ServiceException) {
//            result.setErrcode(ErrorCode.INTERNAL_SERVER_ERROR.getCode() + "");
        } else {
//            result.setErrcode(ErrorCode.INTERNAL_SERVER_ERROR.getCode() + "");
//            result.setErrorCode(ErrorCode.INTERNAL_SERVER_ERROR).setDescription("[" + request.getRequestURI() + "] 接口内部异常，请联系管理员");
        }
        log.warn("返回错误信息: {}", result.getDescription());
        log.error(e.getMessage(), e);
        return AjaxResult.error(e.getMessage());
    }
}