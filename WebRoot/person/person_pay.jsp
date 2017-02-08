<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<title>My JSP 'person_pay.jsp' starting page</title>
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
<div class="container">
      <div class="page-header">
	<a href="person/person_customerBySid.jsp">身份证登录</a>
	<a href="person/person_customerByUserName.jsp">用户名登录</a>
	<p style=color:red>*第一次登录必须使用身份证进行登录</p>
	</div>
	</div>
</body>
</html>
