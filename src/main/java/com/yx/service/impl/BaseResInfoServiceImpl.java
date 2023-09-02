package com.yx.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yx.dao.BaseResInfoMapper;
import com.yx.po.*;
import com.yx.service.BaseRseInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class BaseResInfoServiceImpl implements BaseRseInfoService {

    @Autowired
    private BaseResInfoMapper baseResInfoMapper;

    @Override
    public PageInfo<Baseresinfo> findAll(Integer pageNum, Integer limit) {
        System.out.println("123");
        PageHelper.startPage(pageNum, limit);
        List<Baseresinfo> baseresinfoList = baseResInfoMapper.findAll();

        return new PageInfo<>(baseresinfoList);
    }

    @Override
    public PageInfo<Baseresinfo> findAll2(MidUtil midUtil, Integer pageNum, Integer limit) {
        PageHelper.startPage(pageNum, limit);

        List<Baseresinfo> all2 = baseResInfoMapper.findAll2(midUtil);
        return new PageInfo<>(all2);
    }


    @Override
    public PageInfo<Baseresinfo> findByIns(String ins, Integer pageNum, Integer limit) {
        PageHelper.startPage(pageNum, limit);
        List<Baseresinfo> baseresinfoList = baseResInfoMapper.findByIns(ins);
        return new PageInfo<>(baseresinfoList);
    }

    @Override
    public PageInfo<Baseresinfo> findByInsAndAge(String ins, String age, Integer pageNum, Integer limit) {
        PageHelper.startPage(pageNum, limit);
        String[] ages = age.split("-");
        System.out.println(ages[0]+"...."+ages[1]);
        List<Baseresinfo> byAges = baseResInfoMapper.findByAges(ins, ages[0], ages[1]);
        return new PageInfo<>(byAges);
    }

    @Override
    public List<Father> selectTree() {
        List<Father> fatherList = new ArrayList<>();
        List<String> strings = baseResInfoMapper.findIns();
        for (String string : strings) {
            System.out.println(string);
            Father father = new Father(string);
            fatherList.add(father);
        }
        return fatherList;
    }

    @Override
    public void insert(Baseresinfo baseresinfo) {
        baseResInfoMapper.insert(baseresinfo);
    }

    @Override
    public List<String> findAllName() {
        return baseResInfoMapper.findAllName();
    }
}
