package com.py.dao;

import com.py.beans.Customer;

public interface CustomerDao extends GenericDao<Customer, String> {
	public Customer findByAddress(String paramT);
}
