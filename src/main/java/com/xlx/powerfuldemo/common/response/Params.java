package com.xlx.powerfuldemo.common.response;

import lombok.Data;

/**
 * @ClassName Params
 * @Description 返回结果记录入参
 * @Author Alex
 * @CreateDate 10/28/2019 8:33 PM
 * @Version 1.0
 */
@Data
public class Params {
    private String queryParams;

    private Object bodyParams;
}
