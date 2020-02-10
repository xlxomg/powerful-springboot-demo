package com.xlx.powerfuldemo.dao.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author xieluxin
 * @since 2020-01-20
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class User extends Model<User> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 年龄
     */
    private Integer age;

    /**
     * 账号
     */
    private String phone;

    /**
     * 密码
     */
    private String password;

    /**
     * 用户昵称
     */
    @TableField("nickName")
    private String nickName;

    /**
     * 状态(0:无效  1:有效)
     */
    private String status;

    /**
     * 用户头像地址
     */
    private String icon;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
