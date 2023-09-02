package com.yx.po;

public class child {
    private String father;
    private String data;

    public child(String father, String data) {
        this.father = father;
        this.data = data;
    }

    public child() {
    }

    public String getFather() {
        return father;
    }

    public void setFather(String father) {
        this.father = father;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }
}
