package com.shun.sys.service;

import com.shun.sys.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author shun
 * @since 2024-03-05
 */
public interface UserService extends IService<User> {
    /**
     * 根据用户名查询用户信息
     * @param userName
     * @return
     * @throws Exception
     */
    User findUserByUserName(String userName) throws Exception;
}
