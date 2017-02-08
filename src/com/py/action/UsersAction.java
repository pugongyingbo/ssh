package com.py.action;

import java.sql.SQLException;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.py.beans.Ammeter;
import com.py.beans.AmmeterType;
import com.py.beans.Customer;
import com.py.beans.Users;
import com.py.biz.AmmeterBiz;
import com.py.biz.CustomerBiz;
import com.py.biz.UsersBiz;
import com.py.util.DealwithString;

public class UsersAction extends ActionSupport implements ModelDriven<Users> {
	private UsersBiz usersBiz;
	private CustomerBiz customerBiz;
	private AmmeterBiz ammeterBiz;

	// 5个地址信息
	private String location_p;

	public String getLocation_p() {
		return location_p;
	}

	public void setLocation_p(String location_p) {
		this.location_p = location_p;
	}

	public String getLocation_c() {
		return location_c;
	}

	public void setLocation_c(String location_c) {
		this.location_c = location_c;
	}

	public String getLocation_a() {
		return location_a;
	}

	public void setLocation_a(String location_a) {
		this.location_a = location_a;
	}

	public String getLocation_4() {
		return location_4;
	}

	public void setLocation_4(String location_4) {
		this.location_4 = location_4;
	}

	public String getLocation_5() {
		return location_5;
	}

	public void setLocation_5(String location_5) {
		this.location_5 = location_5;
	}

	public AmmeterType getAmmeterType() {
		return ammeterType;
	}

	public void setAmmeterType(AmmeterType ammeterType) {
		this.ammeterType = ammeterType;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	private String location_c;
	private String location_a;
	private String location_4;
	private String location_5;
	private AmmeterType ammeterType;

	private Users users = new Users();

	public AmmeterBiz getAmmeterBiz() {
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

	public UsersBiz getUsersBiz() {
		return this.usersBiz;
	}

	public void setUsersBiz(UsersBiz usersBiz) {
		this.usersBiz = usersBiz;
	}

	public Users getModel() {
		return this.users;
	}

	public String execute() throws Exception {
		return super.execute();
	}

	public String logByUsernameAndPwd() throws Exception {
		// System.out.println(this.users.getUsername());
		// System.out.println(this.users.getPassword());
		// System.out.println(this.users.getRole());
		Users u = this.usersBiz.logByUsernameAndPwd(this.users);
		// System.out.println(u.getCid());
		Customer c = this.customerBiz.findByCid(u.getCid());
		// System.out.println(c.getAddress());
		Ammeter ammeter = this.ammeterBiz.findByAddress(c.getAddress());
		ActionContext.getContext().put("ammeter", ammeter);
		ActionContext.getContext().put("customer", c);
		return "success";
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	String msg = "";

	// 登录检查
	public String login() throws SQLException {
		Users u = this.usersBiz.logByUsernameAndPwd(this.users);
		if (u.getUsername().equals("") || u.getPassword().equals("")) {
			return "toLogin";
		} else if
		// 判断有无此人

		(usersBiz.logByUsernameAndPwd(u).getId() != 0) {
			u = usersBiz.logByUsernameAndPwd(u);
			int n = -1;
			if (u == null) {
				msg = "登录失败，请重新登录";
			} else {
				ActionContext.getContext().getSession().put("curr_user", u);
				n = usersBiz.logByUsernameAndPwd(u).getRole().getRid();
				switch (n) {
				case 1:
					msg = "toAdmin";
					break;
				case 3:
					msg = "toMaster";
					break;
				case 2:
					msg = "toCustomer";
					break;
				default:
					ActionContext.getContext().put("logmsg", "登录失败，请重新登录");
				}
			}
		}
		return msg;
	}

	// 退出
	public String logout() {
		ActionContext.getContext().getSession().put("curr_user", null);
		return "toLogin";
	}

//	public String adminlog() throws Exception {
//		Users u = this.usersBiz.logByUsernameAndPwd(this.users);
//		if (u == null) {
//			ActionContext.getContext().put("logmsg", "登录失败，请重新登录");
//			return "login";
//		}
//		return "success";
//	}

	public String listAllUsers() throws Exception {
		@SuppressWarnings("rawtypes")
		List list = this.usersBiz.listAll();
		ActionContext.getContext().put("list", list);
		return "success";
	}
	public String deleteUser(){
		  this.usersBiz.deleteUserById(users.getId());
		  return "success";
	  }
	  public String userInfo(){
		  Users u = this.usersBiz.findById(users.getId());
		  if(u.getCid()!=null){
			 Customer c = this.customerBiz.findByCid(u.getCid());
			 ActionContext.getContext().put("customer", c);
		  }
		  ActionContext.getContext().put("userInfo", u);
		  return "success";
	  }
	  
	  public String changeUserInfo(){
		  Users u = this.usersBiz.findById(users.getId());
		  u.setRole(users.getRole());
		  u.setUsername(users.getUsername());
		  this.usersBiz.updateUser(u);
		  return "success";
	  }
	// 新增地址信息
	public String addNewAddress() throws Exception {
		// 获取前端页面的地址信息
		// System.out.println(location_p);
		// System.out.println(location_c);
		// System.out.println(location_a);
		// System.out.println(location_4);
		// System.out.println(location_5);
		// System.out.println(ammeterType.getTid());

		// 用工具类里的函数进行拼接处理
		String[] str = { location_p, location_c, location_a, location_4,
				location_5 };
		String S = DealwithString.merge(str);
		// System.out.println(S);

		Ammeter ammeter = new Ammeter();
		// 然后添加到数据库里
		ammeter.setAddress(S);
		ammeter.setAmmeterType(ammeterType);
		ammeter.setRemain(0.00);

		String s = ammeterBiz.addANewAddress(ammeter);
		// System.out.println(s);
		if (s == null) {
			ActionContext.getContext().put("logmsg", "新增地址失败");
			return ERROR;
		}
		return SUCCESS;
	}

}

/*
 * Location: C:\Users\kobe2\Desktop\sshtesthqd\WEB-INF\classes\ Qualified Name:
 * com.py.action.UsersAction JD-Core Version: 0.5.3
 */