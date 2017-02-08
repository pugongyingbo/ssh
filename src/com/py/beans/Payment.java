package com.py.beans;

import java.io.Serializable;
import java.util.Date;

public class Payment
  implements Serializable
{
  private Integer id;
  private String did;
  private Double money;
  private Double remain;
  private Date dates;
  private String toller;

  public Payment()
  {
  }

  public Payment(String did, Double money, Double remain, Date dates, String toller)
  {
    this.did = did;
    this.money = money;
    this.remain = remain;
    this.dates = dates;
    this.toller = toller;
  }

  public Integer getId()
  {
    return this.id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getDid() {
    return this.did;
  }

  public void setDid(String did) {
    this.did = did;
  }

 
 
public Double getMoney() {
	return money;
}

public void setMoney(Double money) {
	this.money = money;
}

public Double getRemain() {
    return this.remain;
  }

  public void setRemain(Double remain) {
    this.remain = remain;
  }

  public Date getDates()
  {
    return this.dates;
  }

  public void setDates(Date dates) {
    this.dates = dates;
  }

  public String getToller() {
    return this.toller;
  }

  public void setToller(String toller) {
    this.toller = toller;
  }
}
