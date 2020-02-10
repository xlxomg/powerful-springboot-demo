package com.xlx.powerfuldemo.service.impl;

import com.xlx.powerfuldemo.dao.entity.User;
import com.xlx.powerfuldemo.dao.mapper.UserMapper;
import com.xlx.powerfuldemo.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author xieluxin
 * @since 2020-01-20
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}
