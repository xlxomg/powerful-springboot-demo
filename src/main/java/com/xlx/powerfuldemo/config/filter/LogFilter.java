package com.xlx.powerfuldemo.config.filter;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * 请求日志过滤器
 *
 * @Author xieluxin
 * @Date 2019/9/25 16:53
 * @Version 1.0
 */
@Component
@Slf4j
public class LogFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        final HttpServletRequest request = (HttpServletRequest) servletRequest;
        long startTime = System.currentTimeMillis();
        StringBuilder builder = new StringBuilder();
        String urlParam = StringUtils.isBlank(request.getQueryString()) ? "" : "?" + request.getQueryString();
        String requestPath = request.getRequestURL().toString() +urlParam ;
        log.info("==============请求开始===============");
        builder.append("请求路径: ").append("【").append(request.getMethod()).append("】 ").append(requestPath);
        log.info(builder.toString());
        filterChain.doFilter(request, servletResponse);
        log.info("=============请求结束, 耗时:" + (System.currentTimeMillis() - startTime) + "毫秒!================");
    }

    @Override
    public void destroy() {
    }
}