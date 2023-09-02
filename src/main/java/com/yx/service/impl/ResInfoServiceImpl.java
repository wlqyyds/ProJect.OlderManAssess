package com.yx.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yx.dao.*;
import com.yx.po.*;
import com.yx.service.ResInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ResInfoServiceImpl implements ResInfoService {

    @Autowired
    public ResInfoMapper resinfoMapper;
    @Autowired
    public B1Mapper b1Mapper;
    @Autowired
    public B2Mapper b2Mapper;
    @Autowired
    public B3Mapper b3Mapper;
    @Autowired
    public B4Mapper b4Mapper;

    @Override
    public PageInfo<Resinfo> findAll(Integer pageNum, Integer limit) {
        System.out.println("123");
        PageHelper.startPage(pageNum, limit);
        List<Resinfo> resinfoList = resinfoMapper.findAll();

        return new PageInfo<>(resinfoList);
    }

    @Override
    public PageInfo<Resinfo> findAll2(MidUtil midUtil, Integer pageNum, Integer limit) {
        PageHelper.startPage(pageNum, limit);

        List<Resinfo> resinfoList = resinfoMapper.findAll2(midUtil);
        // List<Resinfo> resinfoList = null;
        return new PageInfo<>(resinfoList);
    }

    @Override
    public PageInfo<Resinfo> findAll3(Resinfo resinfo, Integer pageNum, Integer limit) {
        PageHelper.startPage(pageNum, limit);
        List<Resinfo> resinfoList = resinfoMapper.findAll3(resinfo);

        return new PageInfo<>(resinfoList);
    }

    @Override
    public PageInfo<Resinfo> findByIns(String ins, Integer pageNum, Integer limit) {
        PageHelper.startPage(pageNum, limit);
        List<Resinfo> resinfoList = resinfoMapper.findByIns(ins);
        return new PageInfo<>(resinfoList);
    }

    @Override
    public PageInfo<Resinfo> findByInsAndAge(String ins, String age, Integer pageNum, Integer limit) {
        PageHelper.startPage(pageNum, limit);
        String[] ages = age.split("-");
        System.out.println(ages[0]+"...."+ages[1]);
        List<Resinfo> resinfoList = resinfoMapper.findByAges(ins,ages[0],ages[1]);
        return new PageInfo<>(resinfoList);
    }

    @Override
    public List<Father> selectTree() {
        List<Father> fatherList = new ArrayList<>();
        List<String> strings = resinfoMapper.findIns();
        for (String string : strings) {
            System.out.println(string);
            Father father = new Father(string);
            fatherList.add(father);
        }
        return fatherList;
    }

    @Override
    public void insert(Resinfo resinfo) {
        resinfoMapper.insert(resinfo);
    }

    @Override
    public List<Resinfo> queryByIdcard(String idcard) {
        return resinfoMapper.queryByIdcard(idcard);
    }

    @Override
    public B1 queryB1ById(String id) {
        return b1Mapper.queryB1ById(id);
    }

    @Override
    public B2 queryB2ById(String id) {
        return b2Mapper.queryB2ById(id);
    }

    @Override
    public B3 queryB3ById(String id) {
        return b3Mapper.queryB3ById(id);
    }

    @Override
    public B4 queryB4ById(String id) {
        return b4Mapper.queryB4ById(id);
    }

    @Override
    public List<Resinfo> findByName(String name) {
        return resinfoMapper.findByName(name);
    }


}
