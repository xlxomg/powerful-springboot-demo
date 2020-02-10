package com.xlx.powerfuldemo.common.aop.validator;

import com.xlx.powerfuldemo.common.util.BeanUtil;
import lombok.extern.slf4j.Slf4j;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * @ClassName EnumValidator
 * @Description 枚举参数校验处理类
 * @Author Alex
 * @CreateDate 10/22/2019 10:03 AM
 * @Version 1.0
 */
@Slf4j
public class EnumValidator implements ConstraintValidator<EnumValid, String> {

    /**
     * 枚举校验注解
     */
    private EnumValid annotation;

    @Override
    public void initialize(EnumValid constraintAnnotation) {
        annotation = constraintAnnotation;
    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext constraintValidatorContext) {
        boolean result = false;

        Class<?> cls = annotation.target();
        String field = annotation.field();
        boolean ignoreEmpty = annotation.ignoreEmpty();

        // target为枚举，并且value有值，或者不忽视空值，才进行校验
        boolean isExecuteValidator = cls.isEnum() && (BeanUtil.checkIsNotEmpty(value) || !ignoreEmpty);
        if (isExecuteValidator) {
            Object[] objects = cls.getEnumConstants();
            try {
                Method method = cls.getMethod("get" + firstLetterToUpper(field));
                for (Object obj : objects) {
                    Object code = method.invoke(obj);
                    if (value.equals(code.toString())) {
                        result = true;
                        break;
                    }
                }
            } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
                log.warn("EnumValidator call isValid() method exception.");
                result = false;
            }
        } else {
            result = true;
        }
        return result;
    }

    private String firstLetterToUpper(String field) {
        return field.substring(0, 1).toUpperCase() + field.substring(1);
    }
}
