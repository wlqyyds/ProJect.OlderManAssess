package com.yx.service;

import com.yx.po.B1;
import com.yx.po.B2;
import com.yx.po.B3;
import com.yx.po.B4;

import java.util.List;

public interface SumedResService {

    public void insertB1(B1 b1);

    public void insertB2(B2 b2);

    public void insertB3(B3 b3);

    public void insertB4(B4 b4);

    public B1 queryB1ById(String id);

    public B2 queryB2ById(String id);

    public B3 queryB3ById(String id);

    public B4 queryB4ById(String id);

    List<B1> queryB1ByIdcard(String idcard);

    List<B2> queryB2ByIdcard(String idcard);

    List<B3> queryB3ByIdcard(String idcard);

    List<B4> queryB4ByIdcard(String idcard);

    List<B1> queryB1ByName(String name);

    List<B2> queryB2ByName(String name);

    List<B3> queryB3ByName(String name);

    List<B4> queryB4ByName(String name);
}
