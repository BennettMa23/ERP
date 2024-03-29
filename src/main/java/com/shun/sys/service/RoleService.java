package com.shun.sys.service;

import com.shun.sys.entity.Role;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.Set;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author KazuGin
 * @since 2020-08-23
 */
public interface RoleService extends IService<Role> {
    //见方法名
    boolean saveRolePermission(int rid, String ids) throws Exception;

    Set<Integer> finRolePermissionByRoleId(Integer roleId) throws Exception;
}
