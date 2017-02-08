package com.py.dao.impl;

import com.py.beans.Info;
import com.py.dao.InfoDao;

public class InfoDaoImpl extends AGenericHibernateDao<Info, Integer> implements InfoDao{
	//注意继承genericdao时候传什么参数，就定义好数据类型
	//impl是用来给dao执行的。具体执行的语句都在agenerichibernatedao中。
}
