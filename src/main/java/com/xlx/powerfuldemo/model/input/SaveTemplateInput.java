package com.xlx.powerfuldemo.model.input;

import com.xlx.powerfuldemo.model.vo.MsgTemplateVO;
import lombok.Data;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

/**
 * @Author xieluxin
 * @Date 2020/1/21 15:57
 * @Version 1.0
 */
@Data
public class SaveTemplateInput {
    @Valid
    @NotNull
    private MsgTemplateVO msgTemplateVO;
}