package com.py.beans;

import java.io.Serializable;

public class Customer
  implements Serializable
{
  private String cid;
  private String sid;
  private String name;
  private String address;
  private String tel;
  private Integer id;

  public Customer()
  {
  }

  public Customer(String sid, String name, String address, String tel, Integer id)
  {
    this.sid = sid;
    this.name = name;
    this.address = address;
    this.tel = tel;
    this.id = id;
  }

  public String getCid()
  {
    return this.cid;
  }

  public void setCid(String cid) {
    this.cid = cid;
  }

  public String getSid() {
    return this.sid;
  }

  public void setSid(String sid) {
    this.sid = sid;
  }

  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getAddress() {
    return this.address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public String getTel() {
    return this.tel;
  }

  public void setTel(String tel) {
    this.tel = tel;
  }

  public Integer getId() {
    return this.id;
  }

  public void setId(Integer id) {
    this.id = id;
  }
}

/* Location:           C:\Users\kobe2\Desktop\sshtesthqd\WEB-INF\classes\
 * Qualified Name:     com.py.beans.Customer
 * JD-Core Version:    0.5.3
 */