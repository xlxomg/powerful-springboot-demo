package com.xlx.powerfuldemo;

import com.mongodb.connection.Cluster;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.FilterType;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;

@SpringBootApplication(excludeName = "org.mongodb.driver.*")
@MapperScan(value = "com.xlx.powerfuldemo.dao.mapper")
@EnableScheduling
@EnableRedisHttpSession
//@ComponentScan(useDefaultFilters = true,excludeFilters = {
//        @ComponentScan.Filter(type = FilterType.CUSTOM,classes = {MyTypeFilter.class})
//})
public class PowerfulDemoApplication {

    public static void main(String[] args) {
        /**
         * Springboot整合Elasticsearch 在项目启动前设置一下的属性，防止报错
         * 解决netty冲突后初始化client时还会抛出异常
         * java.lang.IllegalStateException: availableProcessors is already set to [4], rejecting [4]
         */
        System.setProperty("es.set.netty.runtime.available.processors", "false");
        SpringApplication.run(PowerfulDemoApplication.class, args);
    }

}
