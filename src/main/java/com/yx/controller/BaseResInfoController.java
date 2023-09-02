package com.yx.controller;

import com.github.pagehelper.PageInfo;
import com.yx.po.*;
import com.yx.service.BaseRseInfoService;
import com.yx.service.impl.BaseResInfoServiceImpl;
import com.yx.utils.DataInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/finalRes")
public class BaseResInfoController {

    @Autowired
    private BaseRseInfoService baseRseInfoService;

    @RequestMapping("/findAll")
    @ResponseBody
    public DataInfo queryReaderAll(MidUtil midUtil, String father, String title, @RequestParam(defaultValue = "1") Integer pageNum, @RequestParam(defaultValue = "15") Integer limit) {

        System.out.println(father+"---"+title);

        if (father==null&&title==null){
            PageInfo<Baseresinfo> resinfoPageInfo = new PageInfo<>();
            System.out.println("1122");
            System.out.println(midUtil.toString());
            if (midUtil.getTxt1() == null) {
                resinfoPageInfo = baseRseInfoService.findAll(pageNum, limit);
            } else {
                System.out.println(midUtil.getTxt1() == null);
                resinfoPageInfo = baseRseInfoService.findAll2(midUtil, pageNum, limit);
            }

            return DataInfo.ok("成功", resinfoPageInfo.getTotal(), resinfoPageInfo.getList());
        }
        if (father.equals("wu")&&title!=null){

            System.out.println("999");
            PageInfo<Baseresinfo> resinfoPageInfo = baseRseInfoService.findByIns(title,pageNum,limit);
            return DataInfo.ok("成功", resinfoPageInfo.getTotal(), resinfoPageInfo.getList());

        }else if(!father.equals("wu")&&title!=null){
            System.out.println("888");
            PageInfo<Baseresinfo> byInsAndAge = baseRseInfoService.findByInsAndAge(father, title, pageNum, limit);
            return DataInfo.ok("成功", byInsAndAge.getTotal(), byInsAndAge.getList());

        }
        return null;
    }

    @RequestMapping("assessResFinal")
    public String AssessRes(){
        return "Res/assessResIndex";
    }

    @RequestMapping("/selectTree")
    @ResponseBody
    public Object selectTree() {
        System.out.println("111111");
        List<Father> fatherList = baseRseInfoService.selectTree();
        for (Father father : fatherList) {
            System.out.println(father.toString());
        }
        List<HashMap<String, Object>> result = new ArrayList<>();    //定义一个map处理json键名问题
        return fun(fatherList, result);
    }

    private Object fun(List<Father> fatherList, List<HashMap<String, Object>> result) {
        for(Father father : fatherList){
            HashMap<String, Object> map = new HashMap<>();
            map.put("father","wu");
            map.put("title", father.getIns());
            map.put("spread", false);      //设置是否展开
            List<HashMap<String, Object>> result1 = new ArrayList<>();
            int i = 0;
            for (com.yx.po.child child : father.getChildList()) {
                HashMap<String, Object> hashMap = new HashMap<>();
                hashMap.put("father",child.getFather());
                hashMap.put("title",child.getData());
                result1.add(hashMap);
            }
            System.out.println(result1);
            map.put("children",result1);
            result.add(map);
        }
        return result;
    }


}
