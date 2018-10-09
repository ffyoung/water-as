package com.bfs.info.service;

import com.bfs.info.po.HeadInfo;

/**
 * - - - - - - - - - - -
 * |    By   R o c k   |
 * - - - - - - - - - - -
 * Created by rock on 2018-09-15
 */
public interface HeadInfoService {

    /**
     * 根据id传来
     * @param id
     * @return
     */
    HeadInfo findById(Long id);


}
