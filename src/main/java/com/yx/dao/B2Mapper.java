package com.yx.dao;

import com.yx.po.B2;

import java.util.List;

public interface B2Mapper {

    void insert(B2 b2);

    B2 queryB2ById(String id);

    List<B2> queryB2ByIdcard(String idcard);

    List<B2> queryB2ByName(String name);
}
