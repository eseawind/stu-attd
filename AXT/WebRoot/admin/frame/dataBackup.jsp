<%@ page language="java"  contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>数据库备份还原管理</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<meta http-equiv="content-language" content="zh-CN" />
		<meta name="author" content="#" />
		<link rel="stylesheet" href="<%=path %>/admin/css/v1.css"
			type="text/css" />
		<script type="text/javascript"
			src="<%=path%>/admin/common/script/jquery-1.2.6.js">
</script>
		<script type="text/javascript"
			src="<%=path %>/admin/common/script/v1.js">
</script>
		<script type="text/javascript"
			src="<%=path %>/admin/common/script/commonPaging.js">
</script>
		<script type="text/javascript"
			src="<%=path %>/admin/common/script/asset.js">
</script>
		<script type="text/javascript">
var message = "<s:property value="Message"/>";
       if(message!="")
         {
          alert(message);
         }
    </script>
		<script type="text/javascript">
$(document).ready(function() {
	$("#select").change(function() {

		document.find.submit();

	});
});

function logout(id) {
	window.location.href = "${pageContext.request.contextPath}/admin/tbUser!logoutUser.action?tbUser.id="
			+ id;
}
function browseFolder(path) {
	try {
		var Message = "\u8bf7\u9009\u62e9\u6587\u4ef6\u5939"; //选择框提示信息
		var Shell = new ActiveXObject("Shell.Application");
		var Folder = Shell.BrowseForFolder(0, Message, 64, 17); //起始目录为：我的电脑
		//var Folder = Shell.BrowseForFolder(0, Message, 0); //起始目录为：桌面
		if (Folder != null) {
			Folder = Folder.items(); // 返回 FolderItems 对象
			Folder = Folder.item(); // 返回 Folderitem 对象
			Folder = Folder.Path; // 返回路径
			if (Folder.charAt(Folder.length - 1) != "\\") {
				Folder = Folder + "\\";
			}
			document.getElementById(path).value = Folder;
			return Folder;
		}
	} catch (e) {
		alert(e.message);
	}
}
</script>
	</head>
	<body bgcolor="ghostwhite">
		<div class="PageTitleArea">
			<div class="PageTitle">
				数据库备份还原管理
			</div>

			

		</div>
		<fieldset class="AdminSearchform">
			<legend>
				备份文件管理：
			</legend>
			<table border="0" cellpadding="0" cellspacing="1" width="80%"
			align="center">
			<tr>
				<td>
					备份时间:
					<s:property value="" />
				</td>
				<td>
					重新设置
				</td>
			</tr>
			<tr>
				<td>
					备份路径:
					<s:property value="" />
				</td>
				<td>
					<input id="path" type="text" name="path" size="30">
				<input type=button value="选择" onclick="browseFolder('path')">
				</td>
			</tr>
			<tr>
				<td>
					<a
						href="${pageContext.request.contextPath}/admin/dataBackup!backup.action"
						onclick="return confirm('确定开始备份?')">手动备份</a>
				</td>
			</tr>
			<tr>
				<td>

				</td>
			</tr>
		</table>
		</fieldset>
		<fieldset class="AdminSearchform">
			<legend>
				备份文件列表
			</legend>
			<div class="grdGroupListLi">
				<div>
					<br>
					<s:form name="form1" action="userAction!find.action" method="POST"
						theme="simple" id="from1">
						<table width="70%" border="0" cellspacing="0"
							class="GridViewStyle" id="grdHelpList"
							style="border-collapse: collapse;">
							<tr class="GridViewHeaderStyle" align="center">
								<th width="20%" scope="col">
									<div align="center">
										备份文件名
									</div>
								</th>
								<th width="20%" scope="col">
									<div align="center">
										备份文件日期
									</div>
								</th>
								<th width="10%" scope="col">
									<div align="center">
										备份文件大小
									</div>
								</th>
								<th width="20%" scope="col">
									<div align="center">
										备份文件地址
									</div>
								</th>
								<th width="20%" scope="col">
									<div align="center">
										操作
									</div>
								</th>

							</tr>
							<s:iterator value="dataFiles">
								<tr class="grdrow">
									<td style="width: 15%;">
										<div align="center">
											<s:property value="fileName" />
										</div>
									</td>
									<td style="width: 15%;">
										<div align="center">
											<s:property value="fileDate" />
										</div>
									</td>
									<td style="width: 15%;">
										<div align="center">
											<s:property value="fileSize" />
										</div>
									</td>
									<td style="width: 15%;">
										<div align="center">
											<s:property value="filePath" />
										</div>
									</td>
									<td align="center">
										<a
											href="${pageContext.request.contextPath}/admin/dataBackup!deleteFile.action?fileName=<s:property value="fileName"/>"
											onclick="return confirm('确定删除?')">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;
										<a
											href="${pageContext.request.contextPath}/admin/dataBackup!load.action?fileName=<s:property value="fileName"/>"
											onclick="return confirm('确定还原?')">还原</a>
									</td>
								</tr>
							</s:iterator>
						</table>
						<div id='pageItem' style="text-align: center;">
							<%@ include file="/admin/common/jsp/commonPaging.jsp"%>
						</div>

					</s:form>
				</div>
			</div>
		</fieldset>
	</body>
</html>