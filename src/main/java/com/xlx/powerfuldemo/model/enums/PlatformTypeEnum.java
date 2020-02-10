package com.xlx.powerfuldemo.model.enums;

/**
 * 第三方平台类型枚举
 * @Author xieluxin
 * @Date 2019/11/26 10:32
 * @Version 1.0
 */
public enum PlatformTypeEnum {
    DINGDING("dingding", "钉钉"),
    WECHAT("wechat", "微信"),
    WXWORK("wxwork", "企业微信"),
    SMS("sms", "文本消息"),
    EMAIL("email", "邮件");
    private final String code;
    private final String desc;

    PlatformTypeEnum(String code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    public String getCode() {
        return code;
    }

    public String getDesc() {
        return desc;
    }

}
