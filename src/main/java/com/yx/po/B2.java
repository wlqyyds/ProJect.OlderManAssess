package com.yx.po;


public class B2 {

  private String id;
  private String name;
  private String idcard;
  private String data;
  private long cause;
  private long b21;
  private long b22;
  private long b23;
  private long b24;
  private long b2;
  private long order;
  private String evaname;

  public B2() {
  }

  public B2(SumedB sumedB) {
    this.id = sumedB.getId();
    this.name = sumedB.getName();
    this.idcard = sumedB.getIdcard();
    this.data = sumedB.getData();
    this.cause = sumedB.getCause();
    this.b21 = sumedB.getB21();
    this.b22 = sumedB.getB22();
    this.b23 = sumedB.getB23();
    this.b24 = sumedB.getB24();
    this.b2 = sumedB.getB2();
    this.order = sumedB.getOrder();
    this.evaname = sumedB.getEvaname();

  }

  @Override
  public String toString() {
    return "B2{" +
            "id='" + id + '\'' +
            ", name='" + name + '\'' +
            ", idcard='" + idcard + '\'' +
            ", data='" + data + '\'' +
            ", cause=" + cause +
            ", b21=" + b21 +
            ", b22=" + b22 +
            ", b23=" + b23 +
            ", b24=" + b24 +
            ", b2=" + b2 +
            ", order=" + order +
            ", evaname='" + evaname + '\'' +
            '}';
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getIdcard() {
    return idcard;
  }

  public void setIdcard(String idcard) {
    this.idcard = idcard;
  }


  public String getData() {
    return data;
  }

  public void setData(String data) {
    this.data = data;
  }


  public long getCause() {
    return cause;
  }

  public void setCause(long cause) {
    this.cause = cause;
  }


  public long getB21() {
    return b21;
  }

  public void setB21(long b21) {
    this.b21 = b21;
  }


  public long getB22() {
    return b22;
  }

  public void setB22(long b22) {
    this.b22 = b22;
  }


  public long getB23() {
    return b23;
  }

  public void setB23(long b23) {
    this.b23 = b23;
  }


  public long getB24() {
    return b24;
  }

  public void setB24(long b24) {
    this.b24 = b24;
  }


  public long getB2() {
    return b2;
  }

  public void setB2(long b2) {
    this.b2 = b2;
  }


  public long getOrder() {
    return order;
  }

  public void setOrder(long order) {
    this.order = order;
  }


  public String getEvaname() {
    return evaname;
  }

  public void setEvaname(String evaname) {
    this.evaname = evaname;
  }

}
