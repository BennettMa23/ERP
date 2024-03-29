package com.shun.sys.controller;


import com.shun.utils.DataGridViewResult;
import com.shun.utils.JSONResult;
import com.shun.utils.SystemConstant;
import com.shun.utils.TreeNode;
import com.shun.sys.entity.Dept;
import com.shun.sys.service.DeptService;
import com.shun.sys.vo.DeptVo;
import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.*;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author KazuGin
 * @since 2020-08-20
 */
@RestController
@RequestMapping("/sys/dept")
public class DeptController {

    @Resource
    private DeptService deptService;

    @RequestMapping("/loadDeptTreeLeft")
    public DataGridViewResult loadDeptTreeLeft(){
        //查询所有部门
        List<Dept> deptList = deptService.list();
        //创建节点集合
        List<TreeNode> treeNodes = new ArrayList<>();
        //循环遍历部门集合
        for (Dept dept : deptList) {
            //是否展开？
            Boolean spread = dept.getOpen() == SystemConstant.OPEN_TRUE ? true : false;
            //封装树节点
            TreeNode treeNode = new TreeNode();
            //将集合中的属性赋值到单个树节点
            treeNode.setId(dept.getId());
            treeNode.setPid(dept.getPid());
            treeNode.setTitle(dept.getTitle());
            treeNode.setSpread(spread);
            //将树节点，放入树节点集合
            treeNodes.add(treeNode);


        }
        //树节点集合返回
        return new DataGridViewResult(treeNodes);
    }

    @RequestMapping("/deptlist")
    public DataGridViewResult deptlist(DeptVo deptVo){
        //创建分页对象
        IPage<Dept> iPage = new Page<>(deptVo.getPage(),deptVo.getLimit());


        //创建条件构造器对象
        QueryWrapper<Dept> queryWrapper = new QueryWrapper<>();
        //部门名称查询
        queryWrapper.like(StringUtils.isNotBlank(deptVo.getTitle()),"title",deptVo.getTitle());
        //部门名称查询
        queryWrapper.like(StringUtils.isNotBlank(deptVo.getTitle()),"address",deptVo.getAddress());
        //根据编号插叙
        queryWrapper.eq(deptVo.getId()!=null,"id",deptVo.getId())
                .or().eq(deptVo.getId()!=null,"pid",deptVo.getId());
        //排序
        queryWrapper.orderByAsc("id");
        //调用查询的方法
        deptService.page(iPage,queryWrapper);
        //返回数据
        return new DataGridViewResult(iPage.getTotal(),iPage.getRecords());

    }

    @RequestMapping("/addDept")
    public JSONResult addDept(Dept dept){
        dept.setCreatetime(new Date());
        if(deptService.save(dept)){
            return SystemConstant.ADD_SUCCESS;
        }
        return SystemConstant.ADD_ERROR;
    }
    @RequestMapping("/updateDept")
    public JSONResult updateDept(Dept dept){
        dept.setCreatetime(new Date());
        if(deptService.updateById(dept)){
            return SystemConstant.UPDATE_SUCCESS;
        }
        return SystemConstant.UPDATE_ERROR;
    }

    @RequestMapping("/checkDeptHasChild")
    public String checkDeptHasChild(int id){
        Map<String,Object> map = new HashMap<>();
        QueryWrapper<Dept> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("pid",id);
        //统计部门数量
        int count = deptService.count(queryWrapper);

        if(count>0){
            map.put(SystemConstant.EXIST,true);
            map.put(SystemConstant.MESSAGE,"对不起,当前部门下有子节点无法删除");
        }else{
            //木有子节点，不提示直接删除
            map.put(SystemConstant.EXIST,false);

        }
        //转化JSON格式
        return JSON.toJSONString(map);
    }

    /**
     * 删除部门
     * @param id
     * @return
     */


    @RequestMapping("/deleteDept")
    public JSONResult deleteDept(int id){
         if(deptService.removeById(id)){
             return SystemConstant.DELETE_SUCCESS;
         }else{
             return SystemConstant.DELETE_ERROR;
         }
    }

}

