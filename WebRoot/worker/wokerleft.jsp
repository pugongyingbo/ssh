<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<!--
*{margin:0;padding:0;border:0;}
#leftone{width:35px;height:500px; }
#lefttwo{
	position:absolute;
	left:40px;
	width:150px;
	height:500px;
	top: 2px;
	z-index:3;
	visibility: visible;
}
#leftthree{
	position:absolute;
	left:40px;
	width:150px;
	height:500px;
	top: 2px;
	z-index:2;
	visibility: hidden;
}
#leftfour{
	position:absolute;
	left:40px;
	width:150px;
	height:500px;
	top: 2px;
	z-index:2;
	visibility: hidden;
}
-->
</style>
<script type="text/JavaScript">
<!--
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
//-->
</script>
</head>

<body background="../source/border_bg.png">
<div id="leftone">
  <table width="33px" height="388" border="0">
    <tr>
      <th onmousedown="MM_showHideLayers('lefttwo','','show','leftthree','','hide','leftfour','','hide');this.style.color='red'"; onmouseout="this.style.color='black'" >
	  <p>系</p>
      <p>统</p>
      <p>管</p>
      <p>理</p>
	  </span></th>
    </tr>
    <tr>
      <th height="142" scope="row" onmousedown="MM_showHideLayers('lefttwo','','hide','leftthree','','show','leftfour','','hide');this.style.color='red'"; onmouseout="this.style.color='black'" >
      <p>收</p>
      <p>费</p>
      <p>管</p>
      <p>理</p></th>
    </tr>
    <tr>
      <th scope="row" onmousedown="MM_showHideLayers('lefttwo','','hide','leftthree','','hide','leftfour','','show');this.style.color='red'"; onmouseout="this.style.color='black'" ><p>公</p>
        <p>司</p>
        <p>信</p>
      <p>息</p>
      <p>管</p>
      <p>理</p></th>
    </tr>
  </table>
</div>
<div id="lefttwo">
  <table width="149" height="57" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <th scope="col"><a href="listallusers" target="content">系统账户管理</a></th>
    </tr>
  </table>
</div>

<!--  
<div id="leftthree">
 <table width="149" height="57" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <th scope="col"><a href="electrical_user.jsp" target="content">电力用户管理</a></th>
    </tr>
	 <tr>
      <th scope="col"><a href="basical_information.jsp"target="content">基础信息管理</a></th>
	 </tr>
	 <tr>
      <th scope="col"><a href="collect_fees.jsp" target="content">收费管理</a></th>
	 </tr>
  </table>
</div>
-->
<div id="leftthree">
 <table width="149" height="57" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <th scope="col"><a href="listallcustomer" target="content">电力用户管理</a></th>
    </tr>
	 <tr>
         <th scope="col">
          <div ><span>基础信息管理</span><br/>
      	  <a href="third.jsp" target="content">地理信息</a><br/>
      	  <a href="SearchALL" target="content">客户信息</a><br/>
      	  </div>
      	 </th>
	 </tr>
	 <tr>
      <th scope="col"><a href="collect_fees.jsp" target="content">收费管理</a></th>
	 </tr>
  </table>
</div>


<div id="leftfour">
 <table width="149" height="57" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <th scope="col"><a href="releaseInfo" target="content">信息管理</a></th>
    </tr>
    <tr>
      <th scope="col"><a href="information-add.jsp" target="content">信息发布</a></th>
    </tr>
	 <tr>
      <th scope="col"><a href="findInfo" target="content">信息显示</a></th>
	 </tr>
 </table>
</div>
</body>
</html>
