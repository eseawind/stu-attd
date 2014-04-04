<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>统计</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<meta http-equiv="content-language" content="zh-CN" />
		<meta name="author" content="#" />
		<link rel="stylesheet" href="<%=path %>/admin/css/v1.css" type="text/css"/>
	<script type="text/javascript" src="<%=path%>/admin/common/script/jquery-1.2.6.js"></script>
    <script type="text/javascript" src="<%=path %>/admin/common/script/v1.js"></script>  
   	<script type="text/javascript" src="<%=path %>/admin/common/script/commonPaging.js"></script> 
    <script type="text/javascript" src="<%=path%>/admin/js/Calendar.js"></script>
   	<script type="text/javascript" src="<%=path %>/admin/common/script/record.js"></script>
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
function chuliForm() {
	 var index = document.getElementById('s1').selectedIndex; 
	 if(index == 1) {
		document.getElementById("classesName").value = "";
	 }
	 else {
		 if(index == 2) {
			 document.getElementById("classId").value = "";
		 }
	 }
}
</script>
	</head>
	<body bgcolor="ghostwhite">
		<div class="PageTitleArea">
			<div class="PageTitle">
				考勤统计
			</div>

		</div>
		<fieldset class="AdminSearchform">
			<legend>
				查看考勤信息：
			</legend>
			<div class="grdGroupListLi">
				<s:form action="/admin/tongjiAction!tongji.action" method="POST"
				theme="simple">
				<table>
					<tr>
						<td>
							<s:select id="s1" name="s1"
								list="#{0:'--个人--', 1:'班级', 2:'年级'}" value="0"
								cssStyle="width:130px; margin-top:0px;" onchange="change()">
							</s:select>
						</td>
						<td id="s1" style="display: none"> 
							<s:textfield name="tbStudent.name"
								cssStyle="width:130px; margin-top:0px;" value="">
							</s:textfield>
						</td>

						<td id="s2" style="display: none">
							<SELECT name="tbClass.id" id="classId">
									<s:iterator value="tbClassList">
										<option value="<s:property value="id"/>">
											<s:property value="name" />
										</option>
									</s:iterator>
								</SELECT>
						</td>

						<td id="s3" style="display: none">
							<SELECT name="classes.classesName" id="classesName">
									<s:iterator value="classesList">
										<option value="<s:property value="classesName"/>">
											<s:property value="classesName" />
										</option>
									</s:iterator>
								</SELECT>
						</td>
						<td id="s10" style="display: none">
							起始日期：<s:textfield id="startDate" name="startDate"
										onclick="MyCalendar.SetDate(this)" cssStyle="width:200px"
										readonly="true">
									</s:textfield>
									结束日期：<s:textfield id="endDate" name="endDate"
										onclick="MyCalendar.SetDate(this)" cssStyle="width:200px"
										readonly="true">
									</s:textfield>
									显示类型：<SELECT name="type">
										<option value="1">表格</option>
										<option value="2">图片</option>
									</SELECT>
						</td>
						<td>
							<s:submit cssStyle="width:40px; margin-top:0px;" value="查询" onclick="chuliForm();"/>
						</td>
					</tr>
				</table>
			</s:form>
				
			</div>
		</fieldset>
		<img alt="jfreechart" src="${pageContext.request.contextPath}/temp/<s:property value="kaoQinPictureName"/>"/>  
	</body>
</html>

