package com.yx.po;


public class B4 {

  private String id;
  private String name;
  private String idcard;
  private String data;
  private long cause;
  private long b41;
  private long b42;
  private long b43;
  private long b44;
  private long b45;
  private long b46;
  private long b4;
  private long order;
  private String evaname;

  public B4() {
  }

  public B4(SumedB sumedB) {
    this.id = sumedB.getId();
    this.name = sumedB.getName();
    this.idcard = sumedB.getIdcard();
    this.data = sumedB.getData();
    this.cause = sumedB.getCause();
    this.b41 = sumedB.getB41();
    this.b42 = sumedB.getB42();
    this.b43 = sumedB.getB43();
    this.b44 = sumedB.getB44();
    this.b45 = sumedB.getB45();
    this.b46 = sumedB.getB46();
    this.b4 = sumedB.getB4();
    this.order = sumedB.getOrder();
    this.evaname = sumedB.getEvaname();
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


  public long getB41() {
    return b41;
  }

  public void setB41(long b41) {
    this.b41 = b41;
  }


  public long getB42() {
    return b42;
  }

  public void setB42(long b42) {
    this.b42 = b42;
  }


  public long getB43() {
    return b43;
  }

  public void setB43(long b43) {
    this.b43 = b43;
  }


  public long getB44() {
    return b44;
  }

  public void setB44(long b44) {
    this.b44 = b44;
  }


  public long getB45() {
    return b45;
  }

  public void setB45(long b45) {
    this.b45 = b45;
  }


  public long getB46() {
    return b46;
  }

  public void setB46(long b46) {
    this.b46 = b46;
  }


  public long getB4() {
    return b4;
  }

  public void setB4(long b4) {
    this.b4 = b4;
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

  @Override
  public String toString() {
    return "B4{" +
            "id='" + id + '\'' +
            ", name='" + name + '\'' +
            ", idcard='" + idcard + '\'' +
            ", data='" + data + '\'' +
            ", cause=" + cause +
            ", b41=" + b41 +
            ", b42=" + b42 +
            ", b43=" + b43 +
            ", b44=" + b44 +
            ", b45=" + b45 +
            ", b46=" + b46 +
            ", b4=" + b4 +
            ", order=" + order +
            ", evaname='" + evaname + '\'' +
            '}';
  }
}
