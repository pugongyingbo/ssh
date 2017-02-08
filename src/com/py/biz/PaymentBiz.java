package com.py.biz;

import java.util.List;

import com.py.beans.Payment;

public abstract interface PaymentBiz
{
  public abstract List<Payment> findByDidAndOrderByDateDeasc(String paramString);
//插入操作
    void insert(Payment paramPayment);
  
   List<Payment> findPaymentByDid(String did);
}

/* Location:           C:\Users\kobe2\Desktop\sshtesthqd\WEB-INF\classes\
 * Qualified Name:     com.py.biz.PaymentBiz
 * JD-Core Version:    0.5.3
 */