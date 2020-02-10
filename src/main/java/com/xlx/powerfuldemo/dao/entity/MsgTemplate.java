package com.xlx.powerfuldemo.dao.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 消息模板
 * </p>
 *
 * @author xieluxin
 * @since 2020-01-19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class MsgTemplate extends Model<MsgTemplate> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "templateID", type = IdType.AUTO)
    private Integer templateID;

    /**
     * 创建时间
     */
    @TableField("createDate")
    private LocalDateTime createDate;

    /**
     * 更新时间
     */
    @TableField("updateDate")
    private LocalDateTime updateDate;

    /**
     * 平台类型(dingding:钉钉;  wechat:微信; wswork:企业微信;  sms:短信;  email:邮件)
     */
    @TableField("platformType")
    private String platformType;

    /**
     * 接口功能类型(11: 钉钉_工作通知消息;  12:钉钉_群消息  13:钉钉_普通消息  待补充..)
     */
    @TableField("functionType")
    private String functionType;

    /**
     * 消息类型(11: 钉钉_文本消息   12:钉钉_图片消息  13:钉钉_语言消息 14:钉钉_文件消息  15:钉钉_链接消息  16:钉钉_OA消息  17:钉钉_markdown消息  18:钉钉_卡片消息)
     */
    @TableField("msgType")
    private String msgType;

    /**
     * 标题
     */
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
    @TableField("picUrl")
    private String picUrl;

    /**
     * 消息其他数据
     */
    private String others;


    @Override
    protected Serializable pkVal() {
        return this.templateID;
    }

}
