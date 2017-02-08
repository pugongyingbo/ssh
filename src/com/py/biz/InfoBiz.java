package com.py.biz;

import java.util.List;

import com.py.beans.Info;

public interface InfoBiz {
	//查询全部新闻资讯
	List<Info> finAll();
	//单个删除
	void deleteOne(Integer id);
	//新增信息
	void addinformation(Info infos);
	//通过id查找单条数据
	Info findById(Integer id);
	//修改信息
	void updateinformation(Info infos);
	//通过类型查询
	List<Info> findByType(String string);
	
}

