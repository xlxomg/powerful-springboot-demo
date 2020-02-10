package com.xlx.powerfuldemo.common.aop.validator;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @ClassName ParamValid
 * @Description 校验注解
 * @Author Alex
 * @CreateDate 04/07/2019 16:20
 * @Version 1.0
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface ParamValid {
}
