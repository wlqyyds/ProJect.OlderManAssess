package com.yx.dao;

import com.yx.po.Baseinfo;

import java.util.List;

public interface BaseInfoMapper {

    List<Baseinfo> findAll(Baseinfo baseinfo);

    List<Baseinfo> findAll2(Baseinfo baseinfo);

    List<Baseinfo> findAll3(Baseinfo baseinfo);

    Baseinfo findByIdcard(String idcard);

    void updataStatusByIdcard(String idcard);

    List<String> findAllName();

}
