package com.py.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.py.beans.Ammeter;
import com.py.beans.Customer;
import com.py.biz.AmmeterBiz;
import com.py.biz.CustomerBiz;
import java.io.PrintStream;
import java.util.List;
import java.util.Map;

public class CustomerAction extends ActionSupport
  implements ModelDriven<Customer>
{
  private CustomerBiz customerBiz;
  private AmmeterBiz ammeterBiz;
  private Customer customer = new Customer();

  public AmmeterBiz getAmmeterBiz()
  {
    return this.ammeterBiz;
  }

  public void setAmmeterBiz(AmmeterBiz ammeterBiz) {
    this.ammeterBiz = ammeterBiz;
  }

  public CustomerBiz getCustomerBiz() {
    return this.customerBiz;
  }

  public void setCustomerBiz(CustomerBiz customerBiz) {
    this.customerBiz = customerBiz;
  }

  public Customer getModel()
  {
    return this.customer;
  }

  public String execute() throws Exception
  {
    return super.execute();
  }

  public String loginBySidAndName()
  {
//    System.out.println(this.customer.getSid());
//    System.out.println(this.customer.getName());
    Customer c = this.customerBiz.loginBySidAndName(this.customer);
  //  System.out.println(c.getAddress());
    Ammeter ammeter = this.ammeterBiz.findByAddress(c.getAddress());
    ActionContext.getContext().getSession().put("customer", c);
    ActionContext.getContext().getSession().put("ammeter", ammeter);

    return "success";
  }
//�г��ͻ�
  public String listAllCustomers() throws Exception {
    List list = this.customerBiz.listAll();
    ActionContext.getContext().put("list", list);
    return "success";
  }
//���ҿͻ�
  public String findByCid() throws Exception {
    Customer c = customerBiz.findByCid(customer.getCid());
    ActionContext.getContext().put("customer", c);
    return SUCCESS;
  }
//ͨ��id��ɾ��������Ϣ
	public String delCustomer() throws Exception {
		customerBiz.deleteOne(customer.getCid());
		return SUCCESS;
	}
	//�޸Ŀͻ�
	public String update() throws Exception{
		//�ѻ�ȡ���ķ��������
		
		//�������ݿ�
		customerBiz.update(customer);		
		return SUCCESS;
	}
	//�г��ͻ�
  public String listAllCutomer()throws Exception{
		List<Customer> list = customerBiz.listAll();
		//System.out.println(list);
		ActionContext.getContext().put("list",list);
		return SUCCESS;
	}
}

