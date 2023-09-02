package com.yx.service;

import com.github.pagehelper.PageInfo;
import com.yx.po.*;

import java.util.List;

public interface ResInfoService {

    public PageInfo<Resinfo> findAll(Integer pageNum, Integer limit);

    public PageInfo<Resinfo> findAll2(MidUtil midUtil, Integer pageNum, Integer limit);

    public PageInfo<Resinfo> findAll3(Resinfo resinfo, Integer pageNum, Integer limit);

    public PageInfo<Resinfo> findByIns(String ins, Integer pageNum, Integer limit);

    public PageInfo<Resinfo> findByInsAndAge(String ins,String age, Integer pageNum, Integer limit);

    public List<Father> selectTree();

    public void insert(Resinfo resinfo);

    List<Resinfo> queryByIdcard(String idcard);

    B1 queryB1ById(String id);

    B2 queryB2ById(String id);

    B3 queryB3ById(String id);

    B4 queryB4ById(String id);

    List<Resinfo> findByName(String name);
}
