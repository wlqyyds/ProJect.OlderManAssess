package com.yx.po;


public class B3 {

  private String id;
  private String name;
  private String idcard;
  private String data;
  private long cause;
  private long b31;
  private long b32;
  private long b33;
  private long b34;
  private long b3;
  private long order;
  private String evaname;

  public B3() {
  }

  public B3(SumedB sumedB) {
    this.id = sumedB.getId();
    this.name = sumedB.getName();
    this.idcard = sumedB.getIdcard();
    this.data = sumedB.getData();
    this.cause = sumedB.getCause();
    this.b31 = sumedB.getB31();
    this.b32 = sumedB.getB32();
    this.b33 = sumedB.getB33();
    this.b34 = sumedB.getB34();
    this.b3 = sumedB.getB3();
    this.order = sumedB.getOrder();
    this.evaname = sumedB.getEvaname();
  }

  @Override
  public String toString() {
    return "B3{" +
            "id='" + id + '\'' +
            ", name='" + name + '\'' +
            ", idcard='" + idcard + '\'' +
            ", data='" + data + '\'' +
            ", cause=" + cause +
            ", b31=" + b31 +
            ", b32=" + b32 +
            ", b33=" + b33 +
            ", b34=" + b34 +
            ", b3=" + b3 +
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


  public long getB31() {
    return b31;
  }

  public void setB31(long b31) {
    this.b31 = b31;
  }


  public long getB32() {
    return b32;
  }

  public void setB32(long b32) {
    this.b32 = b32;
  }


  public long getB33() {
    return b33;
  }

  public void setB33(long b33) {
    this.b33 = b33;
  }


  public long getB34() {
    return b34;
  }

  public void setB34(long b34) {
    this.b34 = b34;
  }


  public long getB3() {
    return b3;
  }

  public void setB3(long b3) {
    this.b3 = b3;
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
