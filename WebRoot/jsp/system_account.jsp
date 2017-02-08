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
    
    <title>My JSP 'system_account.jsp' starting page</title>
    
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

     <div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
							     <th>编号</th>
								 <th>姓名</th>
								 <th>角色</th>
								 <th>客户ID</th>
								 <th>操作</th>
								 
							</tr>
						</thead>
						<tbody>
						  <s:iterator value="#request.list" var="user">
							<tr>
							 <td ><s:property value="#user.id"/></td>
								<td><s:property value="#user.username"/></td>
								<td><s:property value="#user.role.role"/></td>
								<td><s:property value="#user.Cid"/></td>
								<td >
	            	<a href="userInfo?users.id=<s:property value="#user.id"/>">查看</a>
	            	&emsp;&emsp;
	            	<s:if test="#user.cid==null">
		            	<a href="toUserInfo?users.id=<s:property value="#user.id"/>">编辑</a>
	            	</s:if>
	            	<s:else>
	            		<a href="javascript:return false;" style="color:#C0C0C0" title="无权限编辑">编辑</a>
	            	</s:else>
	            </td>                       
							
							</tr>
				         </s:iterator> 
						</tbody>
					</table>
				</div>
</body>
</html>
