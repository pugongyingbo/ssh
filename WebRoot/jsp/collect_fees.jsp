<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'collect_fees.jsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

   <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link href="css/dashboard.css" rel="stylesheet">
<script src="js/ie-emulation-modes-warning.js"></script>

<script language="JavaScript" src="js/mydate.js"></script>

  </head>
  
  <body >
  <h3>收费页面>></h3>
  
  <div class="input-group">
  <span class="input-group-addon">购电卡号</span>
  <input type="text" class="form-control" >
  </div><br>
  
  <div class="input-group">
  <span class="input-group-addon">电表编号</span>
  <input type="text" class="form-control" >
  </div>
  <br>
  
  <div class="input-group">
  <span class="input-group-addon">用户姓名</span>
  <input type="text" class="form-control" >
  </div>
  <br>
  
  <div class="input-group">
  <span class="input-group-addon">购电金额</span>
  <input type="text" class="form-control" >
  </div>
  <br>
  
  <div class="input-group">
  <span class="input-group-addon">购电时间</span>
  <input type="text" class="form-control" onfocus="MyCalendar.SetDate(this)" >
  </div>
  <br>
  <div class="input-group">
  <span class="input-group-addon">收费员</span>
  <input type="text" class="form-control" value="${sessionScope.curr_user.username}">
  </div>
  
  
  </body>
</html>
