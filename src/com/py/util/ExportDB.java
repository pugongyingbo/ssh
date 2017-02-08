package com.py.util;

import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

public class ExportDB {

	
	public static void main(String[] args) {
		Configuration config = new Configuration().configure();
		SchemaExport se = new SchemaExport(config);
		se.create(true,true);
		
	}
	
}
