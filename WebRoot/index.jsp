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

<title>My JSP 'frame.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
<frameset rows="10%,*" frameborder="no" border="0" framespacing="0">
	<frame scrolling="no" src="<%=basePath%>jsp/top.jsp" name="top">

	<frameset cols="18%,*" frameborder="no" border="0" framespacing="0">
		<frame scrolling="no" src="<%=basePath%>jsp/left.jsp" name="left">

		<frame src="<%=basePath%>jsp/main.jsp" name="content">
	</frameset>
</frameset>

<noframes>
	<body>
	</body>
</noframes>
</html>
