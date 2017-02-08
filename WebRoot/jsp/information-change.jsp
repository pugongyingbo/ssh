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
  
<form method="post" id="updateinformation" action="updateinformation" class="form-horizontal" role="form">
  >
 
<div class="form-group">
    <label  class="col-sm-2 control-label"></label>
    <div class="col-sm-5">
<input readonly="readonly" type="hidden" id="iid" name="iid" value="<s:property value="#info.iid"/>" >
    </div>
    </div>


 <div class="form-group">
    <label  class="col-sm-2 control-label">类型</label>
    <div class="col-sm-5">
<input readonly="readonly" type="text" id="informationtype" name="informationtype" value="<s:property value="#info.informationtype"/>" >
    </div>
    </div>
    <div class="form-group">
   <label  class="col-sm-2 control-label">主题</label>
   <div class="col-sm-5">
<input type="text" id="topic" name="topic" value="<s:property value="#info.topic"/>" >
   </div>
   </div>
   <div class="form-group">
    <label  class="col-sm-2 control-label">作者</label>
    <div class="col-sm-5">
   <input type="text" id="author" name="author" value="<s:property value="#info.author"/>" >
    </div>
    </div>
    <div class="form-group">
   <label  class="col-sm-2 control-label">内容</label>
   <div class="col-sm-5">
<input type="text" id="content" name="content" value="<s:property value="#info.content"/>" >
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
