package com.yx.controller;

import com.yx.po.*;
import com.yx.service.ResInfoService;
import com.yx.service.SumedResService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ViewBaseController {

    @Autowired
    private ResInfoService resInfoService;
    @Autowired
    private SumedResService sumedResService;

    @RequestMapping("/getViewBase")
    @ResponseBody
    public ViewBase getViewBase(String name) {
        System.out.println(name);
        List<Resinfo> resinfoList = resInfoService.findByName(name);
        List<B1> b1List = sumedResService.queryB1ByName(name);
        List<B2> b2List = sumedResService.queryB2ByName(name);
        List<B3> b3List = sumedResService.queryB3ByName(name);
        List<B4> b4List = sumedResService.queryB4ByName(name);

        List<B1> b1s = new ArrayList<>();
        for(int i = 0; i < b1List.size(); i++){
            for (B1 b1 : b1List) {
                if(b1.getOrder()==(i+1)) {
                    b1s.add(b1);
                }
            }
        }
        List<B2> b2s = new ArrayList<>();
        for(int i = 0; i < b2List.size(); i++){
            for (B2 b2 : b2List) {
                if(b2.getOrder()==(i+1)) {
                    b2s.add(b2);
                }
            }
        }
        List<B3> b3s = new ArrayList<>();
        for(int i = 0; i < b3List.size(); i++){
            for (B3 b3 : b3List) {
                if(b3.getOrder()==(i+1)) {
                    b3s.add(b3);
                }
            }
        }
        List<B4> b4s = new ArrayList<>();
        for(int i = 0; i < b4List.size(); i++){
            for (B4 b4 : b4List) {
                if(b4.getOrder()==(i+1)) {
                    b4s.add(b4);
                }
            }
        }

        ViewBase viewBase = new ViewBase();
        List<String> xValues = new ArrayList<>();
        List<Long> B1yValuse = new ArrayList<>();
        List<Long> B2yValuse = new ArrayList<>();
        List<Long> B3yValuse = new ArrayList<>();
        List<Long> B4yValuse = new ArrayList<>();
        for (int i = 0; i < b1s.size(); i++) {
            xValues.add("第"+b1s.get(i).getOrder()+"次");
            B1yValuse.add(b1s.get(i).getB1());
            B2yValuse.add(b2s.get(i).getB2());
            B3yValuse.add(b3s.get(i).getB3());
            B4yValuse.add(b4s.get(i).getB4());
        }

        viewBase.setxValues(xValues);
        viewBase.setB1yValuse(B1yValuse);
        viewBase.setB2yValuse(B2yValuse);
        viewBase.setB3yValuse(B3yValuse);
        viewBase.setB4yValuse(B4yValuse);

        System.out.println(viewBase);
        return viewBase;
    }

    @RequestMapping("/getViewBaseByIdcard")
    @ResponseBody
    public ViewBase getViewBaseByIdcard(String idcard) {
        System.out.println(idcard);
        List<B1> b1List = sumedResService.queryB1ByIdcard(idcard);
        List<B2> b2List = sumedResService.queryB2ByIdcard(idcard);
        List<B3> b3List = sumedResService.queryB3ByIdcard(idcard);
        List<B4> b4List = sumedResService.queryB4ByIdcard(idcard);

        List<B1> b1s = new ArrayList<>();
        for(int i = 0; i < b1List.size(); i++){
            for (B1 b1 : b1List) {
                if(b1.getOrder()==(i+1)) {
                    b1s.add(b1);
                }
            }
        }
        List<B2> b2s = new ArrayList<>();
        for(int i = 0; i < b2List.size(); i++){
            for (B2 b2 : b2List) {
                if(b2.getOrder()==(i+1)) {
                    b2s.add(b2);
                }
            }
        }
        List<B3> b3s = new ArrayList<>();
        for(int i = 0; i < b3List.size(); i++){
            for (B3 b3 : b3List) {
                if(b3.getOrder()==(i+1)) {
                    b3s.add(b3);
                }
            }
        }
        List<B4> b4s = new ArrayList<>();
        for(int i = 0; i < b4List.size(); i++){
            for (B4 b4 : b4List) {
                if(b4.getOrder()==(i+1)) {
                    b4s.add(b4);
                }
            }
        }
        ViewBase viewBase = new ViewBase();
        List<String> xValues = new ArrayList<>();
        List<Long> B1yValuse = new ArrayList<>();
        List<Long> B2yValuse = new ArrayList<>();
        List<Long> B3yValuse = new ArrayList<>();
        List<Long> B4yValuse = new ArrayList<>();
        for (int i = 0; i < b1s.size(); i++) {
            xValues.add("第"+b1s.get(i).getOrder()+"次");
            B1yValuse.add(b1s.get(i).getB1());
            B2yValuse.add(b2s.get(i).getB2());
            B3yValuse.add(b3s.get(i).getB3());
            B4yValuse.add(b4s.get(i).getB4());
        }

        viewBase.setxValues(xValues);
        viewBase.setB1yValuse(B1yValuse);
        viewBase.setB2yValuse(B2yValuse);
        viewBase.setB3yValuse(B3yValuse);
        viewBase.setB4yValuse(B4yValuse);

        System.out.println(viewBase);
        return viewBase;
    }


}
