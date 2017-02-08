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
		<form method="post" id="addinformation" action="changeUserInfo">
			<table class="form_table1" align="center">
				<tr>

					<td style="width:150px;height:50px">
						用户编号
					</td>
					<td class="formtb_right">
						<s:property value="#request.userInfo.id"/>
						<input type="hidden" value="<s:property value="#request.userInfo.id"/>" name="users.id">
					</td>

				</tr>
				<tr>
					<td style="width:150px;height:50px">
						账号
					</td>
					<td class="formtb_right">
						<input type="text" name="users.username" value="<s:property value="#request.userInfo.username"/>">
					</td>
				</tr>
				<tr>
					<td style="width:150px;height:50px">
						角色
					</td>
					<td class="formtb_right">
						<select name="users.role.rid">
							<option value="<s:property value="#request.userInfo.role.rid"/>" selected="selected">
								<s:property value="#request.userInfo.role.role"/>
							</option>
							<s:if test="#request.userInfo.role.rid!=1">
								<option value="1">管理员</option>
							</s:if>
							<s:if test="#request.userInfo.role.rid!=3">
								<option value="3">收费员</option>
							</s:if>
						</select>
					</td>
				</tr>
				
				<tr>
					<td style="width:150px;height:50px">
						备注
					</td>
					<td class="formtb_right">
						<s:property value="#request.userInfo.role.remark"/>
					</td>
				</tr>
			</table>
			<br>
			<br>
			<p align="center">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" value="确定" style="width:100px">
				&nbsp;&nbsp;
				<input type="button" value="返回上一页" onclick="javascript:history.back(-1);">
			</p>
		</form>
	</body>
</html>
