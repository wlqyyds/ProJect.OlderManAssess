package com.yx.dao;

import com.yx.po.Baseinfo;
import com.yx.po.Baseresinfo;
import com.yx.po.MidUtil;
import com.yx.po.Resinfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BaseResInfoMapper {

    List<Baseresinfo> findAll();

    List<Baseresinfo> findAll2(MidUtil midUtil);


    List<String> findIns();

    List<Baseresinfo> findByIns(String ins);

    List<Baseresinfo> findByAges(@Param("ins") String ins, @Param("age1") String age1, @Param("age2") String age2);

    void insert(Baseresinfo baseinfo);

    List<String> findAllName();

}
