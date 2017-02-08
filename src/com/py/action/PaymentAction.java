package com.py.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.py.beans.Ammeter;
import com.py.beans.Customer;
import com.py.beans.Electric;
import com.py.beans.Payment;
import com.py.biz.AmmeterBiz;
import com.py.biz.CustomerBiz;
import com.py.biz.ElectricBiz;
import com.py.biz.PaymentBiz;

@SuppressWarnings("serial")
public class PaymentAction extends ActionSupport {
	private String did;
	private AmmeterBiz ammeterBiz;
	private Double charge;
	private PaymentBiz paymentBiz;
	private ElectricBiz electricBiz;
	private CustomerBiz customerBiz;

	public CustomerBiz getCustomerBiz() {
		return customerBiz;
	}

	public void setCustomerBiz(CustomerBiz customerBiz) {
		this.customerBiz = customerBiz;
	}

	public AmmeterBiz getAmmeterBiz() {
		return this.ammeterBiz;
	}

	public void setAmmeterBiz(AmmeterBiz ammeterBiz) {
		this.ammeterBiz = ammeterBiz;
	}

	public Double getCharge() {
		return this.charge;
	}

	public void setCharge(Double charge) {
		this.charge = charge;
	}

	public ElectricBiz getElectricBiz() {
		return this.electricBiz;
	}

	public void setElectricBiz(ElectricBiz electricBiz) {
		this.electricBiz = electricBiz;
	}

	public PaymentBiz getPaymentBiz() {
		return this.paymentBiz;
	}

	public void setPaymentBiz(PaymentBiz paymentBiz) {
		this.paymentBiz = paymentBiz;
	}

	public String getDid() {
		return this.did;
	}

	public void setDid(String did) {
		this.did = did;
	}

	public String execute() throws Exception {
		return super.execute();
	}

	// 获取当前系统时间
	Date now = new Date();
	// 转换时间格式为年-月-日的方法
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String datetime = sdf.format(now);

	// 获取今天为止的余额
	public String getRemain() throws Exception {
		System.out.println(this.did);
		Date d = null;
		// 通过did和时间倒序排列
		List p = this.paymentBiz.findByDidAndOrderByDateDeasc(this.did);
		if ((p.size() != 0) && (p != null)) {
			d = ((Payment) p.get(0)).getDates();
		}
		
		System.out.println(((Payment) p.get(0)).getDates()+"888888888");
		// 从payment表中获取上一次交费后的余额
		Double remain = ((Payment) p.get(0)).getRemain();

		System.out.println(remain);
		// 查找electric表，并将e_day遍历后相加付给e_days
		List e = this.electricBiz.findByDidAndDate(this.did, d);
		double e_days = 0.0D;
		if ((e.size() > 0) && (!(e.isEmpty()))) {
			for (int i = 0; i < e.size(); ++i) {
				e_days += ((Electric) e.get(i)).getEDay().doubleValue();
			}
		}
		String toller = ((Payment) p.get(0)).getToller();
		// 上一次交费的余额减去期间的花费得出现在的余额
		remain = Double.valueOf(remain.doubleValue() - e_days);
		ActionContext.getContext().getSession().put("remain", remain);
		ActionContext.getContext().getSession().put("payment", p);
		ActionContext.getContext().getSession().put("toller", toller);
		return "success";
	}

	// 充值
	public String recharge() throws Exception {
		//System.out.println(this.charge);
		// 获取减去今天之前的花费后的余额
		Double remain = (Double) ActionContext.getContext().getSession()
				.get("remain");
		//System.out.println(remain);
		// 从前台获取充值的数额加上余额就是现在的余额
		remain = Double.valueOf(remain.doubleValue()
				+ this.charge.doubleValue());
		ActionContext.getContext().getSession().put("remain", remain);
		String toller = (String) ActionContext.getContext().getSession()
				.get("toller");

		// 更新payment表、，分别插入一条信息
		Payment parmaPayment = new Payment();
		parmaPayment.setDid(did);
		parmaPayment.setMoney(charge);
		parmaPayment.setRemain(remain);
		parmaPayment.setToller(toller);
		parmaPayment.setDates(now);
		this.paymentBiz.insert(parmaPayment);

		// 更新 ammeter表 ，插入一条信息

		
			Ammeter a = (Ammeter) ActionContext.getContext().getSession()
				.get("ammeter");
			/*parmaAmmeter.setAddress(did);
		parmaAmmeter.setAddress(a.getAddress());
		parmaAmmeter.setRemain(remain);
		parmaAmmeter.setAmmeterType(a.getAmmeterType());*/
			System.out.println(a.getDid());
		Ammeter parmaAmmeter =this.ammeterBiz.findByDid(a.getDid());//持久化对象
		parmaAmmeter.setRemain(remain);
		ammeterBiz.updateRemain(parmaAmmeter);

		// 查询ammeter表
		Ammeter ammeter = ammeterBiz.findByAddress(a.getAddress());
		ActionContext.getContext().getSession().put("ammeter", ammeter);

		// 查询customer表

		// Customer customer = customerBiz.findByAddress(a.getAddress());
		Customer customer = customerBiz.findByAddress(a.getAddress());
		return "success";
	}

	
	// 根据did查询payment表里的充值记录
	public String getPayRecord() throws Exception {
		//System.out.println(did + "999999");
		List<Payment> payment = paymentBiz.findByDidAndOrderByDateDeasc(did);
		//System.out.println(payment.get(0).getMoney());
		ActionContext.getContext().getSession().put("payment", payment);

		return "success";
	}

}