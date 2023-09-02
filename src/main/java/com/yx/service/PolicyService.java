package com.yx.service;

import com.github.pagehelper.PageInfo;
import com.yx.po.Policy;

public interface PolicyService {

     PageInfo<Policy> queryAllPolicy(Policy policy, Integer pageNum, Integer limit);

     Policy queryPoliceById(Integer id);

}
