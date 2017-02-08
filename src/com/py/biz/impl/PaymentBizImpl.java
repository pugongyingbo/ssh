package com.py.biz.impl;

import com.py.beans.Payment;
import com.py.biz.PaymentBiz;
import com.py.dao.PaymentDao;

import java.util.List;

public class PaymentBizImpl implements PaymentBiz {
	private PaymentDao paymentDao;

	public PaymentDao getPaymentDao() {
		return this.paymentDao;
	}

	public void setPaymentDao(PaymentDao paymentDao) {
		this.paymentDao = paymentDao;
	}

	public List<Payment> findByDidAndOrderByDateDeasc(String did) {
		String strHQL = "from Payment p where p.did=? order by  dates desc";
		Object[] params = { did };
		return this.paymentDao.findByHQL(strHQL, params);
	}

	// 向payment表中的插入操作
	/*
	 * public void insert(Payment payment) { String strHQL = ""; }
	 */

	public List<Payment> findPaymentByDid(String did) {
		String strHQL = "from Payment p where p.did=?";
		Object[] params = { did };
		return this.paymentDao.findByHQL(strHQL, params);
	}

	public void insert(Payment paramPayment) {
		paymentDao.insert(paramPayment);

	}

}

/*
 * Location: C:\Users\kobe2\Desktop\sshtesthqd\WEB-INF\classes\ Qualified Name:
 * com.py.biz.impl.PaymentBizImpl JD-Core Version: 0.5.3
 */