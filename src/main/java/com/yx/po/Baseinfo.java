package com.yx.po;


public class Baseinfo {

  private long id;
  private String name;
  private String sex;
  private long age;
  private String ins;
  private java.sql.Date birth;
  private String idcard;
  private String ssnum;
  private String nation;
  private String edu;
  private String rel;
  private String mar;
  private String stay;
  private String pay;
  private String eco;
  private Integer state;
  private String subname;
  private String relation;
  private String cpname;
  private String cptel;

  public long getAge() {
    return age;
  }

  public void setAge(long age) {
    this.age = age;
  }

  public String getIns() {
    return ins;
  }

  public void setIns(String ins) {
    this.ins = ins;
  }

  @Override
  public String toString() {
    return "Baseinfo{" +
            "id=" + id +
            ", name='" + name + '\'' +
            ", sex='" + sex + '\'' +
            ", ins='" + ins + '\'' +
            ", birth=" + birth +
            ", idcard='" + idcard + '\'' +
            ", ssnum='" + ssnum + '\'' +
            ", nation='" + nation + '\'' +
            ", edu='" + edu + '\'' +
            ", rel='" + rel + '\'' +
            ", mar='" + mar + '\'' +
            ", stay='" + stay + '\'' +
            ", pay='" + pay + '\'' +
            ", eco='" + eco + '\'' +
            ", state=" + state +
            ", subname='" + subname + '\'' +
            ", relation='" + relation + '\'' +
            ", cpname='" + cpname + '\'' +
            ", cptel='" + cptel + '\'' +
            '}';
  }

  public String getSubname() {
    return subname;
  }

  public void setSubname(String subname) {
    this.subname = subname;
  }

  public String getRelation() {
    return relation;
  }

  public void setRelation(String relation) {
    this.relation = relation;
  }

  public String getCpname() {
    return cpname;
  }

  public void setCpname(String cpname) {
    this.cpname = cpname;
  }

  public String getCptel() {
    return cptel;
  }

  public void setCptel(String cptel) {
    this.cptel = cptel;
  }

  public Integer getState() {
    return state;
  }

  public void setState(Integer state) {
    this.state = state;
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getSex() {
    return sex;
  }

  public void setSex(String sex) {
    this.sex = sex;
  }


  public java.sql.Date getBirth() {
    return birth;
  }

  public void setBirth(java.sql.Date birth) {
    this.birth = birth;
  }


  public String getIdcard() {
    return idcard;
  }

  public void setIdcard(String idcard) {
    this.idcard = idcard;
  }


  public String getSsnum() {
    return ssnum;
  }

  public void setSsnum(String ssnum) {
    this.ssnum = ssnum;
  }


  public String getNation() {
    return nation;
  }

  public void setNation(String nation) {
    this.nation = nation;
  }


  public String getEdu() {
    return edu;
  }

  public void setEdu(String edu) {
    this.edu = edu;
  }


  public String getRel() {
    return rel;
  }

  public void setRel(String rel) {
    this.rel = rel;
  }


  public String getMar() {
    return mar;
  }

  public void setMar(String mar) {
    this.mar = mar;
  }


  public String getStay() {
    return stay;
  }

  public void setStay(String stay) {
    this.stay = stay;
  }


  public String getPay() {
    return pay;
  }

  public void setPay(String pay) {
    this.pay = pay;
  }


  public String getEco() {
    return eco;
  }

  public void setEco(String eco) {
    this.eco = eco;
  }

}
