package com.bfs.info.service.impl;

import com.bfs.info.dao.HeadInfoDao;
import com.bfs.info.po.HeadInfo;
import com.bfs.info.service.HeadInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * - - - - - - - - - - -
 * |    By   R o c k   |
 * - - - - - - - - - - -
 * Created by rock on 2018-09-15
 */
@Service
public class HeadInfoServiceImpl implements HeadInfoService {

    @Autowired
    private HeadInfoDao headInfoDao;

    @Override
    public HeadInfo findById(Long id) {
        return headInfoDao.findById(id);
    }




}
