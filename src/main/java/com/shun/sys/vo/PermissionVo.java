package com.shun.sys.vo;

import com.shun.sys.entity.Permission;

/**
 * @Author: shun
 * @Description:
 * @Date:16:09星期六
 */

public class PermissionVo extends Permission {
    private Integer page;   //当前页码
    private Integer limit;  //每页显示数量

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
