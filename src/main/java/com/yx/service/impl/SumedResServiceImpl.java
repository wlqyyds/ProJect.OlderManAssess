package com.yx.service.impl;

import com.yx.dao.B1Mapper;
import com.yx.dao.B2Mapper;
import com.yx.dao.B3Mapper;
import com.yx.dao.B4Mapper;
import com.yx.po.B1;
import com.yx.po.B2;
import com.yx.po.B3;
import com.yx.po.B4;
import com.yx.service.SumedResService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SumedResServiceImpl implements SumedResService {

    @Autowired
    private B1Mapper b1Mapper;
    @Autowired
    private B2Mapper b2Mapper;
    @Autowired
    private B3Mapper b3Mapper;
    @Autowired
    private B4Mapper b4Mapper;

    @Override
    public void insertB1(B1 b1) {
        b1Mapper.insert(b1);
    }

    @Override
    public void insertB2(B2 b2) {
        b2Mapper.insert(b2);
    }

    @Override
    public void insertB3(B3 b3) {
        b3Mapper.insert(b3);
    }

    @Override
    public void insertB4(B4 b4) {
        b4Mapper.insert(b4);
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
    public List<B1> queryB1ByIdcard(String idcard) {
        return b1Mapper.queryB1ByIdcard(idcard);
    }

    @Override
    public List<B2> queryB2ByIdcard(String idcard) {
        return b2Mapper.queryB2ByIdcard(idcard);
    }

    @Override
    public List<B3> queryB3ByIdcard(String idcard) {
        return b3Mapper.queryB3ByIdcard(idcard);
    }

    @Override
    public List<B4> queryB4ByIdcard(String idcard) {
        return b4Mapper.queryB4ByIdcard(idcard);
    }

    @Override
    public List<B1> queryB1ByName(String name) {
        return b1Mapper.queryB1ByName(name);
    }

    @Override
    public List<B2> queryB2ByName(String name) {
        return b2Mapper.queryB2ByName(name);
    }

    @Override
    public List<B3> queryB3ByName(String name) {
        return b3Mapper.queryB3ByName(name);
    }

    @Override
    public List<B4> queryB4ByName(String name) {
        return b4Mapper.queryB4ByName(name);
    }
}
