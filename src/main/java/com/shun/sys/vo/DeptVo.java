package com.shun.sys.vo;

import com.shun.sys.entity.Dept;

/**
 * 日志扩展类
 */
public class DeptVo extends Dept {
    private Integer page;//当前页码
    private Integer limit;//每页显示数量

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }


}
