package com.py.beans;

import java.io.Serializable;
import java.util.Date;

public class Electric
  implements Serializable
{
  private Integer eid;
  private String did;
  private Double EDay;
  private Date dates;

  public Electric()
  {
  }

  public Electric(String did, Double EDay, Date dates)
  {
    this.did = did;
    this.EDay = EDay;
    this.dates = dates;
  }

  public Integer getEid()
  {
    return this.eid;
  }

  public void setEid(Integer eid) {
    this.eid = eid;
  }

  public String getDid() {
    return this.did;
  }

  public void setDid(String did) {
    this.did = did;
  }

  public Double getEDay() {
    return this.EDay;
  }

  public void setEDay(Double EDay) {
    this.EDay = EDay;
  }

  public Date getDates() {
    return this.dates;
  }

  public void setDates(Date dates) {
    this.dates = dates;
  }
}

/* Location:           C:\Users\kobe2\Desktop\sshtesthqd\WEB-INF\classes\
 * Qualified Name:     com.py.beans.Electric
 * JD-Core Version:    0.5.3
 */