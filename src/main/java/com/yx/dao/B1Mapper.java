package com.yx.dao;

import com.yx.po.B1;

import java.util.List;

public interface B1Mapper {

    void insert(B1 b1);

    B1 queryB1ById(String id);

    List<B1> queryB1ByIdcard(String idcard);

    List<B1> queryB1ByName(String name);
}
