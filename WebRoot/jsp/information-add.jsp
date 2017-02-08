<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

		<title>My JSP 'information-add.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<LINK href="./style/style.css" type=text/css rel=stylesheet>

	</head>

	<body>
		<form method="post" id="addinformation" action="addInformation">
			<table class="form_table1" align="center">
				<tr>

					<td>
						资讯类型
					</td>
					<td class="formtb_right">
						<SELECT name="informationtype" id="informationtype">
							<option value="民生新闻">
								民生新闻
							</option>
							<option value="国内新闻">
								国内新闻
							</option>
							<option value="国际新闻">
								国际新闻
							</option>
						</SELECT>

					</td>

				</tr>
				<tr>
					<td>
						主题
					</td>
					<td class="formtb_right">
						<input type="text" id="topic" name="topic">
					</td>
				</tr>
				<tr>
					<td>
						作者
					</td>
					<td class="formtb_right">
						<input type="text" id="author" name="author">
					</td>
				</tr>
				<tr>
					<td>
						内容
					</td>
					<td class="formtb_right">
						<input type="text" id="content" name="content">
					</td>
				</tr>
			</table>
			<br>
			<br>
			<p align="center">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" value="确定">
				&nbsp;&nbsp;&nbsp;
				<input type="reset" value="全部重写">
			</p>
		</form>
	</body>
</html>
