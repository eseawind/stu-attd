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

		<title>用户管理</title>

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
				学生信息管理
			</div>
		</div>
		<fieldset class="AdminSearchform">
			<legend>
				下载资源文件
			</legend>
			<div class="grdGroupListLi">
					<table width="60%" border="0" cellpadding="0" cellspacing="0"
						id="addItemsTable">
						<tr>
							<td>
								<font color="red">*</font>
							</td>
							<td>
								<a href="<%=path %>/admin/download.action?fileId=1">office2003模板</a>
							</td>
						</tr>
						<tr>
							<td>
								<font color="red">*</font>
							</td>
							<td>
								<a href="<%=path %>/admin/download.action?fileId=2">office2007模板</a>
							</td>
						</tr>
						<tr>
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