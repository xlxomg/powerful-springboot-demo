package com.xlx.powerfuldemo.common.exception;

/**
 * @ClassName ParamException
 * @Description 参数校验异常
 * @Author Alex
 * @CreateDate 11/12/2019 9:43 PM
 * @Version 1.0
 */
public class ParamException extends RuntimeException {

    /**
     * 异常代码
     */
    protected Integer code;

    /**
     * 异常消息
     */
    protected String message;

    public ParamException() {
        super();
    }

    public ParamException(String message) {
        super(message);
        this.message = message;
    }

    public ParamException(Integer code, String message) {
        super(message);
        this.code = code;
        this.message = message;
    }

    public ParamException(Integer code, String message, Throwable cause) {
        super(message, cause);
        this.code = code;
        this.message = message + " : " + cause.getMessage();
    }

    public ParamException(Throwable cause) {
        super(cause);
    }

    @Override
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "errorCode: " + code + ", message: " + message;
    }

}
