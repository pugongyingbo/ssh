<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>信息管理页面</title>

		<style>
a {text-decoration: none}
</style>
		<link href="style/stylet.css" rel="stylesheet" type="text/css">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
    	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	
	</head>

	<body link="#73A822" alink="#73A822" vlink="#73A822">
		<table class="table" align="center">
			<tr class="table_header">
				<td>
					<div align="center" class="STYLE3">
						编号
					</div>
				</td>
				<td width="120px">
				<div align="center" class="STYLE3" >
						资讯类型
					</div>
				</td>
				<td width="150px">
					<div align="center" class="STYLE3">
						主题
					</div>
				</td>
				<td width="120px">
				<div align="center" class="STYLE3">
						时间
					</div>
				</td>
				<td width="80px">
				<div align="center" class="STYLE3">
						作者
					</div>
				</td>
				<td>
					<div align="center" class="STYLE3">
						删除
					</div>
				</td>
				<td>
					<div align="center" class="STYLE3">
						编辑
					</div>
				</td>
			</tr>
			<s:iterator value="#list" var="info">
				<tr class="row2">
					<td>
						<s:property value="#info.iid" />
					</td>
					<td>
						<s:property value="#info.informationtype" />
					</td>
					<td>
						<s:property value="#info.topic" />
					</td>
					<td>
						<s:property value="#info.datetime" />
					</td>
					<td>
						<s:property value="#info.author" />
					</td>
					<td  width="30px">
						<a href="delInfo?iid=<s:property value="#info.iid"/>"
							target="content" >删除</a>
					</td>
					<td width="30px">
						<a href="findById?iid=<s:property value="#info.iid"/>"
							target="content">编辑</a>
					</td>
				</tr>
			</s:iterator>

		</table>

	</body>
</html>
