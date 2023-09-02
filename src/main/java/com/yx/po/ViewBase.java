package com.yx.po;

import java.util.List;

public class ViewBase {

    private List<String> xValues;
    private List<Long> B1yValuse;
    private List<Long> B2yValuse;
    private List<Long> B3yValuse;
    private List<Long> B4yValuse;

    @Override
    public String toString() {
        return "ViewBase{" +
                "xValues=" + xValues +
                ", B1yValuse=" + B1yValuse +
                ", B2yValuse=" + B2yValuse +
                ", B3yValuse=" + B3yValuse +
                ", B4yValuse=" + B4yValuse +
                '}';
    }

    public ViewBase() {
    }

    public ViewBase(List<String> xValues, List<Long> b1yValuse, List<Long> b2yValuse, List<Long> b3yValuse, List<Long> b4yValuse) {
        this.xValues = xValues;
        B1yValuse = b1yValuse;
        B2yValuse = b2yValuse;
        B3yValuse = b3yValuse;
        B4yValuse = b4yValuse;
    }

    public List<String> getxValues() {
        return xValues;
    }

    public void setxValues(List<String> xValues) {
        this.xValues = xValues;
    }

    public List<Long> getB1yValuse() {
        return B1yValuse;
    }

    public void setB1yValuse(List<Long> b1yValuse) {
        B1yValuse = b1yValuse;
    }

    public List<Long> getB2yValuse() {
        return B2yValuse;
    }

    public void setB2yValuse(List<Long> b2yValuse) {
        B2yValuse = b2yValuse;
    }

    public List<Long> getB3yValuse() {
        return B3yValuse;
    }

    public void setB3yValuse(List<Long> b3yValuse) {
        B3yValuse = b3yValuse;
    }

    public List<Long> getB4yValuse() {
        return B4yValuse;
    }

    public void setB4yValuse(List<Long> b4yValuse) {
        B4yValuse = b4yValuse;
    }
}
