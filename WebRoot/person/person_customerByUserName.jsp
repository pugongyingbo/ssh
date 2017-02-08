<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'person_customerBySid.jsp' starting page</title>
    
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
   <h3>用户名登录</h3>
    <form action="logbyusername" method="post" role="form" class="form-horizontal">
    
    <div class="form-group">
   <label  class="col-sm-2 control-label">请输入用户名</label>
   <div class="col-sm-6">
   <input type="text" class="form-control"  name ="username" />
   </div>
   </div>
   
    <div class="form-group">
   <label  class="col-sm-2 control-label">请输入密码</label>
   <div class="col-sm-6">
   <input type="password" class="form-control"  name ="password" />
   </div>
   </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
   <input type="hidden" value="2" name="role.rid"> 
    <input type="submit" value="登录" class="btn btn-primary">
    <input type="reset" value="重置" class="btn btn-primary">
    </div>
    </div>
    </form>
  </body>
</html>
