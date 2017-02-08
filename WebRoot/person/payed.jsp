<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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

<title>My JSP 'payed.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
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
					<th>充值金额</th>
					<th>现在余额</th>
					<th>充值日期</th>
					<th>充值者</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="#session.payment" var="paym">
					<tr>
						<td><s:property value="#paym.money" /></td>
						<td><s:property value="#paym.remain" />
						</td>
						<td><s:property value="#paym.dates" />
						</td>
						<td><s:property value="#paym.toller" />
						</td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</div>
</body>
</html>
