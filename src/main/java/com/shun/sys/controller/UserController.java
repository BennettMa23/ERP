package com.shun.sys.controller;



import com.shun.sys.vo.LoginUserVo;
import com.shun.utils.JSONResult;
import com.shun.utils.SystemConstant;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author KazuGin
 * @since 2019-12-10
 */
@RestController
@RequestMapping("/sys/user")
public class UserController {


    /**
     * 登录
     * @param loginname     用户名
     * @param pwd           密码
     * @param session
     * @return
     */
    @PostMapping("/login")
    public JSONResult login(String loginname, String pwd, HttpSession session){
        try {
            //获取当前登录主体对象
            Subject subject = SecurityUtils.getSubject();
            //创建令牌对象
            UsernamePasswordToken token = new UsernamePasswordToken(loginname,pwd);
            //登录
            subject.login(token);
            //获取当前登录对象
            LoginUserVo userVo =(LoginUserVo) subject.getPrincipal();
            //保存session
            session.setAttribute(SystemConstant.LOGINUSER,userVo.getUser());
            //登录成功
            return SystemConstant.LOGIN_SUCCESS;
        } catch (AuthenticationException e) {
            e.printStackTrace();
            //登录失败，用户名或密码错误
            return SystemConstant.LOGIN_ERROR_PASS;
        }
    }

}
