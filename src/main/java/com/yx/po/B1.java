package com.yx.po;


public class B1 {

  private String id;
  private String name;
  private String idcard;
  private String data;
  private long cause;
  private long b11;
  private long b12;
  private long b13;
  private long b14;
  private long b15;
  private long b16;
  private long b17;
  private long b18;
  private long b19;
  private long b110;
  private long b111;
  private long b1;
  private long order;
  private String evaname;

  public B1() {
  }

  public B1(SumedB sumedB) {
    this.id = sumedB.getId();
    this.name = sumedB.getName();
    this.idcard = sumedB.getIdcard();
    this.data = sumedB.getData();
    this.cause = sumedB.getCause();
    this.b11 = sumedB.getB11();
    this.b12 = sumedB.getB12();
    this.b13 = sumedB.getB13();
    this.b14 = sumedB.getB14();
    this.b15 = sumedB.getB15();
    this.b16 = sumedB.getB16();
    this.b17 = sumedB.getB17();
    this.b18 = sumedB.getB18();
    this.b19 = sumedB.getB19();
    this.b110 = sumedB.getB110();
    this.b111 = sumedB.getB111();
    this.b1 = sumedB.getB1();
    this.order = sumedB.getOrder();
    this.evaname = sumedB.getEvaname();
  }

  @Override
  public String toString() {
    return "B1{" +
            "id='" + id + '\'' +
            ", name='" + name + '\'' +
            ", idcard='" + idcard + '\'' +
            ", data='" + data + '\'' +
            ", cause=" + cause +
            ", b11=" + b11 +
            ", b12=" + b12 +
            ", b13=" + b13 +
            ", b14=" + b14 +
            ", b15=" + b15 +
            ", b16=" + b16 +
            ", b17=" + b17 +
            ", b18=" + b18 +
            ", b19=" + b19 +
            ", b110=" + b110 +
            ", b111=" + b111 +
            ", b1=" + b1 +
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


  public long getB11() {
    return b11;
  }

  public void setB11(long b11) {
    this.b11 = b11;
  }


  public long getB12() {
    return b12;
  }

  public void setB12(long b12) {
    this.b12 = b12;
  }


  public long getB13() {
    return b13;
  }

  public void setB13(long b13) {
    this.b13 = b13;
  }


  public long getB14() {
    return b14;
  }

  public void setB14(long b14) {
    this.b14 = b14;
  }


  public long getB15() {
    return b15;
  }

  public void setB15(long b15) {
    this.b15 = b15;
  }


  public long getB16() {
    return b16;
  }

  public void setB16(long b16) {
    this.b16 = b16;
  }


  public long getB17() {
    return b17;
  }

  public void setB17(long b17) {
    this.b17 = b17;
  }


  public long getB18() {
    return b18;
  }

  public void setB18(long b18) {
    this.b18 = b18;
  }


  public long getB19() {
    return b19;
  }

  public void setB19(long b19) {
    this.b19 = b19;
  }


  public long getB110() {
    return b110;
  }

  public void setB110(long b110) {
    this.b110 = b110;
  }


  public long getB111() {
    return b111;
  }

  public void setB111(long b111) {
    this.b111 = b111;
  }


  public long getB1() {
    return b1;
  }

  public void setB1(long b1) {
    this.b1 = b1;
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
