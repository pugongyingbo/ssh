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
    <h3>身份证登录</h3>
    <form action="logbysid" method="post" role="form" class="form-horizontal">

    <div class="form-group">
   <label  class="col-sm-2 control-label">请输入身份证号码</label>
   <div class="col-sm-6">
   <input type="text" class="form-control"  name ="sid" />
   </div>
   </div>
      <div class="form-group">
   <label  class="col-sm-2 control-label">请输入真实姓名</label>
   <div class="col-sm-6">
   <input type="text" class="form-control"  name ="name" />
   </div>
   </div>
    <div class="form-group">
    <div class="col-sm-offset-2 col-sm-6">
     <input class="btn btn-primary" type = "submit" value="登录"/>
     <input class="btn btn-primary" type = "button" value="重置"/>
     </div>
     </div>
    </form>
  </body>
</html>
