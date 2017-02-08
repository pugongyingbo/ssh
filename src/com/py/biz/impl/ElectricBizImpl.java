package com.py.biz.impl;

import com.py.beans.Electric;
import com.py.biz.ElectricBiz;
import com.py.dao.ElectricDao;
import java.util.Date;
import java.util.List;

public class ElectricBizImpl
  implements ElectricBiz
{
  private ElectricDao electricDao;

  public ElectricDao getElectricDao()
  {
    return this.electricDao;
  }

  public void setElectricDao(ElectricDao electricDao)
  {
    this.electricDao = electricDao;
  }

  public List<Electric> findByDidAndDate(String did, Date date)
  {
    String strHQL = "from Electric e where e.did=? and e.dates>?";

    Object[] params = { did, date };
    return this.electricDao.findByHQL(strHQL, params);
  }
}

/* Location:           C:\Users\kobe2\Desktop\sshtesthqd\WEB-INF\classes\
 * Qualified Name:     com.py.biz.impl.ElectricBizImpl
 * JD-Core Version:    0.5.3
 */