package com.py.beans;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Role
  implements Serializable
{
  private Integer rid;
  private String role;
  private String remark;
  private Set userses = new HashSet(0);

  public Role()
  {
  }

  public Role(String role, String remark)
  {
    this.role = role;
    this.remark = remark;
  }

  public Role(String role, String remark, Set userses)
  {
    this.role = role;
    this.remark = remark;
    this.userses = userses;
  }

  public Integer getRid()
  {
    return this.rid;
  }

  public void setRid(Integer rid) {
    this.rid = rid;
  }

  public String getRole() {
    return this.role;
  }

  public void setRole(String role) {
    this.role = role;
  }

  public String getRemark() {
    return this.remark;
  }

  public void setRemark(String remark) {
    this.remark = remark;
  }

  public Set getUserses() {
    return this.userses;
  }

  public void setUserses(Set userses) {
    this.userses = userses;
  }
}

/* Location:           C:\Users\kobe2\Desktop\sshtesthqd\WEB-INF\classes\
 * Qualified Name:     com.py.beans.Role
 * JD-Core Version:    0.5.3
 */