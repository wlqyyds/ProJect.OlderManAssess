package com.yx.po;

import java.util.ArrayList;
import java.util.List;

public class Father {

    private String ins;
    private List<child> childList = new ArrayList<>();

    public Father() {
    }

    public Father(String ins) {
        this.ins = ins;
        child child1 = new child(ins,"50-59");
        child child2 = new child(ins,"60-69");
        child child3 = new child(ins,"70-79");
        child child4 = new child(ins,"80-89");
        child child5 = new child(ins,"90-99");

        this.childList.add(child1);
        this.childList.add(child2);
        this.childList.add(child3);
        this.childList.add(child4);
        this.childList.add(child5);
    }

    public String getIns() {
        return ins;
    }

    public void setIns(String ins) {
        this.ins = ins;
    }

    public List<child> getChildList() {
        return childList;
    }

    public void setChildList(List<child> childList) {
        this.childList = childList;
    }

    @Override
    public String toString() {
        return "Father{" +
                "ins='" + ins + '\'' +
                ", childList=" + childList +
                '}';
    }
}
