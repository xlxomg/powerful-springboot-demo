package com.xlx.powerfuldemo.component.redis;

import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;

/**
 * @Author xieluxin
 * @Date 2020/1/19 15:47
 * @Version 1.0
 */
@Component
public class RedisService {

    @Autowired
    private StringRedisTemplate redisTemplate;

    /**
     * set方法
     */
    public <T> boolean set(String key, T value){
        boolean flag = false;
        try{
            ValueOperations<String, String> operations = redisTemplate.opsForValue();
//            String realKey = prefix.realKey(key);
            operations.set(key, JSON.toJSONString(value));
            //expire <= 0 表示无限期, 不设置
//            if(prefix.expire() > 0){
//                redisTemplate.expire(realKey, prefix.expire(), TimeUnit.SECONDS);
//            }
            flag = true;
        } catch (Exception e){
            e.printStackTrace();
        }
        return flag;
    }
//
//    /**
//     * 判断key是否存在
//     */
//    public boolean exists(RedisKeyPrefix prefix, String key){
//        return redisTemplate.hasKey(prefix.realKey(key));
//    }
//
//    /**
//     * 删除
//     */
//    public void delete(RedisKeyPrefix prefix, String key){
//        if(exists(prefix, key)){
//            redisTemplate.delete(prefix.realKey(key));
//        }
//    }
//
//    /**
//     * 按规则批量删除
//     */
//    public void deletePattern(String pattern){
//        Set<String> keys = redisTemplate.keys(pattern);
//        if(keys != null && keys.size() > 0){
//            redisTemplate.delete(keys);
//        }
//    }
//
//
    /**
     * get方法,获取javabean
     */
    public Object getStr(String key){
        ValueOperations<String, String> operations = redisTemplate.opsForValue();
        String value = operations.get(key);
        return value;
    }
//    /**
//     * get方法,获取javabean
//     */
//    public <T> T getBean(RedisKeyPrefix prefix, String key, Class<T> clazz){
//        ValueOperations<String, String> operations = redisTemplate.opsForValue();
//        String value = operations.get(prefix.realKey(key));
//        return JsonUtil.toBean(value, clazz);
//    }
//
//    /**
//     * get方法,获取java list
//     */
//    public <T> List<T> getList(RedisKeyPrefix prefix, String key, Class<T> clazz){
//        ValueOperations<String, String> operations = redisTemplate.opsForValue();
//        String value = operations.get(prefix.realKey(key));
//        return JsonUtil.toList(value, clazz);
//    }
//
//    public Long incr(RedisKeyPrefix prefix, String key){
//        ValueOperations<String, String> operations = redisTemplate.opsForValue();
//        return operations.increment(prefix.realKey(key));
//    }
//
//    public Long decr(RedisKeyPrefix prefix, String key){
//        ValueOperations<String, String> operations = redisTemplate.opsForValue();
//        return operations.decrement(prefix.realKey(key));
//    }

}