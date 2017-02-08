<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<style type="text/css">
</style>
<script type="text/javascript">
function logout(){
if(confirm("确认退出？")){
location.href="userlogout";
}

}
</script>

</head>
<body background="../source/body_background.png" >

<div id="header">
			<div style="float: left">您好：<s:property value="#user.username"/></div>
			<div style="float: right">
				<a href="javascript:history.back()"> 返回 </a> <a
					href="javascript:logout()">退出系统</a>
			</div>
		</div>
</body>
</html>
