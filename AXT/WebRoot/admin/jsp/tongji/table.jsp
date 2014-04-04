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
		<fieldset class="AdminSearchform">
			<legend>
				考勤信息列表
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
								<th width="15%" scope="col" rowspan="2">
									<div align="center">
										班级
									</div>
								</th>
								<th width="30%" scope="col" colspan="3">
									<div align="center">
										上午考勤情况
									</div>
								</th>
								<th width="40%" scope="col" colspan="3">
									<div align="center">
										下午考勤情况
									</div>
								</th>

							</tr>
							<tr>
								<td>
									<div align="center">
										迟到
									</div>
								</td>
								<td>
									<div align="center">
										早退
									</div>
								</td>
								<td>
									<div align="center">
										旷课
									</div>
								</td>
								<td>
									<div align="center">
										迟到
									</div>
								</td>
								<td>
									<div align="center">
										早退
									</div>
								</td>
								<td>
									<div align="center">
										旷课
									</div>
								</td>
								<td>
									<div align="center">
										 操作
									</div>
								</td>
							</tr>
						<s:iterator value="tongjiList">
							<tr class="grdrow" align="center">
							<td>
								<s:property value="className"/>
							</td>
							<td>
								<s:property value="mor1"/>
							</td>
							<td>
								<s:property value="mor2"/>
							</td>
							<td>
								<s:property value="mor3"/>
							</td>
							<td>
								<s:property value="aft5"/>
							</td>
							<td>
								<s:property value="aft6"/>
							</td>
							<td>
								<s:property value="aft7"/>
							</td>
							<td>
								<s:if test="tbClass.id != 0">
									<a href="${pageContext.request.contextPath}/admin/tongjiAction!tongjiDetail.action?startDate=<s:property value="startDate"/>&endDate=<s:property value="endDate"/>&tbClass.id=<s:property value="tbClass.id"/>">查看详细信息</a>
								</s:if>
								<s:elseif test="classes.classesName != null">
									<a href="${pageContext.request.contextPath}/admin/tongjiAction!tongjiDetail.action?startDate=<s:property value="startDate"/>&endDate=<s:property value="endDate"/>&classes.classesName=<s:property value="classes.classesName"/>">查看详细信息</a>
								</s:elseif>
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
			<s:if test="startDate != null">
			<div align="right">
				<s:if test="tbClass.id != 0">
					<a href="${pageContext.request.contextPath}/admin/tongjiAction!tongjiDetailToExcel.action?startDate=<s:property value="startDate"/>&endDate=<s:property value="endDate"/>&tbClass.id=<s:property value="tbClass.id"/>">下载考勤详细信息</a>
				</s:if>
				<s:elseif test="classes.classesName != null">
					<a href="${pageContext.request.contextPath}/admin/tongjiAction!tongjiDetailToExcel.action?startDate=<s:property value="startDate"/>&endDate=<s:property value="endDate"/>&classes.classesName=<s:property value="classes.classesName"/>">下载考勤详细信息</a>
				</s:elseif>
			</div>
			</s:if>
		</fieldset>
	</body>
</html>
