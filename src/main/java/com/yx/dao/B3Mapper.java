package com.yx.dao;

import com.yx.po.B3;

import java.util.List;

public interface B3Mapper {

    void insert(B3 b3);

    B3 queryB3ById(String id);

    List<B3> queryB3ByIdcard(String idcard);

    List<B3> queryB3ByName(String name);
}
