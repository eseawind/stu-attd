<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<html>
	<head>
		<title>后台管理——校园智能安讯通系统</title>
		<link id="cssLink" rel="stylesheet"
			href="<%=path%>/admin/css/IFrame.css" type="text/css" media="screen" />
		<script src="<%=path%>/admin/common/script/IFrame.js"
			type="text/javascript">
</script>
		<style type="text/css">
#submenu6 .menushow {
	padding: 0 -3px;
	margin: 0 -3px;
}

.STYLE1 {
	color: #006699
}
</style>
	</head>
	<body>
		<form name="form1" method="post" action="Default.html" id="form1">
			<input type="hidden" id="txtSelectedMenuId" />
			<table border="0" cellpadding="0" cellspacing="0"
				style="width: 100%; height: 100%;">
				<tr id="top_001">
					<td style="width: 100%; height: 49px;">
						<table style="width: 100%; height: 49px;" border="0"
							cellpadding="0" cellspacing="0">
							<tr>
								<td>
									<div id="top_logo">
										<div id="logo"> <img src="<%=path%>/admin/image/toplogo.jpg"></div>
										<div id="line"></div>
										<div id="logoCenterBG"></div>
										<div id="logoRightEditor">
									
											欢迎
											|
											<FONT
												style="font-family: Arial, Helvetica, sans-serif; font-size: 20px; color: blue;"><s:property
													value="#session.currentUser.username" />
											</FONT>|

											<span id="showtime">2009-05-09&nbsp;星期六</span> 心情：
											<img id="Green" src="<%=path%>/admin/image/chinagreen.gif"
												alt="新绿清馨" onclick="MyMoodClass(this.id);" />
											<img id="Red" src="<%=path%>/admin/image/chinared.gif"
												alt="奥运中国" onclick="MyMoodClass(this.id);" />
											<!--<img src="<%=path%>/admin/image/chinahui.gif" alt="质朴典雅" /> <img src=<%=path%>/admin/image/chinazi.gif" alt="紫罗兰" /> -->
											<img id="Blue" src="<%=path%>/admin/image/chinablue.gif" alt="蓝色经典" onclick="MyMoodClass(this.id);"/>
										</div>
									</div>

									<script language="javascript">
function show() {
	now = new Date();
	year = now.getFullYear();
	month = now.getMonth() + 1;
	date = now.getDate();
	hours = now.getHours();
	minutes = now.getMinutes();
	seconds = now.getSeconds();
	if (minutes <= 9)
		minutes = "0" + minutes;
	if (seconds <= 9)
		seconds = "0" + seconds;
	var n_day = now.getDay();
	switch (n_day) {
	case 0: {
		strDate = "星期日"
	}
		break;
	case 1: {
		strDate = "星期一"
	}
		break;
	case 2: {
		strDate = "星期二"
	}
		break;
	case 3: {
		strDate = "星期三"
	}
		break;
	case 4: {
		strDate = "星期四"
	}
		break;
	case 5: {
		strDate = "星期五"
	}
		break;
	case 6: {
		strDate = "星期六"
	}
		break;
	case 7: {
		strDate = "星期日"
	}
		break;
	}
	document.getElementById("showtime").innerHTML = year + "年" + month + "月"
			+ date + "日 &nbsp;" + strDate + " &nbsp;" + "现在时间：" + hours + ":"
			+ minutes + ":" + seconds;

	setTimeout("show()", 1000);
}
show();
</script>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr id="top_002">
					<td style="text-align: center;">

						<div class="width">
							<div class="minwidth">
								<div class="container">
									<table width="100%" height="35" border="0" cellpadding="0"
										cellspacing="0">
										<tr>
											<td>
												<div id="top_menu">
													<div id="ChannelMenu">
														<div class="Shell">
															<div class="Tab">
																<table cellpadding="0" cellspacing="0">
																	<tr>

																		<td class="Item">
																			<div onmouseover="MouseOver(this);" id="Main1"
																				onmouseout="MouseOut(this);"
																				onclick="OnSelectMenu(this);setplace('系统管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/xtgl.jsp');FrameRedirect('Main', '<%=path%>/pictures/2008125221346309_2.jpg');">
																				<span>系统管理</span>
																			</div>
																		</td>
																		<td class="itemMainmenuSpirt"></td>

																		<td class="Item">
																			<div onmouseover="MouseOver(this);" id="Main2"
																				onmouseout="MouseOut(this);"
																				onclick="OnSelectMenu(this);setplace('基础信息管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/jcxxgl.jsp');FrameRedirect('Main', '<%=path%>/pictures/2008125221346309_2.jpg');">
																				<span>基础信息管理</span>
																			</div>
																		</td>
																		<td class="itemMainmenuSpirt"></td>

																		<td class="Item">
																			<div onmouseover="MouseOver(this);" id="Main3"
																				onmouseout="MouseOut(this);"
																				onclick="OnSelectMenu(this);setplace('业务管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/ywgl.jsp');FrameRedirect('Main', '<%=path%>/pictures/2008125221346309_2.jpg');">
																				<span>业务管理</span>
																			</div>
																		</td>
																		<td class="itemMainmenuSpirt"></td>

																	</tr>
																</table>
															</div>
														</div>
													</div>
												</div>
											</td>
										</tr>
									</table>

									<table width="100%" border="0" cellpadding="0" cellspacing="0"
										class="top_sub_menu">
										<tr>
											<!--<td class="returnIndex"><a href="#" class="STYLE1">管理首页</a></td>
                  -->
											<td class="exitSystem">
												<a

													href="${pageContext.request.contextPath}/admin/tbUser!logout.action"

													target="_top" class="STYLE1"
													onclick="return confirm('※ 是否退出系统？\n\n点击[确定]退出，取消则点击[取消]按钮。')">退出系统</a>
											</td>
											<td>
												<div id="SubMenu"
													style="padding-left: 20px; text-align: left; color: #333333;"
													align="left">
													<img
														src="<%=request.getContextPath()%>/admin/image/add.gif"
														width="12" height="15" />
													当前位置：管理首页 ->
													<span id="place">系统管理</span>
												</div>
											</td>
										</tr>
									</table>
	</body>
</html>
