<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>
<frameset rows="10%,*" frameborder="no" border="0" framespacing="0">
<frame scrolling="no" src="<%=basePath %>worker/wokermenu.jsp" name="menu">

<frameset cols="15%,*" frameborder="no" border="0" framespacing="0">
<frame  scrolling="no" src="<%=basePath %>worker/wokerleft.jsp" name="left" >

<frame  src="<%=basePath %>worker/wokercontent.jsp" name="content" >
</frameset>
</frameset>

<noframes><body>
</body>
</noframes></html>
