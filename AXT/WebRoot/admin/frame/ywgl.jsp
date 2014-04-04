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

		<title>业务管理</title>
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
								onclick="callLeftTree('tree_menu1');setplace('业务管理 -> 考勤规则管理');FrameRedirect('Main', '<%=path%>/admin/frame/rsgl.jsp')"
								class="treeview_unfocus">
								<img
									src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
								考勤规则管理
							</td>
						</tr>
						
						<tr>
							<td id="tree_menu2"
								onclick="callLeftTree('tree_menu2');setplace('业务管理 -> 自动短信管理');FrameRedirect('Main', '<%=path%>/admin/queryAction!queryAllRecordSms.action?random='+Math.random());"
								class="treeview_unfocus">
								<img
									src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
								自动短信管理
							</td>
						</tr>
						
						<tr>
							<td id="tree_menu3"
								onclick="callLeftTree('tree_menu3');setplace('业务管理 -> 摄像报警管理');FrameRedirect('Main', '<%=path%>/admin/deptAction!queryAllDept.action?random='+Math.random());"
								class="treeview_unfocus">
								<img
									src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
								摄像报警管理
							</td>
						</tr>
						<!-- 
						<!--  
						<tr>
							<td id="tree_menu4"
								onclick="callLeftTree('tree_menu4');setplace('业务管理 -> RFID服务端');FrameRedirect('Main', '<%=path%>/admin/deptAction!queryAllDept.action?random='+Math.random());"
								class="treeview_unfocus">
								<img
									src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
								RFID服务端
							</td>
						</tr>
						 -->
						
						<tr>
							<td id="tree_menu5"
								onclick="callLeftTree('tree_menu5');setplace('业务管理 -> 查询处理');FrameRedirect('Main', '<%=path%>/admin/queryAction!queryAllRecord.action?random='+Math.random());"
								class="treeview_unfocus">
								<img
									src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
								查询处理
							</td>
						</tr>
						
						
						<tr>
							<td id="tree_menu6"
								onclick="callLeftTree('tree_menu6');setplace('业务管理 -> 报表统计处理');FrameRedirect('Main', '<%=path%>/admin/tbClass!getTbClassAllForQuery.action?random='+Math.random());"
								class="treeview_unfocus">
								<img
									src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
								报表统计处理
							</td>
						</tr>
						
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>