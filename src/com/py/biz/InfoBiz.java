package com.py.biz;

import java.util.List;

import com.py.beans.Info;

public interface InfoBiz {
	//��ѯȫ��������Ѷ
	List<Info> finAll();
	//����ɾ��
	void deleteOne(Integer id);
	//������Ϣ
	void addinformation(Info infos);
	//ͨ��id���ҵ�������
	Info findById(Integer id);
	//�޸���Ϣ
	void updateinformation(Info infos);
	//ͨ�����Ͳ�ѯ
	List<Info> findByType(String string);
	
}

