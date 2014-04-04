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

		<title>基础信息管理</title>
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
								onclick="callLeftTree('tree_menu1');setplace('基础信息管理 -> 班级信息管理');FrameRedirect('Main', '<%=path%>/admin/tbClass!queryTbClassInfo.action?random='+Math.random());"
								class="treeview_unfocus">
								<img
									src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
								班级信息管理
							</td>
						</tr>

						<tr>
							<td id="tree_menu2"
								onclick="callLeftTree('tree_menu2');setplace('基础信息管理 -> 学生信息管理');FrameRedirect('Main', '<%=path %>/admin/tbStudent!tbStudentList.action?random='+Math.random());"
								class="treeview_unfocus">
								<img
									src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
								学生信息管理
							</td>
						</tr>

					</table>
				</td>
			</tr>
		</table>
	</body>
</html>