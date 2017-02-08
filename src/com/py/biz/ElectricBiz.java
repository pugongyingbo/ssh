package com.py.biz;

import com.py.beans.Electric;
import java.util.Date;
import java.util.List;

public abstract interface ElectricBiz
{
  public abstract List<Electric> findByDidAndDate(String paramString, Date paramDate);
}

/* Location:           C:\Users\kobe2\Desktop\sshtesthqd\WEB-INF\classes\
 * Qualified Name:     com.py.biz.ElectricBiz
 * JD-Core Version:    0.5.3
 */