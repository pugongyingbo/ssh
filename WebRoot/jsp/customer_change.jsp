<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'information-add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link href="css/dashboard.css" rel="stylesheet">
<script src="js/ie-emulation-modes-warning.js"></script>
  </head>
  
  <body>
  
<form method="post" id="update" action="update" class="form-horizontal" role="form">
  
<div class="form-group">
    <label  class="col-sm-2 control-label"></label>
    <div class="col-sm-5">
<input readonly="readonly" type="hidden" id="cid" name="cid" value="<s:property value="#customer.cid"/>" >
    </div>
    </div>

    <div class="form-group">
   <label  class="col-sm-2 control-label">姓名  </label>
   <div class="col-sm-6">
<input  type="text" id="name" name="name" value="<s:property value="#customer.name"/>" >
   </div>
   </div>
   <div class="form-group">
    <label  class="col-sm-2 control-label">地址</label>
    <div class="col-sm-6">
<input type="text" id="address" name="address" value="<s:property value="#customer.address"/>" >   
    </div>
    </div>
    <div class="form-group">
   <label  class="col-sm-2 control-label">电话</label>
   <div class="col-sm-6">
<input type="text" id="tel" name="tel" value="<s:property value="#customer.tel"/>" >
   </div>
   </div>
			<div class="form-group">
          <div class="col-sm-offset-2 col-sm-6">
				
						<input type="submit" class="btn btn-primary" value="确认修改">
						
						<input type="reset" class="btn btn-primary" value="全部重写">
					</div>
					</div>
				</form>
  </body>
</html>
