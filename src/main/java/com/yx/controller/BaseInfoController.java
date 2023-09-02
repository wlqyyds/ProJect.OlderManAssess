package com.yx.controller;

import com.github.pagehelper.PageInfo;
import com.yx.po.Baseinfo;
import com.yx.po.Policy;
import com.yx.service.BaseInfoService;
import com.yx.service.PolicyService;
import com.yx.utils.DataInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.xml.transform.Result;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

@Controller
public class BaseInfoController {

    @Autowired
    private BaseInfoService baseInfoService;
    @Autowired
    private PolicyService policyService;

    @GetMapping("/ordermanindex")
    public String readerIndex(){
        return "orderMan/OrderManIndex";
    }

    @RequestMapping("/findAll")
    @ResponseBody
    public DataInfo queryReaderAll(Baseinfo baseinfo, @RequestParam(defaultValue = "1") Integer pageNum, @RequestParam(defaultValue = "15") Integer limit){
        PageInfo<Baseinfo> baseinfoPageInfo = baseInfoService.findAll(baseinfo, pageNum, limit);
        return DataInfo.ok("成功",baseinfoPageInfo.getTotal(),baseinfoPageInfo.getList());
    }

    @RequestMapping("/findAll2")
    @ResponseBody
    public DataInfo findAll2(Baseinfo baseinfo, @RequestParam(defaultValue = "1") Integer pageNum, @RequestParam(defaultValue = "15") Integer limit){
        PageInfo<Baseinfo> baseinfoPageInfo = baseInfoService.findAll2(baseinfo, pageNum, limit);
        return DataInfo.ok("成功",baseinfoPageInfo.getTotal(),baseinfoPageInfo.getList());
    }

    @RequestMapping("/findAll3")
    @ResponseBody
    public DataInfo findAll3(Baseinfo baseinfo, @RequestParam(defaultValue = "1") Integer pageNum, @RequestParam(defaultValue = "15") Integer limit){
        PageInfo<Baseinfo> baseinfoPageInfo = baseInfoService.findAll3(baseinfo, pageNum, limit);
        return DataInfo.ok("成功",baseinfoPageInfo.getTotal(),baseinfoPageInfo.getList());
    }

    @RequestMapping("/OrderManAdd")
    public String readerAdd(){
        return "orderMan/OrderManAdd";
    }

    @RequestMapping("/upload")
    public String upload(){
        return "orderMan/upload";
    }

    @RequestMapping("/assess")
    public String assess(){
        return "orderMan/assessIndex";
    }

    @RequestMapping("/AssessMain")
    public String AssessMain(String idcard, Model model){
        System.out.println(idcard);
        model.addAttribute("idcard", idcard);
        return "orderMan/AssessMain";
    }

    @RequestMapping("assessRes")
    public String AssessRes(){
        return "orderMan/assessResIndex";
    }



}



