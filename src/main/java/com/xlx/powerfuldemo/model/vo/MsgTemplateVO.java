package com.xlx.powerfuldemo.model.vo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.xlx.powerfuldemo.common.aop.validator.EnumValid;
import com.xlx.powerfuldemo.model.enums.PlatformTypeEnum;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

/**
 * @Author xieluxin
 * @Date 2020/1/21 15:33
 * @Version 1.0
 */
@Data
public class MsgTemplateVO {
    @NotNull
    private Integer templateID;

    /**
     * 创建时间
     */
    private LocalDateTime createDate;

    /**
     * 更新时间
     */
    private LocalDateTime updateDate;

    /**
     * 平台类型(dingding:钉钉;  wechat:微信; wswork:企业微信;  sms:短信;  email:邮件)
     */
    @NotBlank
    @EnumValid(target = PlatformTypeEnum.class)
    private String platformType;

    /**
     * 接口功能类型(11: 钉钉_工作通知消息;  12:钉钉_群消息  13:钉钉_普通消息  待补充..)
     */
    private String functionType;

    /**
     * 消息类型(11: 钉钉_文本消息   12:钉钉_图片消息  13:钉钉_语言消息 14:钉钉_文件消息  15:钉钉_链接消息  16:钉钉_OA消息  17:钉钉_markdown消息  18:钉钉_卡片消息)
     */
    private String msgType;

    /**
     * 标题
     */
    @NotBlank
    private String title;

    /**
     * 消息内容
     */
    private String content;

    /**
     * 调整链接
     */
    private String url;

    /**
     * 图片链接
     */
    private String picUrl;

    /**
     * 消息其他数据
     */
    private String others;
}