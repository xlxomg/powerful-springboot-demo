package com.xlx.powerfuldemo.common.aop;

import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

/**
 * 方法耗时日志切面
 * @Author xieluxin
 * @Date 2019/10/29 15:36
 * @Version 1.0
 */
@Aspect
@Component
@Slf4j
public class PerformanceLogAspect {


    @Around(value = "@annotation(PerformanceLog)",argNames = "pjp")
    public Object performanceLog(ProceedingJoinPoint pjp) throws Throwable {
        PerformanceLog performanceLog = ((MethodSignature)pjp.getSignature()).getMethod().getAnnotation(PerformanceLog.class);
        String methodName = pjp.getSignature().getName();
        String className = pjp.getTarget().getClass().getSimpleName();

        long startTime = System.currentTimeMillis();
        Object obj = pjp.proceed();
        long totalTime = System.currentTimeMillis() - startTime;
        if(totalTime > performanceLog.longerTime()){
            log.warn("当前方法调用耗时较长,请留意! 类：【{}】，方法【{}】调用耗时【{}】毫秒", className,methodName,System.currentTimeMillis() - startTime);
        }else{
            if(performanceLog.havePrintCommon()){
                log.info("类：【{}】，方法【{}】调用耗时【{}】毫秒", className,methodName,System.currentTimeMillis() - startTime);
            }
        }
        return obj;
    }
}