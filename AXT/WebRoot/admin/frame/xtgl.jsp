<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expiries" content="0" />

		<title>后台管理——校园智能安讯通系统</title>
		<link id="cssLink" rel="stylesheet"
			href="<%=path%>/admin/css/IFrame.css" type="text/css" media="screen" />
		<script src="<%=path%>/admin/common/script/IFrame.js"
			type="text/javascript">
</script>
	</head>

	<body bgcolor="mintcream">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td>
					<table width="100%" border="0" cellpadding="0" cellspacing="0"
						id="tree_menu">

						<tr>
							<td id="tree_menu1"
								onclick="callLeftTree('tree_menu1');setplace('系统管理 -> 个人资料管理');FrameRedirect('Main', '<%=path%>/admin/tbUser!getTbUserInfo.action?tbUser.id=<s:property value="#session.currentUser.id"/>&random='+Math.random());"
								class="treeview_unfocus">
								<img
									src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
								个人资料管理
							</td>
						</tr>
						<tr>
							<td id="tree_menu2"
								onclick="callLeftTree('tree_menu2');setplace('系统管理 -> 系统用户管理');FrameRedirect('Main', '<%=path %>/admin/tbUser!queryTbUserInfo.action?random='+Math.random());"
								class="treeview_unfocus">
								<img
									src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
								系统用户管理
							</td>
						</tr>
						<tr>
							<td id="tree_menu3"
								onclick="callLeftTree('tree_menu3');setplace('系统管理 -> 数据库备份和还原');FrameRedirect('Main', '<%=path%>/admin/dataBackup!findList.action');"
								class="treeview_unfocus">
								<img
									src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
								数据库备份和还原
							</td>
						</tr>
						<tr>
							<td id="tree_menu5"
								onclick="callLeftTree('tree_menu5');setplace('系统管理 -> 日志管理');FrameRedirect('Main', '<%=path%>/admin/tbLogAction!queryAllUserLog.action?tbUser.id=<s:property value="#session.currentUser.id"/>&random='+Math.random());"
								class="treeview_unfocus">
								<img
									src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
								系统日志管理
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>