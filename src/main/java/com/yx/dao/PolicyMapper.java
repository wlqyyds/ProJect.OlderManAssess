package com.yx.dao;

import com.yx.po.Policy;

import java.util.List;

public interface PolicyMapper {

    List<Policy> queryAllPolicy(Policy policy);

    Policy selectByPrimaryKey(Integer id);

}
