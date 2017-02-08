package com.py.biz;

import com.py.beans.Users;
import java.util.List;

public abstract interface UsersBiz
{
   Users logByUsernameAndPwd(Users paramUsers);

   List<Users> listAll();

void deleteUserById(Integer id);

Users findById(Integer id);

void updateUser(Users u);
}

