<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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

		<title>个人信息</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">

		<link rel="stylesheet" href="<%=path%>/admin/css/v1.css"
			type="text/css" />

		<script type="text/javascript"
			src="<%=path%>/admin/common/script/jquery-1.2.6.js">
</script>
		<script type="text/javascript">
<script type="text/javascript" src="<%=path%>/admin/common/script/v1.js"></script>
		<script type="text/javascript"
			src="<%=path%>/admin/common/script/user/user.js">
</script>

	</head>
	<body bgcolor="ghostwhite">
		<div class="PageTitleArea">
			<div class="PageTitle">
				个人信息
			</div>
		</div>
		<fieldset class="AdminSearchform">
			<legend>
				个人用户信息
			</legend>
			<div class="grdGroupListLi">
				<table width="60%" border="0" cellpadding="0" cellspacing="0"
					id="addItemsTable">
					<tr>
						<td>
							<font color="red">*</font>
						</td>
						<td>
							用户名:
						</td>
						<td>
							<s:property value="tbUser.username"/>
							<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
								id="message_name"></span> </FONT>
						</td>
					</tr>
					<tr>
						<td>
							<font color="red">*</font>
						</td>
						<td>
							电话号码：
						</td>
						<td>
							<s:property value="tbUser.phone"/>
							<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
								id="message_name"></span> </FONT>
							
						</td>
					</tr>
					<tr>
						<td>
							<font color="red">*</font>
						</td>
						<td>
							QQ：
						</td>
						<td>
							<s:property value="tbUser.qqnum"/>
							<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
								id="message_name"></span> </FONT>
							
						</td>
					</tr>
					<tr>
						<td>
							<font color="red">*</font>
						</td>
						<td>
							邮箱：
						</td>
						<td>
							<s:property value="tbUser.email"/>
							<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
								id="message_name"></span> </FONT>
							
						</td>
					</tr>
					<tr>
						<td>
							<font color="red">*</font>
						</td>
						<td>
							状态:
						</td>
						<td>
							<s:if test="tbUser.state == 1">
									正常
								</s:if>
							<s:else>
									注销
								</s:else>
							<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
								id="message_email"></span> </FONT>
						</td>
					</tr>
				</table>
			</div>
		</fieldset>
		<table border="0" cellspacing="0" id="grdHelpList"
			style="border-collapse: collapse;" width="80%">
			<tr>
				<td colspan="4" align="center">
					<a class="SmallCommonTextButton" href="javascript:history.go(-1);">
						<font color="red">返回</font> </a>
				</td>
				<td></td>
				<td></td>
				<td></td>
		</table>
	</body>
</html>
