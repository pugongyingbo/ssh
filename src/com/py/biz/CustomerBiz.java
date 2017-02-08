package com.py.biz;

import com.py.beans.Customer;
import java.util.List;

public abstract interface CustomerBiz
{
   Customer loginBySidAndName(Customer paramCustomer);

   Customer findByCid(String paramString);
   
   Customer findByAddress(String address);

   List<Customer> listAll();

   void update(Customer paramCustomer);

void deleteOne(String cid);
}

/* Location:           C:\Users\kobe2\Desktop\sshtesthqd\WEB-INF\classes\
 * Qualified Name:     com.py.biz.CustomerBiz
 * JD-Core Version:    0.5.3
 */