package com.py.biz;

import com.py.beans.Ammeter;
import com.py.dao.AmmeterDao;

public interface AmmeterBiz {
	Ammeter findByAddress(String paramString);

	Double findRemainByDid(String paramString);

	// 新增一个地址信息
	String addANewAddress(Ammeter ammeter);
	// 插入一条记录
	// void insert(Ammeter parmaAmmeter);
	public Ammeter findByDid(String Did);
	
	void updateRemain(Ammeter ammeter);
}
