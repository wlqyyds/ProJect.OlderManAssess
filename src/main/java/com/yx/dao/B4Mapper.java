package com.yx.dao;

import com.yx.po.B4;

import java.util.List;

public interface B4Mapper {

    void insert(B4 b4);

    B4 queryB4ById(String id);

    List<B4> queryB4ByIdcard(String idcard);

    List<B4> queryB4ByName(String name);
}
