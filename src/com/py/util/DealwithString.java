package com.py.util;

import java.util.ArrayList;

public class DealwithString {
	
	
	//将字符串按逗号拆分
	public static String[] split(String S){
		
		String[] str = S.split("[,]+");
		return str;
	}
	
	//将字符串拼成一个String语句
	public static String merge(String[] str){
		//String[] strEG = {"天津市","河东区","上杭路","万和里","15-7-404"};
		String S = "";
		
		for(int i=0;i<5;i++){
			S += str[i]+",";
		}
		S = S.substring(0, S.length()-1);
		return S;
	}

	//测试函数
	public static void main(String[] args) {
		String s = "天津市,河东区,上杭路,万和里,15-7-404";
		String[] str = split(s);
		for(String a : str){
			System.out.println(a);
		}
		
		String A = merge(str);
		
		System.out.println("合并为："+A);
	}
	
}
