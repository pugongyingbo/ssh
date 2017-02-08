package com.py.biz.impl;

import com.py.beans.Ammeter;
import com.py.biz.AmmeterBiz;
import com.py.dao.AmmeterDao;

import java.util.List;

public class AmmeterBizImpl implements AmmeterBiz {
	private AmmeterDao ammeterDao;

	public AmmeterDao getAmmeterDao() {
		return this.ammeterDao;
	}

	public void setAmmeterDao(AmmeterDao ammeterDao) {
		this.ammeterDao = ammeterDao;
	}

	public Ammeter findByAddress(String address) {
		String strHQL = "from Ammeter a where a.address=?";
		String[] params = { address };
		return ((Ammeter) this.ammeterDao.findByHQL(strHQL, params).get(0));
	}

	public Double findRemainByDid(String did) {
		String strHQL = "from Ammeter a where a.did=?";
		Object[] params = { did };
		return ((Ammeter) this.ammeterDao.findByHQL(strHQL, params).get(0))
				.getRemain();
	}

	// 根据Did获取address的信息--ZYF
public Ammeter findByDid(String Did) {
		return ammeterDao.findById(Did);
	}

   //新增一个地址信息
	public String addANewAddress(Ammeter ammeter) {
		return (String) ammeterDao.insert(ammeter);
	}

	public void updateRemain(Ammeter ammeter) {
		ammeterDao.update(ammeter);
		
	}

	
	/*public void insert(Ammeter parmaAmmeter) {
		ammeterDao.insert(parmaAmmeter);

	}*/
}

/*
 * Location: C:\Users\kobe2\Desktop\sshtesthqd\WEB-INF\classes\ Qualified Name:
 * com.py.biz.impl.AmmeterBizImpl JD-Core Version: 0.5.3
 */