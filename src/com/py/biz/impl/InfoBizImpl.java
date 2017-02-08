package com.py.biz.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.py.beans.Info;
import com.py.beans.Users;
import com.py.biz.InfoBiz;
import com.py.dao.InfoDao;
import com.py.dao.impl.InfoDaoImpl;

public class InfoBizImpl implements InfoBiz {
	private InfoDao infoDao;
	
	
	public InfoDao getInfoDao() {
		return infoDao;
	}


	public void setInfoDao(InfoDao infoDao) {
		this.infoDao = infoDao;
	}

	//查询全部信息
	public List<Info> finAll() {
		
		return infoDao.findAll();
	}
	//通过id查找单条信息
	public Info findById(Integer id) {
		return infoDao.findById(id);
	}

	//通过id来删除单条数据
	public void deleteOne(Integer id) {
		
		infoDao.delete(id);
	}

	//新增单条信息
	public void addinformation(Info infos) {
		System.out.println("66666666");
		infoDao.insert(infos);
	}
	//更新单条信息
	public void updateinformation(Info infos) {
		System.out.println("66666666");
		infoDao.update(infos);
	}


	public List<Info> findByType(String string) {
		System.out.println("66666");
		
		String strHQL="from Info i where i.informationtype=?";
		Object[] params={string};
		System.out.println(params.toString());
		List<Info> list=infoDao.findByHQL(strHQL, params);
		if(list.size()==0){
			return null;
		}
			return list;
		}

	//按类型查找信息

	

}
