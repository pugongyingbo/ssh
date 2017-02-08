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

<title>My JSP 'left.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link href="css/dashboard.css" rel="stylesheet">
<script src="js/ie-emulation-modes-warning.js"></script>

<style type="text/css">

#lefttwo{
		position:absolute;
	visibility: visible;
}
#leftthree{
		position:absolute;
	visibility: hidden;
}
#leftfour{
	position:absolute;

	visibility: hidden;
}

</style>

<script type="text/JavaScript">

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_showHideLayers() { //v6.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}

</script>
</head>

<body>
	<div class="col-sm-3 col-md-2 ">
		<ul class="nav nav-sidebar">
			
			
			<li class="active" onmousedown="MM_showHideLayers('leftthree','','show','leftfour','','hide');
			this.style.color='red'"; onmouseout="this.style.color='black'" >
			<a>收费管理</a></li>
			
			<li onmousedown="MM_showHideLayers('leftthree','','hide','leftfour','','show');
			this.style.color='red'"; onmouseout="this.style.color='black'" >
			<a>公司信息管理</a></li>
		</ul>
        
		 <ul class="nav nav-sidebar" id="leftthree">
					<li><a href="listallcustomer" target="content">电力用户管理</a>
					</li>
					<li><a href="jsp/third.jsp" target="content">地理信息</a>
					</li>
					<li><a href="SearchALL" target="content">客户信息</a>
					</li>
					<li><a href="jsp/collect_fees.jsp" target="content">收费管理</a>
					</li>
					
				</ul>
				 <ul class="nav nav-sidebar" id="leftfour">
					<li><a href="releaseInfo" target="content">信息管理</a>
					</li>
					<li><a href="jsp/information-add.jsp" target="content">信息发布</a>
					</li>
					<li><a href="findInfo" target="content">信息显示</a>
					</li>
					
				</ul>
	</div>
</body>
</html>
