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

	//��ѯȫ����Ϣ
	public List<Info> finAll() {
		
		return infoDao.findAll();
	}
	//ͨ��id���ҵ�����Ϣ
	public Info findById(Integer id) {
		return infoDao.findById(id);
	}

	//ͨ��id��ɾ����������
	public void deleteOne(Integer id) {
		
		infoDao.delete(id);
	}

	//����������Ϣ
	public void addinformation(Info infos) {
		System.out.println("66666666");
		infoDao.insert(infos);
	}
	//���µ�����Ϣ
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

	//�����Ͳ�����Ϣ

	

}
