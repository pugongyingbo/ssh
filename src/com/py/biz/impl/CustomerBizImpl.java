package com.py.biz.impl;

import com.py.beans.Customer;
import com.py.biz.CustomerBiz;
import com.py.dao.CustomerDao;

import java.util.List;

public class CustomerBizImpl
  implements CustomerBiz
{
  private CustomerDao customerDao;

  public CustomerDao getCustomerDao()
  {
    return this.customerDao;
  }

  public void setCustomerDao(CustomerDao customerDao)
  {
    this.customerDao = customerDao;
  }
  //客户登录
  public Customer loginBySidAndName(Customer customer)
  {
	  
    String strHQL = "from Customer c where c.sid=? and c.name=?";
    String[] params = { customer.getSid(), customer.getName() };

    return ((Customer)this.customerDao.findByHQL(strHQL, params).get(0));
  }
  //查找客户
  public Customer findByCid(String cid)
  {
    return ((Customer)this.customerDao.findById(cid)); }

  public List<Customer> listAll() {
    return this.customerDao.findAll();
  }
//修改客户
  public void update(Customer customer)
  {
    this.customerDao.update(customer);
  }
//查找客户
public Customer findByAddress(String address) {	
	String hql="from Customer c where c.address=?";
	Object[] params={address};
	List<Customer> list=this.customerDao.findByHQL(hql, params);
	if(list.size()!=0){
		return list.get(0);
	}
	return null;
}
//删除一条客户信息
public void deleteOne(String cid) {
	  this.customerDao.delete(cid);
	
}

}
