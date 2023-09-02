package com.yx.dao;

import com.yx.po.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ResInfoMapper {

    List<Resinfo> findAll();

    List<Resinfo> findAll2(MidUtil midUtil);

    List<Resinfo> findAll3(Resinfo resinfo);

    List<String> findIns();

    List<Resinfo> findByIns(String ins);

    List<Resinfo> findByAges(@Param("ins") String ins, @Param("age1") String age1, @Param("age2") String age2);

    void insert(Resinfo resinfo);

    List<Resinfo> queryByIdcard(String idcard);

    List<Resinfo> findByName(String name);
}
