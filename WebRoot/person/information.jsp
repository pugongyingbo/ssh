<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		
		<title>信息</title>
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
								 <th>资讯类型</th>
								 <th>主题</th>
								 <th>时间</th>
								 <th>作者</th>
							</tr>
						</thead>
						<tbody>
						  <s:iterator value="#list1" var="info1">
							<tr>
								<td>
							<s:property value="#info1.informationtype" />
						</td>
						<td>
							<s:property value="#info1.topic" />
						</td>
						<td>
							<s:property value="#info1.datetime" />
						</td>
						<td>
							<s:property value="#info1.author" />
						</td>
							
							</tr>
				         </s:iterator> 
						</tbody>
					</table>
				</div>
				  <div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								 <th>资讯类型</th>
								 <th>主题</th>
								 <th>时间</th>
								 <th>作者</th>
							</tr>
						</thead>
						<tbody>
						  <s:iterator value="#list2" var="info2">
							<tr>
							<td>
							<s:property value="#info2.informationtype" />
						</td>
						<td>
							<s:property value="#info2.topic" />
						</td>
						<td>
							<s:property value="#info2.datetime" />
						</td>
						<td>
							<s:property value="#info2s.author" />
						</td>
							</tr>
				         </s:iterator> 
						</tbody>
					</table>
				</div>
				  <div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								 <th>资讯类型</th>
								 <th>主题</th>
								 <th>时间</th>
								 <th>作者</th>
							</tr>
						</thead>
						<tbody>
						  <s:iterator value="#list3" var="info3">
							<tr>
								<td>
							<s:property value="#info3.informationtype" />
						</td>
						<td>
							<s:property value="#info3.topic" />
						</td>
						<td>
							<s:property value="#info3.datetime" />
						</td>
						<td>
							<s:property value="#info3.author" />
						</td>
							
							</tr>
				         </s:iterator> 
						</tbody>
					</table>
				</div>
		
	</body>
</html>
