package com.yx.service;

import com.github.pagehelper.PageInfo;
import com.yx.po.Baseinfo;
import com.yx.po.Policy;

import java.util.List;

public interface BaseInfoService {

    public PageInfo<Baseinfo> findAll(Baseinfo baseinfo, Integer pageNum, Integer limit);

    public PageInfo<Baseinfo> findAll2(Baseinfo baseinfo, Integer pageNum, Integer limit);

    public PageInfo<Baseinfo> findAll3(com.yx.po.Baseinfo baseinfo, Integer pageNum, Integer limit);

    Baseinfo findByIdcard(String idcard);

    void updataStatusByIdcard(String idcard);

    List<String> findAllName();


}
