<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'logBySidSucc.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
<link href="css/dashboard.css" rel="stylesheet">
<script src="js/ie-emulation-modes-warning.js"></script>

  </head>
  
  <body>
  <form class="form-horizontal" role="form">
  <div class="form-group">
  <label class="col-sm-2 control-label">身份证号：</label>  
   <label class="col-sm-4 control-label"> <s:property value="#session.customer.sid"/></label>  
  </div>
  <div class="form-group">
  <label class="col-sm-2 control-label">姓名：</label>  
   <label class="col-sm-4 control-label"> <s:property value="#session.customer.name"/></label>  
  </div>
  <div class="form-group">
   <label class="col-sm-2 control-label"> 电表号：</label>  
   <label class="col-sm-4 control-label"> <s:property value="#session.ammeter.did"/></label>  
  </div>
  <div class="form-group">
  <label class="col-sm-2 control-label">地址：</label>  
   <label class="col-sm-4 control-label"> <s:property value="#session.ammeter.address"/></label>  
  </div>
  <div class="form-group">
  <label class="col-sm-2 control-label"> 余额：</label>  
   <label class="col-sm-4 control-label"> <s:property value="#session.ammeter.remain"/></label>  
  </div>
  <div class="form-group">
  <div class="col-sm-offset-2 col-sm-4">
 <a href="customerremain?did=<s:property value="#session.ammeter.did"/>"> 查询余额</a>
 <a href="customerpayrecord?did=<s:property value="#session.ammeter.did"/>"> 缴费记录</a>
 </div>
 </div>
</form>
  </body>
</html>
