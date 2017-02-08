<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'third.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
<link href="css/dashboard.css" rel="stylesheet">
<script src="js/ie-emulation-modes-warning.js"></script>
	
  </head>
   
  <body >
  <form action="addAddress" method="post" class="form-horizontal" role="form">
  <div class="form-group">
  <label class="col-sm-2 control-label" for="location_p">详细地址>></label>
  <div class="controls">
    <select name="location_p" id="location_p" value="location_p">
    </select>
    <select name="location_c" id="location_c" value="location_c">
    </select>
    <select name="location_a" id="location_a" value="location_a">
    </select>
    <script src="worker/js/region_select.js"></script>
    <script type="text/javascript">
		new PCAS('location_p', 'location_c', 'location_a', '天津市', '', '');
	</script>
  </div>
</div>
    <div class="form-group">
    <label  class="col-sm-2 control-label">小区</label>
    <div class="col-sm-5">
    <input type="text" class="form-control" id="exampleInputEmail1" name ="location_4" />
    </div>
    </div>
    <div class="form-group">
   <label  class="col-sm-2 control-label">楼号</label>
   <div class="col-sm-5">
   <input type="text" class="form-control" id="exampleInputEmail1" name ="location_5" />
   </div>
   </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-6">
  <tr><td height="38" colspan="2" class="top_hui_text">
  <input name="ammeterType.tid" type="radio" value="1" size="20" checked>民用
  <input name="ammeterType.tid" type="radio" value="2" size="20">商用
  <input name="ammeterType.tid" type="radio" value="3" size="20">工用<br><br>
  </td></tr>
  
    <input class="btn btn-primary" type = "submit" value="新增"/>
        <input  class="btn btn-primary" type = "button" value="重置"/>
        </div>
        </div>
</form>

  </body>
  

</html>
