package com.py.beans;

import java.io.Serializable;

public class Users
  implements Serializable
{
  private Integer id;
  private Role role;
  private String username;
  private String password;
  private String cid;

  public Users()
  {
  }

  public Users(Role role, String username, String password)
  {
    this.role = role;
    this.username = username;
    this.password = password;
  }

  public Users(Role role, String username, String password, String cid)
  {
    this.role = role;
    this.username = username;
    this.password = password;
    this.cid = cid;
  }

  public Integer getId()
  {
    return this.id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public Role getRole() {
    return this.role;
  }

  public void setRole(Role role) {
    this.role = role;
  }

  public String getUsername() {
    return this.username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getPassword() {
    return this.password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getCid() {
    return this.cid;
  }

  public void setCid(String cid) {
    this.cid = cid;
  }
}

/* Location:           C:\Users\kobe2\Desktop\sshtesthqd\WEB-INF\classes\
 * Qualified Name:     com.py.beans.Users
 * JD-Core Version:    0.5.3
 */