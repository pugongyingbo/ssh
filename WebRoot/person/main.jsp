<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>公司信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link href="style/stylet.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>


<script type="text/javascript">
	function logout() {
		if (confirm("确认退出？")) {
			location.href = "userlogout";
		}

	}
</script>

<style type="text/css">
body{
padding-top:10px;
}

.carousel{
height:500px;background-color:black;
}
.carousel-inner{
height:500px;background-color:black;
}
.carousel-inner .item {
height:500px;background-color:black;
}
.carousel-caption{
height:550px;
}
.carousel img{
width:100%;
}
.main-footer{background:#202020;padding:35px 0 0 0;color:#959595}
.main-footer .widget{padding:0 30px}
.main-footer .widget .title{color:#fff;border-bottom:1px solid #303030}
.main-footer .widget .tag-cloud a{border:1px solid #303030}.main-footer .widget .tag-cloud a:hover{border:1px solid #337ab7}
.copyright{background:#111;font-size:13px;text-align:center;color:#555;padding-top:14px;padding-bottom:20px;border-top:1px solid #303030}
.copyright span{margin:0 .5em}
.copyright a{color:#555}
#back-to-top i{width:30px;height:30px;line-height:30px}
</style> 
</head>
<body>

 <!-- ---------------轮播图片---------------- -->
  
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="images/pic01.jpg" alt="..."/>
      <div class="carousel-caption">
       <h3>haha</h3>
    <p>欢迎您</p>
      </div>
    </div>
    
     <div class="item">
      <img src="images/pic02.jpg" " alt="...">
      <div class="carousel-caption">
        <h3>欢迎您</h3>
    <p>欢迎您</p>
      </div>
    </div>
  
  
  <div class="item">
      <img src="images/pic03.jpg" " alt="...">
      <div class="carousel-caption">
        <h3>欢迎您</h3>
       <p>欢迎您</p>
      </div>
    </div>
  </div>
  


  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<!-----------------内容---- 	 -----    ----->

		<!-- 
      <div class="table-responsive" style="background-color:red">
					<table class="table table-striped">
						<thead>
							<tr>
								 <th>资讯类型</th>
								 <th>主题</th>
								 <th>时间</th>
								 <th>作者</th>
							</tr>
						</thead>
						<tbody>
						
						 <s:iterator value="#list" var="info">
						<tr>
						<td><s:property value="#info.informationtype" /></td>
						<td><s:property value="#info.topic" /></a></td>
						<td><s:property value="#info.datetime" /></td>
						<td><s:property value="#info.author" /></td>

						</tr>
				         </s:iterator> 
						</tbody>
					</table>
				</div> 
			 -->
				
			<div id="personalpaying">
			<table class="table" align="center">
				<tr class="table_header">
					<td width="120px">
						<div align="center" class="STYLE3">
							资讯类型
						</div>
					</td>
					<td width="150px">
						<div align="center" class="STYLE3">
							主题
						</div>
					</td>
					<td width="120px">
						<div align="center" class="STYLE3">
							时间
						</div>
					</td>
					<td width="80px">
						<div align="center" class="STYLE3">
							作者
						</div>
					</td>
				</tr>
				<s:iterator value="#list" var="info">
					<tr class="row2">
						<td>
							<s:property value="#info.informationtype" />
						</td>
						<td>
							<a href="findById2?iid=<s:property value="#info.iid"/>"><s:property
									value="#info.topic" />
							</a>
						</td>
						<td>
							<s:property value="#info.datetime" />
						</td>
						<td>
							<s:property value="#info.author" />
						</td>
					</tr>
				</s:iterator>
			</table>

		</div>
	
<!--------------底部------------->
 <footer class="main-footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="widget">
                        <h4 class="title">最新文章</h4>
                        <div class="content recent-post">
                                <div class="recent-single-post">
                                    <a href="#" class="post-title"> 电力设备</a>
                                    <div class="date">2016年3月23日</div>
                                </div>

                        </div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="widget">
                        <h4 class="title">标签云</h4>
                        <div class="content tag-cloud">

                        </div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="widget">
                        <h4 class="title">联系我们</h4>
                        <div class="content tag-cloud friend-links">
                            <a href="http://"  >微博</a>
                            <a href="http://"  >微信公众号：</a><br>
                            <a href="http://"  >binzhoudianli@163.com</a>
                            <hr>

                        </div>
                </div></div>
            </div>
        </div>
    </footer>

    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <span>Copyright &copy; 电力公司</span> |
                    <span>ICP备16003086号</span> |
                    <span>公网安备</span>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

