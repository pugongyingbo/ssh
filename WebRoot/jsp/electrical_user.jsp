<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'electrical_user.jsp' starting page</title>
    
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
  
  <body >
	
	 <div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								 <th>用户编号</th>
								 <th>身份证号</th>
								 <th>姓名</th>
								 <th>地理位置</th>
								 <th>联系电话</th>
								 
								 <th>删除</th>
								 <th>编辑</th>
								 
							</tr>
						</thead>
						<tbody>
						  <s:iterator value="#list" var="customer">
				<tr>
				<td><s:property value="#customer.cid"/></td>
				<td><s:property value="#customer.sid"/></td>
				<td><s:property value="#customer.name"/></td>
				<td><s:property value="#customer.address"/></td>
				<td><s:property value="#customer.tel"/></td>
				
					
				<td>
					<a href="delCustomer?cid=<s:property value="#customer.cid"/>"
							target="content" >删除</a>
					</td>
					<td>
						<a href="findByCid?cid=<s:property value="#customer.cid"/>"
							target="content">编辑</a>
				</tr>
			</s:iterator> 
						</tbody>
					</table>
				</div>
  </body>
</html>
