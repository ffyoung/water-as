package com.bfs.quota.service;

import com.bfs.quota.po.Quota;
import org.apache.ibatis.annotations.Param;

/**
 * - - - - - - - - - - -
 * |    By   R o c k   |
 * - - - - - - - - - - -
 * Created by rock on 2018-09-17
 */
public interface QuotaService {


    /**
     * 只返回一个Quota对象
     * @return
     */
    Quota findQuota();

    /**
     * 根据@param meky 和 @param mvalue的值进行update
     * @param mkey
     * @param mvalue
     * @return
     */
    int updateQuota(String mkey,Double mvalue);

}
