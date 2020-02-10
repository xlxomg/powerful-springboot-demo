package com.xlx.powerfuldemo.common.response;

/**
 * 响应码枚举，参考HTTP状态码的语义
 *
 * @author lhx
 */
public enum ErrorCode {
    // 系统级别错误码
    SUCCESS(0, "OK"),
    ERROR_DEFAULT(-99999, "发生异常，未知错误"),
    /**
     * 失败
     */
    FAIL(400, "失败"),
    /**
     * 未认证
     */
    UNAUTHORIZED(401, "未认证"),
    /**
     * 接口不存在
     */
    NOT_FOUND(404,"接口不存在"),
    /**
     * 服务器内部错误
     */
    INTERNAL_SERVER_ERROR(500,"服务器内部错误"),
    TANLIAN_SERVER_ERROR(501,"碳链接口异常"),
    ERROR(-1, "系统繁忙，请稍后重试"),
    ERROR_INVALID_PARAMS(-2, "请求报文参数缺失或无效:"),
    ERROR_HTTP_REQUEST_FAIL(-3, "HTTP接口调用失败"),
    ERROR_EXCEPTION_DATA(-4, "数据异常"),

    // DB 层面异常
    ERROR_EXCEPTION_DB_DML(-10, "DB操作异常"),
    ERROR_INVALID_DB_RECORD(-11, "数据库无此记录"),
    ERROR_INIT_DB_CONNECTION_RECORD(-12, "初始化多数据源失败"),
    ERROR_DYNAMIC_DB_CONNECTION_RECORD(-13, "多数据源动态切换失败"),


    // Redis 层面异常
    ERROR_EXCEPTION_REDIS_ILLEGAL_IP_PORT(-20, "Redis连接，ip或port不合法"),
    ERROR_EXCEPTION_REDIS_CONFIGURATION_FILE(-21, "解析jedis配置文件失败"),
    ERROR_EXCEPTION_REDIS_CONNECTION(-22, "Redis连接失败"),
    ERROR_EXCEPTION_REDIS_DML(-23, "Redis操作异常"),

    //业务逻辑异常
    ERROR_EXCEPTION_TRANSFORM(-30, "实体转换异常"),
    ERROR_EXCEPTION_NUMBER_FORMAT(-31, "数字转换异常"),

    ERROR_EXCEPTION_CONFIG(-40, "参数配置缺失"),

    //服务层面
    ERROR_UNAUTHORIZED(-1002, "用户令牌校验不通过"),

    ERROR_CUSTOMER_STATUS_NOT_NORMAL_NEW(31042, "用户状态异常"),

    /**
     * 校验
     */
    PARAM_VALID(601, "必须字段为空"),


    //校验登录信息异常
    ERROR_GET_SESSION_KEY(35601, "未查询到用户的session_key"),
    ERROR_SAVE_SESSION_KEY(35602, "保存session_key失败"),
    ERROR_DESCRYPT_DATA(35603, "解密数据失败"),

    ERROR_END(49999, "占位，业务错误码放在此行之前");

    private Integer code;
    private String msg;

    ErrorCode(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg == null ? "" : msg.trim();
    }

    /**
     * 枚举类型的判断和获取
     *
     * @param code 错误码
     * @return 返回错误码对应的枚举信息
     */
    public static ErrorCode statusOf(Integer code) {
        for (ErrorCode error : values()) {
            if (code.equals(error.getCode())) {
                return error;
            }
        }
        return null;
    }
}
