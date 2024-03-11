package com.shun.bus.service;

import com.shun.bus.entity.SysLeavebill;
import com.shun.bus.vo.LeavebillVo;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author KazuGin
 * @since 2020-08-26
 */
public interface SysLeavebillService extends IService<SysLeavebill> {

    IPage<SysLeavebill> findLeaveBillByPage(IPage<SysLeavebill> page,LeavebillVo leavebillVo) throws Exception;
}
