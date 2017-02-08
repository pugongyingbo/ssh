<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>My JSP 'customerjiaofei.jsp' starting page</title>

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
	<form action="recharge?did=<s:property value='#session.ammeter.did'/>"
		method="post" class="form-horizontal" role="form">
		 <div class="form-group">
    <label  class="col-sm-2 control-label">身份证号：</label>
    <div class="col-sm-5">
   <s:property value="#session.customer.sid" />
    </div>
    </div>
    
     <div class="form-group">
    <label  class="col-sm-2 control-label">姓名</label>
    <div class="col-sm-5">
    <s:property value="#session.customer.name" />
    </div>
    </div>
    <div class="form-group">
    <label  class="col-sm-2 control-label">电表号</label>
    <div class="col-sm-5">
   <s:property value="#session.ammeter.did" />
    </div>
    </div>
    <div class="form-group">
    <label  class="col-sm-2 control-label">地址：</label>
    <div class="col-sm-5">
   <s:property value="#session.ammeter.address" />
    </div>
    </div>
     <div class="form-group">
    <label  class="col-sm-2 control-label">当前余额：</label>
    <div class="col-sm-5">
<s:property value="#session.remain" />   
 </div>
    </div>
    
    <div class="form-group">
    <label  class="col-sm-2 control-label">充值金额</label>
    <div class="col-sm-5">
    <input type="text" class="form-control"  name="charge" />
    </div>
    </div>
     <div class="form-group">
     <label  class="col-sm-2 control-label"></label>
    <div class="col-sm-3">
   <input type="submit" class="btn btn-primary" type = "button" value="充值" />
    </div>
    </div>
		
	</form>

</body>
</html>
