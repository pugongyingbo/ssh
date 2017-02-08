package com.py.dao.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.py.dao.GenericDao;
import com.py.util.PageBean;

public class AGenericHibernateDao <T extends Serializable, ID extends Serializable >
		extends HibernateDaoSupport implements GenericDao<T, ID>{
	
	private Class<T> persistentClass;

	@SuppressWarnings("unchecked")
	public AGenericHibernateDao() {
		this.persistentClass = (Class<T>) ((ParameterizedType) this.getClass()
				.getGenericSuperclass()).getActualTypeArguments()[0];
	}
	
	@SuppressWarnings("unchecked")
	public ID insert(T entity) {
		return (ID) this.getHibernateTemplate().save(entity);
	}
	public T findById(ID id) {
		return this.getHibernateTemplate().get(persistentClass, id);
	}


	public void delete(ID id) {
		this.getHibernateTemplate().delete(findById(id));
	}

	public void update(T entity) {
		this.getHibernateTemplate().update(this.getHibernateTemplate().merge(entity));
	}


	public List<T> findAll() {
		return this.getHibernateTemplate().loadAll(persistentClass);
	}

	@SuppressWarnings("unchecked")
	public List<T> findByHQL(String strHQL, Object[] params) {
//		Query query = super.getSession().createQuery(strHQL);
//		if(params!=null&&params.length>0){
//			for (int i = 0; i < params.length; i++) {
//				query.setParameter(i, params[i]);
//			}
//		}
//	        return query.list();
		List query = this.getHibernateTemplate().find(strHQL, params);
		return query;
	}
	
	public PageBean findByPage(final int currentPage, final int pageSize, final String strHQL,
			final Object[] params) {
		return this.getHibernateTemplate().execute(
				new HibernateCallback<PageBean>() {
					public PageBean doInHibernate(Session arg0)
							throws HibernateException, SQLException {
						PageBean bean = new PageBean();
						Query qu = arg0.createQuery(strHQL);
						if(params!=null&&params.length>0){
						for (int i = 0; i < params.length; i++) {
							qu.setParameter(i, params[i]);
						}
						}
						qu.setFirstResult((currentPage - 1) * pageSize);
						qu.setMaxResults(pageSize);
						bean.setData(qu.list());
						qu = arg0.createQuery("select count(*) "
								+ strHQL.substring(strHQL.toLowerCase()
										.indexOf("from")));
						if(params!=null&&params.length>0){
						for (int j = 0; j < params.length; j++) {
							qu.setParameter(j, params[j]);
						}
						}
						bean.setTotalRows(Integer.parseInt(qu.uniqueResult()
								.toString()));
						bean.setCurrentPage(currentPage);
						bean.setPageSize(pageSize);
						return bean;
					}
				});
	}


	public void bulkUpdate(String strHQL, Object[] params) {
		// TODO Auto-generated method stub
		
	}
	@Resource(name="sessionFactory")
	public void setSuperSessionFactory(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}
	public T insertO(T entity) {
		return (T) this.getHibernateTemplate().save(this.getHibernateTemplate().merge(entity));
	}

	  public T findByAddress(T entity)
	  {
	    return getHibernateTemplate().get(this.persistentClass, entity);
	  }
	
}
