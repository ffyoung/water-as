package com.bfs.quota.service.impl;

import com.bfs.quota.dao.QuotaDao;
import com.bfs.quota.po.Quota;
import com.bfs.quota.service.QuotaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * - - - - - - - - - - -
 * |    By   R o c k   |
 * - - - - - - - - - - -
 * Created by rock on 2018-09-17
 */
@Service
public class QuotaServiceImpl implements QuotaService {

    @Autowired
    private QuotaDao quotaDao;


    /**
     *
     * @return 只返回一个Quota对象
     */
    @Override
    public Quota findQuota() {
        return quotaDao.findQuota();
    }

    /**
     *
     * @param mkey
     * @param mvalue
     * @return 返回一个值进行判断是否更改成功
     */
    @Override
    public int updateQuota(String mkey, Double mvalue) {
        return quotaDao.updateQuota(mkey,mvalue);
    }


}
