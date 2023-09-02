package com.yx.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yx.dao.PolicyMapper;
import com.yx.po.Policy;
import com.yx.service.PolicyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PolicyServiceImpl implements PolicyService {

    @Autowired
    private PolicyMapper policyMapper;

    @Override
    public PageInfo<Policy> queryAllPolicy(Policy policy, Integer pageNum, Integer limit) {
        PageHelper.startPage(pageNum,limit);
        List<Policy> policyList =  policyMapper.queryAllPolicy(policy);
        //System.out.println(policyList);
        return new PageInfo<>(policyList);
    }

    @Override
    public Policy queryPoliceById(Integer id) {
        return policyMapper.selectByPrimaryKey(id);
    }

}
