package com.yx.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yx.dao.BaseInfoMapper;
import com.yx.po.Baseinfo;
import com.yx.po.Policy;
import com.yx.service.BaseInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BaseInfoServiceImpl implements BaseInfoService {

    @Autowired
    private BaseInfoMapper baseInfoMapper;


    @Override
    public PageInfo<Baseinfo> findAll(Baseinfo baseinfo, Integer pageNum, Integer limit) {
        PageHelper.startPage(pageNum,limit);
        System.out.println(baseinfo.toString());
        return new PageInfo<>(baseInfoMapper.findAll(baseinfo));
    }

    @Override
    public PageInfo<Baseinfo> findAll2(Baseinfo baseinfo, Integer pageNum, Integer limit) {
        PageHelper.startPage(pageNum,limit);
        List<Baseinfo> baseinfoList = baseInfoMapper.findAll2(baseinfo);

        return new PageInfo<>(baseinfoList);
    }

    @Override
    public PageInfo<Baseinfo> findAll3(Baseinfo baseinfo, Integer pageNum, Integer limit) {
        PageHelper.startPage(pageNum,limit);
        List<Baseinfo> baseinfoList = baseInfoMapper.findAll3(baseinfo);

        return new PageInfo<>(baseinfoList);
    }

    @Override
    public Baseinfo findByIdcard(String idcard) {
        return baseInfoMapper.findByIdcard(idcard);
    }

    @Override
    public void updataStatusByIdcard(String idcard) {
        baseInfoMapper.updataStatusByIdcard(idcard);
    }

    @Override
    public List<String> findAllName() {
        return baseInfoMapper.findAllName();
    }
}
