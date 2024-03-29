package com.shun.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: shun
 * @Description:
 * @Date:14:32星期六
 */
@Controller
@RequestMapping("/sys")
public class SysController {

    @RequestMapping("/index")
    public String toIndex(){


        return "system/home/index";
    }

    /**
     * 去工作页面
     * @return
     */

    @RequestMapping("/toDesktopManager")
    public String toDesktopManager(){


        return "system/home/desktopManager";
    }
    /**
     * 去日志管理页面
     * @return
     */

    @RequestMapping("/toLogManager")
    public String toLogManager(){


        return "system/log/logManager";
    }


    /**
     * 去公告管理页面
     * @return
     */

    @RequestMapping("/toNoticeManager")
    public String tonoticeManager(){
        return "system/notice/noticeManager";
    }

    /**
     * 部门管理界面左边
     */
    @RequestMapping("/toDeptLeft")
    public String toDeptLeft(){
        return "system/dept/left";
    }
    //部门右页面
    @RequestMapping("/toDeptRight")
    public String toDeptRight(){
        return "system/dept/right";
    }
    //部门主页面
    @RequestMapping("/toDeptManager")
    public String toDeptManager(){
        return "system/dept/deptManager";
    }

    /**
     * 跳转到菜单管理页面
     * @return
     */
    @RequestMapping("/toMenuManager")
    public String toMenuManager() {
        return "system/menu/menuManager";
    }
    /**
     * 跳转到菜单管理页面-left
     * @return
     */
    @RequestMapping("/toMenuLeft")
    public String toMenuLeft() {
        return "system/menu/left";
    }
    /**
     * 跳转到菜单管理页面-right
     * @return
     */
    @RequestMapping("/toMenuRight")
    public String toMenuRight() {
        return "system/menu/right";
    }



    /**
     * 跳转到权限管理页面
     * @return
     */
    @RequestMapping("/toPermissionManager")
    public String toPermissionManager() {
        return "system/permission/PermissionManager";
    }
    /**
     * 跳转到权限管理页面-left
     * @return
     */
    @RequestMapping("/toPermissionLeft")
    public String toPermissionLeft() {
        return "system/permission/left";
    }
    /**
     * 跳转到权限管理页面-right
     * @return
     */
    @RequestMapping("/toPermissionRight")
    public String toPermissionRight() {
        return "system/permission/right";
    }

    /**
     * 跳转到角色管理页面
     * @return
     */
    @RequestMapping("/toRoleManager")
    public String toRoleManager() {
        return "system/role/roleManager";
    }

    /**
     * 跳转到用户管理页面
     * @return
     */
    @RequestMapping("/toUserManager")
    public String toUserManager() {
        return "system/user/userManager";
    }
    /**
     * 跳转到用户管理页面-left
     * @return
     */
    @RequestMapping("/toUserLeft")
    public String toUserLeft() {
        return "system/user/left";
    }
    /**
     * 跳转到用户管理页面-right
     * @return
     */
    @RequestMapping("/toUserRight")
    public String toUserRight() {
        return "system/user/right";
    }


}
