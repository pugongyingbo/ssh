package com.py.biz.impl;

import com.py.beans.Role;
import com.py.beans.Users;
import com.py.biz.UsersBiz;
import com.py.dao.UsersDao;
import java.util.List;

public class UsersBizImpl
  implements UsersBiz
{
  private UsersDao usersDao;

  public UsersDao getUsersDao()
  {
    return this.usersDao;
  }

  public void setUsersDao(UsersDao usersDao) {
    this.usersDao = usersDao;
  }

  public Users logByUsernameAndPwd(Users users) {
    String strHQL = "from Users u where u.username=? and u.password=? and u.role.rid=?";
    Object[] params = { users.getUsername(), users.getPassword(), users.getRole().getRid() };
    List list = this.usersDao.findByHQL(strHQL, params);
    if (list.size() == 0) {
      return null;
    }
    return ((Users)this.usersDao.findByHQL(strHQL, params).get(0));
  }

  public List<Users> listAll() {
    return this.usersDao.findAll();
  }

public void deleteUserById(Integer id) {
	// TODO Auto-generated method stub
	
}

public Users findById(Integer id) {
	// TODO Auto-generated method stub
	return this.usersDao.findById(id);
}

public void updateUser(Users u) {
	// TODO Auto-generated method stub
	
}
}

/* Location:           C:\Users\kobe2\Desktop\sshtesthqd\WEB-INF\classes\
 * Qualified Name:     com.py.biz.impl.UsersBizImpl
 * JD-Core Version:    0.5.3
 */