package com.xlx.powerfuldemo.common.aop;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @Author xieluxin
 * @Date 2019/10/29 15:35
 * @Version 1.0
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface PerformanceLog {

    /**
     * 当耗时小于longerTime时,是否打印日志,默认是
     * @return true:是  false:否
     */
    boolean havePrintCommon() default true;


    /**
     * 长耗时基准线
     * 单位:毫秒
     * @return
     */
    int longerTime() default 2000;
}