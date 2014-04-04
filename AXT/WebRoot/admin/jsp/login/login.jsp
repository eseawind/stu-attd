<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expiries" content="0" />
		<title>登录- 安讯通系统</title>
		<title>登录- 校园智能安讯通系统</title>
		<link rel="stylesheet"
			href="<%=request.getContextPath()%>/admin/css/login.css"
			type="text/css" media="screen" />
	</head>
	<body bgcolor="ghostwhite">
		<s:form method="post" action="/admin/tbUser!login.action"
			onsubmit="return WebForm_OnSubmit();" id="form1">
			<script>
if (top.frames.length > 0)
	top.location.href = "<%=request.getContextPath()%>/admin/jsp/login/login.jsp";</script>
			<script type="text/javascript">

function WebForm_OnSubmit() {
	if (document.getElementById("txtAdminName").value == "") {
		document.getElementById("AdminLogin_Label3").innerHTML = '<img src="/AXT/admin/image/login/warning.gif"> <font color=red> 用户名不能为空！</font>';
		return false;
	} else if (document.getElementById("txtAdminPassWord").value == "") {
		document.getElementById("AdminLogin_Label3").innerHTML = '<img src="/AXT/admin/image/login/warning.gif"> <font color=red> 密码不能为空！</font>';
		return false;
	} else
		return true;
}
</script>


			<div class="leftform">
				<div class="conLeftForm">
				</div>
			</div>
			<div class="rightform">
				<div class="conRightForm">
					<div class="dataForm">
						<ul>
							<li class="dataTitle">
								登录
							</li>
							<li>
								<span id="AdminLogin_Label3"
									style="display: inline-block; width: 260px;">请输入您的用户名和密码！</span>
							</li>
							<div id="AdminLogin_Label4"
								style="display: inline-block; width: 260px;">
								<font color=red>${requestScope.tips}</font>
							</div>
							<li>
							</li>
							<li class="inputstyle">
								<span> 登录用户名： </span>
								<input name="tbUser.account" type="text" id="txtAdminName"
									style="width: 135px;" />
							</li>
							<li class="inputstyle">
								<span> 登录密码：</span>
								<input name="tbUser.password" type="password"
									id="txtAdminPassWord" style="width: 135px;" />
							</li>
							<li class="step_1">
								<input type="submit" name="submit" value="登 录"
									id="btnAdminLogin" class="inp_L1" />
								<input type="reset" name="reset" value="重置" id="btnAdminLogin"
									class="inp_L1" />
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="bottomclass">
				<p align="center"
					style="font-size: 12px; font-family: Calibri, Microsoft Sans Serif">
					Powered by XGWB And CUIT
				</p>
			</div>
		</s:form>
	</body>
</html>


