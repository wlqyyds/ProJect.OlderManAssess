package com.yx.controller;

import com.github.pagehelper.PageInfo;
import com.yx.po.Policy;
import com.yx.service.PolicyService;
import com.yx.utils.DataInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
public class PolicyController {

    @Autowired
    private PolicyService policyService;

    @GetMapping("/readerIndex")
    public String readerIndex(){
        return "reader/readerIndex";
    }

    /*@Autowired
    private TypesService typesService;*/
    @RequestMapping("/policyAll")
    @ResponseBody
    public DataInfo queryReaderAll(Policy policy, @RequestParam(defaultValue = "1") Integer pageNum, @RequestParam(defaultValue = "15") Integer limit){
        System.out.println("11111");
        if (policy.getType() != null){
            String type = policy.getType();
            type = type.split("\\(")[0];
            System.out.println(type);
            policy.setType(type);
        }

        PageInfo<Policy> pageInfo = policyService.queryAllPolicy(policy,pageNum,limit);
        return DataInfo.ok("成功",pageInfo.getTotal(),pageInfo.getList());
    }

    @GetMapping("/queryPoliceById")
    public String queryReaderInfoById(Integer id, Model model){
        System.out.println(id);
        Policy policy = policyService.queryPoliceById(id);
        model.addAttribute("info",policy);
        return "reader/updateReader";
    }

    /*@GetMapping("selectTree")
    @ResponseBody
    public Object selectTree() {
        System.out.println("111111");
        List<Types> TypeList = typesService.selectTree();
        System.out.println(TypeList);
        List<HashMap<String, Object>> result = new ArrayList<>();    //定义一个map处理json键名问题
        return fun(TypeList, result);
    }

    private Object fun(List<Types> dpet, List<HashMap<String, Object>> result) {
        for(Types d : dpet){
            HashMap<String, Object> map = new HashMap<>();
            map.put("id", d.getId());
            map.put("title", d.getType());
            map.put("spread", true);      //设置是否展开
            List<HashMap<String, Object>> result1 = new ArrayList<>();
            List<Types> children = d.getChildren();    //下级菜单
            //这里可以根据自己需求判断节点默认选中
        *//*if(m.getParent() != null || m.getChildren().size() == 0){
            map.put("checked", true);    //设置为选中状态
        }*//*
            map.put("children", fun(children, result1));
            result.add(map);
        }
        return result;
    }*/

}
