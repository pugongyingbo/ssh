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
		
		<title>信息页面</title>
	   
		<style>
a {text-decoration: none}
</style>
		<link href="style/stylet.css" rel="stylesheet" type="text/css">
		
	</head>
	<body>
		<div id="personalpaying">
			<table class="table" align="center">
				<tr class="table_header">
					<td width="120px">
						<div align="center" class="STYLE3">
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
				</tr>
				<s:iterator value="#list" var="info">
					<tr class="row2">
						<td>
							<s:property value="#info.informationtype" />
						</td>
						<td>
							<a href="findById2?iid=<s:property value="#info.iid"/>"><s:property
									value="#info.topic" />
							</a>
						</td>
						<td>
							<s:property value="#info.datetime" />
						</td>
						<td>
							<s:property value="#info.author" />
						</td>
					</tr>
				</s:iterator>
			</table>

		</div>

	</body>
</html>
