package com.xlx.powerfuldemo.common.response;

import java.io.Serializable;

/**
 * @ClassName AjaxResult
 * @Description 异步请求
 * @Author Alex
 * @CreateDate 10/15/2019 9:50 PM
 * @Version 2.0
 */
public class AjaxResult implements Serializable {

    private static final Integer SUCCESS_CODE = 0;
    private static final Integer ERROR_CODE = -99999;
    private static final String ERROR_DESCRIPTION = "error";
    private static final String SUCCESS_DESCRIPTION = "success";
    /**
     * 客户端需要缓存时间，单位秒。如果是0或者该字段不存在代表不缓存
     */
    private String cacheTime;
    /**
     * ajax 交互结果
     */
    private boolean success;
    /**
     * 交互描述信息
     */
    private String description;
    /**
     * 错误编码
     */
    private Integer errorCode;
    /**
     * 交互数据
     */
    private Object data;
    /**
     * 通用异常信息
     */
    private Object errorInfo;

    private Params params;

    public AjaxResult() {
        this(false);
    }

    public AjaxResult(boolean success) {
        this(success, SUCCESS_DESCRIPTION, SUCCESS_CODE);
    }

    public AjaxResult(boolean success, String description) {
        this(success, description, SUCCESS_CODE);
    }

    public AjaxResult(boolean success, String description, Integer errorCode) {
        this.success = success;
        this.description = description;
        this.errorCode = errorCode;
    }

    public AjaxResult(boolean success, String description, Integer errorCode, Object data) {
        this.success = success;
        this.description = description;
        this.errorCode = errorCode;
        this.data = data;
    }

    public AjaxResult(boolean success, String description, Integer errorCode, Object data, Object errorInfo) {
        this.success = success;
        this.description = description;
        this.errorCode = errorCode;
        this.data = data;
        this.errorInfo = errorInfo;
    }


    public static AjaxResult error() {
        return new AjaxResult(false, ERROR_DESCRIPTION, ERROR_CODE);
    }

    public static AjaxResult error(String description) {
        return new AjaxResult(false, description, ERROR_CODE);
    }

    public static AjaxResult error(Integer errorCode, String description) {
        return new AjaxResult(false, description, errorCode);
    }

    public static AjaxResult error(Object data, Integer errorCode, String description, Object errorInfo) {
        return new AjaxResult(false, description, errorCode, data, errorInfo);
    }

    public static AjaxResult error(Object data) {
        return new AjaxResult(false, ERROR_DESCRIPTION, ERROR_CODE, data);
    }

    public static AjaxResult error(ErrorCode errorCode) {
        return new AjaxResult(false, errorCode.getMsg(), errorCode.getCode());
    }

    public static AjaxResult success() {
        return new AjaxResult(true, SUCCESS_DESCRIPTION, SUCCESS_CODE);
    }

    public static AjaxResult success(String description) {
        return new AjaxResult(true, description);
    }

    public static AjaxResult success(Object data) {
        return new AjaxResult(true, SUCCESS_DESCRIPTION, SUCCESS_CODE, data);
    }

    public static AjaxResult success(Object data, String cacheTime) {
        AjaxResult result = new AjaxResult(true, SUCCESS_DESCRIPTION, SUCCESS_CODE, data);
        result.setCacheTime(cacheTime);
        return result;
    }

    public static AjaxResult success(String description, Object data) {
        return new AjaxResult(true, description, SUCCESS_CODE, data);
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public Integer getErrorCode() {
        return errorCode;
    }

    public AjaxResult setErrorCode(ErrorCode errorCode) {
        this.errorCode = errorCode.getCode();
        this.description = errorCode.getMsg();
        return this;
    }

    public AjaxResult setErrorCode(Integer errorCode, String description) {
        this.errorCode = errorCode;
        this.description = description;
        return this;
    }

    public AjaxResult setErrorCode(Integer errorCode) {
        this.errorCode = errorCode;
        return this;
    }

    public String getCacheTime() {
        return cacheTime;
    }

    public void setCacheTime(String cacheTime) {
        this.cacheTime = cacheTime;
    }

    public Object getErrorInfo() {
        return errorInfo;
    }

    public void setErrorInfo(Object errorInfo) {
        this.errorInfo = errorInfo;
    }

    public Params getParams() {
        return params;
    }

    public void setParams(Params params) {
        this.params = params;
    }

    @Override
    public String toString() {
        return "AjaxResult{" +
                "cacheTime='" + cacheTime + '\'' +
                ", success=" + success +
                ", description='" + description + '\'' +
                ", errorCode=" + errorCode +
                ", data=" + data +
                ", errorInfo=" + errorInfo +
                ", params=" + params +
                '}';
    }

}
