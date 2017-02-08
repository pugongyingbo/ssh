package com.py.dao;

import com.py.util.PageBean;
import java.io.Serializable;
import java.util.List;

public abstract interface GenericDao<T extends Serializable, ID extends Serializable> {
	public abstract ID insert(T paramT);

	public abstract T findById(ID paramID);

	public abstract void delete(ID paramID);

	public abstract void update(T paramT);

	public abstract List<T> findAll();



	public abstract List<T> findByHQL(String paramString,
			Object[] paramArrayOfObject);

	public abstract PageBean findByPage(int paramInt1, int paramInt2,
			String paramString, Object[] paramArrayOfObject);

	public abstract void bulkUpdate(String paramString,
			Object[] paramArrayOfObject);
}

