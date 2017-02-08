package com.py.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.py.beans.Info;
import com.py.biz.InfoBiz;
import com.py.util.PageBean;

public class InfoAction extends ActionSupport implements ModelDriven<Info> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Info infos = new Info();
	private InfoBiz infoBiz;
	
	//获取当前系统时间
	Date now=new Date();
	//转换时间格式为年-月-日的方法
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	String datetime=sdf.format(now);
	
	//调用pagebean 收线先进行实例化
	private PageBean pb =new PageBean();
	//然后调用pagebean里面的方法，必须前面定义了接受值才能调用pb.方法
	 String datetime2=pb.toString();
	
	//通过继承的ModelDriven<Info> 方法 来获取jsp页面传过来的值
	public Info getModel() {
		return infos;
	}
	

	public void setInfoBiz(InfoBiz infoBiz) {
		this.infoBiz = infoBiz;
	}
	public InfoBiz getInfoBiz() {
		return infoBiz;
	}
	
	
	

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}
	
	
	//查询全部信息
	public String findInfo() throws Exception {
		//查询到的结果是一个信息的集合，用list来存放
		List<Info> list = infoBiz.finAll();
		//把查询到的结果放到 list中去，以便jsp页面能获取到
		ActionContext.getContext().put("list", list);
		return SUCCESS;
	}
	//通过id来删除单条信息
	public String delInfo() throws Exception {
		infoBiz.deleteOne(infos.getIid());
		return SUCCESS;
	}
	//新增信息
	public String addinformation() throws Exception {
		//把获取到的系统时间放入infos对象中
		infos.setDatetime(datetime);
		//添加信息
		infoBiz.addinformation(infos);
		return SUCCESS;
	}
    //通过ID查找单条
	public String findById() throws Exception {
		//返回的结果是info类型的单条数据
		Info info = infoBiz.findById(infos.getIid());
		//把查询到的结果放到 info中去，以便jsp页面能获取到
		ActionContext.getContext().put("info", info);
		return SUCCESS;
	}
	//更新单条数据
	public String updateinformation() throws Exception {
		//把获取到的系统时间放入infos对象中
		infos.setDatetime(datetime);
		//更新数据库
		infoBiz.updateinformation(infos);
		return SUCCESS;
	}
	//根据类型查询新闻
		public String findByType() throws Exception {
			//查询类型1
			List<Info> info1 = infoBiz.findByType("民生新闻");
			//把查询到的结果放到 info1中去，以便jsp页面能获取到
			ActionContext.getContext().put("list1", info1);
			//查询类型2
			List<Info> info2 = infoBiz.findByType("国内新闻");
			ActionContext.getContext().put("list2", info2);
			//查询类型3
			List<Info> info3 = infoBiz.findByType("国际新闻");
			ActionContext.getContext().put("list3", info3);
			return SUCCESS;
		}
	
}
