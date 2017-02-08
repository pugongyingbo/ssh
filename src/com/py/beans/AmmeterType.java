package com.py.beans;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class AmmeterType
  implements Serializable
{
  private Integer tid;
  private String type;
  private Double price;
  private Set ammeters = new HashSet(0);

  public AmmeterType()
  {
  }

  public AmmeterType(String type, Double price)
  {
    this.type = type;
    this.price = price;
  }

  public AmmeterType(String type, Double price, Set ammeters)
  {
    this.type = type;
    this.price = price;
    this.ammeters = ammeters;
  }

  public Integer getTid()
  {
    return this.tid;
  }

  public void setTid(Integer tid) {
    this.tid = tid;
  }

  public String getType() {
    return this.type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public Double getPrice() {
    return this.price;
  }

  public void setPrice(Double price) {
    this.price = price;
  }

  public Set getAmmeters() {
    return this.ammeters;
  }

  public void setAmmeters(Set ammeters) {
    this.ammeters = ammeters;
  }
}

/* Location:           C:\Users\kobe2\Desktop\sshtesthqd\WEB-INF\classes\
 * Qualified Name:     com.py.beans.AmmeterType
 * JD-Core Version:    0.5.3
 */