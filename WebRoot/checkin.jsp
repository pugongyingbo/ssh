<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/signin.css" />
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link href="css/dashboard.css" rel="stylesheet">
<script src="js/ie-emulation-modes-warning.js"></script>

<title>系统登陆</title>
<body>


<div class="container">
      <form class="form-signin" role="form" name="myform" action="logadmin" method="post">
        <h2 class="form-signin-heading">电力公司登录</h2>
        
        <input name="role.Rid" type="radio" value="1" size="20" checked>管理员
        <input name="role.Rid" type="radio" value="3" size="20">收费员</td>
        <input name="username" type="text" class="form-control" placeholder="用户名" required autofocus>
        <input name="password" type="password" class="form-control" placeholder="密码" required>
       <!--  <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 记住我
          </label>
        </div> -->
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
        <label><s:property value="logmsg"/> </label>
      </form>

    </div>
</body>
</html>

