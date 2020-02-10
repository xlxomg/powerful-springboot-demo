
项目概述:
    1. 本项目是基于SpringBoot2的Demo项目，集成各类中间件，及常用的框架功能。可用于学习，测试，项目框架快速搭建
    2. 项目可正常启动,部分中间件功能需本地安装并启动后方可使用。

数据库文件: xlxtest.sql
Postman测试用例文件: SpringBoot2 Demo整合项目.postman_collection.json

已实现中间件功能：
    1. 集成 SpringBoot2
    2. 集成 Mysql(安装版本为 Mysql 5.7.27)
    3. 集成 Mybatis-Plus + 代码生成插件
    4. 集成 WebSocket
    5. 集成 Redis (安装版本为 3.2.1)
    6. 集成 MongoDB (安装版本为MongoDB 4.2.2)
    7. 集成 ElasticSearch (安装版本为ElasticSearch 6.6.2)
    8. 集成 Rocket MQ(事务消息功能未测试通过)(安装版本为 4.4.0)
    9. 集成 Spring 分布式Session

已实现通用功能：
    1. 全局异常处理器              详见: GlobalExceptionHandler.java
    2. Controller层 请求日志过滤器  详见LogFilter.java
    3. Controller层 入参打印切面   详见ControllerAspect.java
    4. Controller层 入参校验注解   基于javax.validation实现增强, 详见ParamValidAspect.java，样例MsgTemplateController.save
    5. 方法耗时日志切面             详见PerformanceLogAspect.java
    6. lombok注解开发             (需安装idea Lombok插件)

其他功能：
    1.

 附:
   一、Window 环境下启动Rocket MQ:
       启动NameServer:
        ① cmd下进入ROCKETMQ_HOME/bin目录,执行: 【start mqnamesrv.cmd】
       启动Broker
        ① 进入ROCKETMQ_HOME/bin目录,执行: 【start mqbroker.cmd -n 127.0.0.1:9876】
   二、Window 环境下启动ElasticSearch:
       进入bin目录下,执行 【elasticsearch.bat】
