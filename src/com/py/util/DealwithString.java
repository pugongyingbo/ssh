package com.py.util;

import java.util.ArrayList;

public class DealwithString {
	
	
	//���ַ��������Ų��
	public static String[] split(String S){
		
		String[] str = S.split("[,]+");
		return str;
	}
	
	//���ַ���ƴ��һ��String���
	public static String merge(String[] str){
		//String[] strEG = {"�����","�Ӷ���","�Ϻ�·","�����","15-7-404"};
		String S = "";
		
		for(int i=0;i<5;i++){
			S += str[i]+",";
		}
		S = S.substring(0, S.length()-1);
		return S;
	}

	//���Ժ���
	public static void main(String[] args) {
		String s = "�����,�Ӷ���,�Ϻ�·,�����,15-7-404";
		String[] str = split(s);
		for(String a : str){
			System.out.println(a);
		}
		
		String A = merge(str);
		
		System.out.println("�ϲ�Ϊ��"+A);
	}
	
}
