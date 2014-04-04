<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<title>班级信息管理</title>
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
		<script type="text/javascript">
<script type="text/javascript" src="<%=path %>/admin/common/script/v1.js"></script>

		<script type="text/javascript"
			src="<%=path %>/admin/common/script/commonPaging.js">
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
</script>
	</head>
	<body bgcolor="ghostwhite">
		<div class="PageTitleArea">
			<div class="PageTitle">
				班级信息管理
			</div>

			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a class="SmallCommonTextButton"
				href="<%=path %>/admin/jsp/class/createClass.jsp"><font
				color="red">新增班级</font>
			</a>

		</div>
		<fieldset class="AdminSearchform">
			<legend>
				查询班级：
			</legend>
			<div class="grdGroupListLi">
				<form
					action="${pageContext.request.contextPath}/admin/tbClass!queryTbClassInfo.action"
					method="post">
					<table width="30%" border="0" cellpadding="0" cellspacing="0"
						id="addItemsTable">
						<tr>
							<td>
								班级：
							</td>
							<td>
								<SELECT name="tbClass.id">
									<s:iterator value="tbClassListAll">
										<option value="<s:property value="id"/>">
											<s:property value="name" />
										</option>
									</s:iterator>
								</SELECT>
							</td>
							<td>
								<input type="submit" value="提交" />
							</td>
						</tr>
					</table>
				</form>
			</div>
		</fieldset>
		<fieldset class="AdminSearchform">
			<legend>
				班级信息列表
			</legend>
			<div class="grdGroupListLi">
				<div>
					<br>
					<s:form name="form1" action="userAction!find.action" method="POST"
						theme="simple" id="from1">
						<table width="70%" border="0" cellspacing="0"
							class="GridViewStyle" id="grdHelpList"
							style="border-collapse: collapse;">
							<tr class="GridViewHeaderStyle">
								<th width="15%" scope="col">
									<div align="center">
										编号
									</div>
								</th>
								<th width="30%" scope="col">
									<div align="center">
										班级名
									</div>
								</th>
								<th width="40%" scope="col">
									<div align="center">
										基本操作
									</div>
								</th>

							</tr>
							<s:iterator value="tbClassList">
								<tr class="grdrow">
									<td style="width: 15%;">
										<div align="center">
											<s:property value="id" />
										</div>
									</td>
									<td style="width: 15%;">
										<div align="center">
											<s:property value="name" />
										</div>
									</td>
									<td style="width: 10%;" nowrap="nowrap"
										class="handleRightSelect" align="center">
							<a class="SmallCommonTextButton" href='
    						    <s:url action="tbClass!deleteTbClass">
    						    <s:param name="tbClass.id" value="id" />
    						    <s:param name="tbClass.name" value="name" />
    							 </s:url>' onclick="return confirm('确定将此记录删除?')">删除班级</a>	
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
