package com.yx.service;

import com.github.pagehelper.PageInfo;
import com.yx.po.*;

import java.util.List;

public interface BaseRseInfoService {

    public PageInfo<Baseresinfo> findAll(Integer pageNum, Integer limit);

    public PageInfo<Baseresinfo> findAll2(MidUtil midUtil, Integer pageNum, Integer limit);


    public PageInfo<Baseresinfo> findByIns(String ins, Integer pageNum, Integer limit);

    public PageInfo<Baseresinfo> findByInsAndAge(String ins,String age, Integer pageNum, Integer limit);

    public List<Father> selectTree();

    void insert(Baseresinfo baseresinfo);

    List<String> findAllName();

}
