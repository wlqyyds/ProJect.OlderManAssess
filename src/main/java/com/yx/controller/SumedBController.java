package com.yx.controller;

import com.yx.po.*;
import com.yx.service.BaseInfoService;
import com.yx.service.BaseRseInfoService;
import com.yx.service.ResInfoService;
import com.yx.service.SumedResService;
import com.yx.utils.DataInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class SumedBController {

    @Autowired
    private SumedResService sumedResService;

    @Autowired
    private ResInfoService resInfoService;
    @Autowired
    private BaseInfoService baseInfoService;

    @Autowired
    private BaseRseInfoService baseRseInfoService;
    @Autowired
    private PlatformTransactionManager txManager;

    @RequestMapping("/submitRes")
    @ResponseBody
    public DataInfo submitRes(SumedB sumedB) {
        DefaultTransactionDefinition def = new DefaultTransactionDefinition();
        def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRES_NEW);
        TransactionStatus status = txManager.getTransaction(def);
        System.out.println(sumedB);

        try {
            Baseinfo baseinfo = baseInfoService.findByIdcard(sumedB.getIdcard());
            System.out.println(sumedB.getData());
            sumedB.setName(baseinfo.getName());
            sumedB.setEvaname("路明非");

            B1 b1 = new B1(sumedB);
            B2 b2 = new B2(sumedB);
            B3 b3 = new B3(sumedB);
            B4 b4 = new B4(sumedB);

            List<B1> b1List = sumedResService.queryB1ByIdcard(sumedB.getIdcard());
            List<B2> b2List = sumedResService.queryB2ByIdcard(sumedB.getIdcard());
            List<B3> b3List = sumedResService.queryB3ByIdcard(sumedB.getIdcard());
            List<B4> b4List = sumedResService.queryB4ByIdcard(sumedB.getIdcard());

            if (b1List.size() == 0) {
                b1.setOrder(1);
                b2.setOrder(1);
                b3.setOrder(1);
                b4.setOrder(1);
                Baseresinfo baseresinfo = new Baseresinfo();
                baseresinfo.setIdcard(sumedB.getIdcard());
                baseresinfo.setName(sumedB.getName());
                baseresinfo.setAge(baseinfo.getAge());
                baseresinfo.setIns(baseinfo.getIns());
                baseresinfo.setSubname(baseinfo.getSubname());
                baseRseInfoService.insert(baseresinfo);
            }else {
                long b1max = 0;
                for(int i = 0; i < b1List.size(); i++) {
                    if(b1List.get(i).getOrder() > b1max) {
                        b1max = b1List.get(i).getOrder();
                    }
                }
                b1.setOrder(b1max + 1);

                long b2max = 0;
                for(int i = 0; i < b2List.size(); i++) {
                    if(b2List.get(i).getOrder() > b2max) {
                        b2max = b2List.get(i).getOrder();
                    }
                }
                b2.setOrder(b2max + 1);

                long b3max = 0;
                for(int i = 0; i < b3List.size(); i++) {
                    if(b3List.get(i).getOrder() > b3max) {
                        b3max = b3List.get(i).getOrder();
                    }
                }
                b3.setOrder(b3max + 1);

                long b4max = 0;
                for(int i = 0; i < b4List.size(); i++) {
                    if(b4List.get(i).getOrder() > b4max) {
                        b4max = b4List.get(i).getOrder();
                    }
                }
                b4.setOrder(b4max + 1);
            }

            sumedResService.insertB1(b1);
            sumedResService.insertB2(b2);
            sumedResService.insertB3(b3);
            sumedResService.insertB4(b4);

            baseInfoService.updataStatusByIdcard(sumedB.getIdcard());

            txManager.commit(status);
        }catch(Exception e) {

            e.printStackTrace();

            // 手动回滚事务  start
            txManager.rollback(status);
            // 手动回滚事务  end

        }

        return DataInfo.ok();
    }

    @RequestMapping("/FinalRseIndex/{id}")
    public String FinalRseIndex(@PathVariable String id, Model model) {
        System.out.println("id="+id);
        B1 b1 = sumedResService.queryB1ById(id);
        B2 b2 = sumedResService.queryB2ById(id);
        B3 b3 = sumedResService.queryB3ById(id);
        B4 b4 = sumedResService.queryB4ById(id);
        System.out.println(b1);
        System.out.println(b2);
        System.out.println(b3);
        System.out.println(b4);
        model.addAttribute("b1", b1);
        model.addAttribute("b2", b2);
        model.addAttribute("b3", b3);
        model.addAttribute("b4", b4);
        return "Res/FinalRseIndex";
    }

    @RequestMapping("/submitFinalRes")
    @ResponseBody
    public DataInfo submitFinalRes(String id,String idcard,Integer fres, Integer sres) {
        System.out.println(id+"--"+idcard+"--"+fres+"--"+"--"+sres);
        B1 b1 = sumedResService.queryB1ById(id);
        B2 b2 = sumedResService.queryB2ById(id);
        B3 b3 = sumedResService.queryB3ById(id);
        B4 b4 = sumedResService.queryB4ById(id);
        Baseinfo baseinfo = baseInfoService.findByIdcard(idcard);

        Resinfo resinfo = new Resinfo();
        resinfo.setId(id);
        resinfo.setName(baseinfo.getName());
        resinfo.setIdcard(idcard);
        resinfo.setIns(baseinfo.getIns());
        resinfo.setRes1(b1.getB1());
        resinfo.setRes2(b2.getB2());
        resinfo.setRes3(b3.getB3());
        resinfo.setRes4(b4.getB4());
        resinfo.setAge(baseinfo.getAge());
        resinfo.setEvaname(b1.getEvaname());
        resinfo.setSubname(baseinfo.getSubname());
        resinfo.setOrder(b1.getOrder());
        resinfo.setFres(fres);
        resinfo.setSres(sres);
        resInfoService.insert(resinfo);
        return DataInfo.ok();
    }

}
