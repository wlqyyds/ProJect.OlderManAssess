package com.yx.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yx.po.*;
import com.yx.service.BaseInfoService;
import com.yx.service.ResInfoService;
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
@RequestMapping("/res")
public class ResInfoController {

    @Autowired
    private BaseInfoService baseInfoService;

    @Autowired
    private ResInfoService resInfoService;


    @RequestMapping("/findAll")
    @ResponseBody
    public DataInfo queryReaderAll(MidUtil midUtil,String father,String title, @RequestParam(defaultValue = "1") Integer pageNum, @RequestParam(defaultValue = "15") Integer limit) {

        System.out.println(father+"---"+title);

        if (father==null&&title==null){
            PageInfo<Resinfo> resinfoPageInfo = new PageInfo<>();
            System.out.println("1122");
            System.out.println(midUtil.toString());
            if (midUtil.getTxt1() == null) {
                resinfoPageInfo = resInfoService.findAll(pageNum, limit);
            } else {
                System.out.println(midUtil.getTxt1() == null);
                resinfoPageInfo = resInfoService.findAll2(midUtil, pageNum, limit);
            }

            return DataInfo.ok("成功", resinfoPageInfo.getTotal(), resinfoPageInfo.getList());
        }
        if (father.equals("wu")&&title!=null){

            System.out.println("999");
            PageInfo<Resinfo> resinfoPageInfo = resInfoService.findByIns(title,pageNum,limit);
            return DataInfo.ok("成功", resinfoPageInfo.getTotal(), resinfoPageInfo.getList());

        }else if(!father.equals("wu")&&title!=null){
            System.out.println("888");
            PageInfo<Resinfo> byInsAndAge = resInfoService.findByInsAndAge(father, title, pageNum, limit);
            return DataInfo.ok("成功", byInsAndAge.getTotal(), byInsAndAge.getList());

        }
        return null;
    }

    @RequestMapping("/findAll2")
    @ResponseBody
    public DataInfo findAll2(Baseinfo baseinfo, @RequestParam(defaultValue = "1") Integer pageNum, @RequestParam(defaultValue = "15") Integer limit) {
        PageInfo<Baseinfo> baseinfoPageInfo = baseInfoService.findAll2(baseinfo, pageNum, limit);
        return DataInfo.ok("成功", baseinfoPageInfo.getTotal(), baseinfoPageInfo.getList());
    }

    @RequestMapping("/findAll3")
    @ResponseBody
    public DataInfo findAll3(Baseinfo baseinfo, @RequestParam(defaultValue = "1") Integer pageNum, @RequestParam(defaultValue = "15") Integer limit) {
        PageInfo<Baseinfo> baseinfoPageInfo = baseInfoService.findAll3(baseinfo, pageNum, limit);
        return DataInfo.ok("成功", baseinfoPageInfo.getTotal(), baseinfoPageInfo.getList());
    }

    @RequestMapping("/selectTree")
    @ResponseBody
    public Object selectTree() {
        System.out.println("111111");
        List<Father> fatherList = resInfoService.selectTree();
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
            for (child child : father.getChildList()) {
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

    @RequestMapping("/AssessResMain")
    public String AssessResMain(String idcard, Model model){
        model.addAttribute("idcard", idcard);
        return "Res/ResInfo";
    }

    @RequestMapping("/queryByIdcard")
    @ResponseBody
    public DataInfo queryByIdcard(String idcard, @RequestParam(defaultValue = "1") Integer pageNum, @RequestParam(defaultValue = "15") Integer limit) {
        PageHelper pageHelper = new PageHelper();
        List<Resinfo> resinfoList = resInfoService.queryByIdcard(idcard);
        pageHelper.startPage(pageNum, limit);
        PageInfo<Resinfo> pageInfo = new PageInfo<>(resinfoList);
        return DataInfo.ok("成功", pageInfo.getTotal(), pageInfo.getList());
    }

    @RequestMapping("/queryB1All")
    public String queryB1All(String id, Model model) {
        B1 b1 = resInfoService.queryB1ById(id);
        model.addAttribute("b1", b1);
        return "/BX/B1Info";
    }

    @RequestMapping("/queryB2All")
    public String queryB2All(String id, Model model) {
        B2 b2 = resInfoService.queryB2ById(id);
        model.addAttribute("b2", b2);
        return "/BX/B2Info";
    }

    @RequestMapping("/queryB3All")
    public String queryB3All(String id, Model model) {
        B3 b3 = resInfoService.queryB3ById(id);
        model.addAttribute("b3", b3);
        return "/BX/B3Info";
    }

    @RequestMapping("/queryB4All")
    public String queryB4All(String id, Model model) {
        B4 b4 = resInfoService.queryB4ById(id);
        model.addAttribute("b4", b4);
        return "/BX/B4Info";
    }

}
