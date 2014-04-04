<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
		<title>学生考勤详细信息</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<meta http-equiv="content-language" content="zh-CN" />
		<meta name="author" content="#" />
		<link rel="stylesheet" href="<%=path%>/admin/css/v1.css"
			type="text/css" />
		<script type="text/javascript"
			src="<%=path%>/admin/common/script/jquery-1.2.6.js">
</script>
		<script type="text/javascript"
			src="<%=path%>/admin/common/script/v1.js">
</script>
		<script type="text/javascript"
			src="<%=path%>/admin/common/script/asset.js">
</script>
		<script type="text/javascript"
			src="<%=path%>/admin/common/script/commonPaging.js">
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
</script>
	</head>
	<body bgcolor="ghostwhite">
		<div class="PageTitleArea">
			<div class="PageTitle">
				学生考勤详细信息
			</div>

		</div>
		<fieldset class="AdminSearchform">
			<legend>
				查询学生信息：
			</legend>
			<s:form action="/admin/tbStudent!tbStudentList.action" method="POST"
				theme="simple">
				<table>
					<tr>
						<td>
							<s:select id="s1" name="s1"
								list="#{0:'--查询全部--', 1:'学号', 2:'姓名',3:'班级'}" value="0"
								cssStyle="width:130px; margin-top:0px;" onchange="change()">
							</s:select>
						</td>

						<td id="s2" style="display: none">
							<s:textfield name="tbStudent.uid"
								cssStyle="width:130px; margin-top:0px;" value="">
							</s:textfield>
						</td>

						<td id="s3" style="display: none">
							<s:textfield name="tbStudent.name"
								cssStyle="width:130px; margin-top:0px;" value="">
							</s:textfield>
						</td>
						<td id="s4" style="display: none">
							<SELECT name="tbStudent.tbClass.id">
								<option value="">
									全部
								</option>
								<s:iterator value="tbClassList">
									<option value="<s:property value="id"/>">
										<s:property value="name" />
									</option>
								</s:iterator>
							</SELECT>
						</td>
						<td>
							<s:submit cssStyle="width:40px; margin-top:0px;" value="查询" />
						</td>
					</tr>
				</table>
			</s:form>
		</fieldset>
		<fieldset class="AdminSearchform">
			<legend>
				学生考勤详细信息列表
			</legend>
			<div class="grdGroupListLi">
				<div>
					<br>
					<s:form name="form1" action="userAction!find.action" method="POST"
						theme="simple" id="from1">
						<table width="70%" border="0" cellspacing="0"
							class="GridViewStyle" id="grdHelpList"
							style="border-collapse: collapse;">
							<%
								int i = 0;
							%>
							<tr class="grdrow">
								<td>
									<div align="center">
										上午迟到的学生姓名
									</div>
								</td>
								<td style="width: 10%;">
									<s:iterator value="recordMorList">
										<s:if test="type == 1">
										<s:property value="tbStudent.name" />
										</s:if>
									</s:iterator>
								</td>
							</tr>
							<tr class="grdrow">
								<td style="width: 5%;">
									<div align="center">
										上午早退的学生姓名
									</div>
								</td>
								<td style="width: 10%;">
									<s:iterator value="recordMorList">
										<s:if test="type == 2">
										<s:property value="tbStudent.name" />
										</s:if>
									</s:iterator>
								</td>
							</tr>
							<tr class="grdrow">
								<td style="width: 5%;">
									<div align="center">
										上午旷课的学生姓名
									</div>
								</td>
								<td style="width: 10%;">
									<s:iterator value="recordMorList">
										<s:if test="type == 3">
										<s:property value="tbStudent.name" />
										</s:if>
									</s:iterator>
								</td>
							</tr>
							<tr class="grdrow">
								<td style="width: 5%;">
									<div align="center">
										下午迟到的学生姓名
									</div>
								</td>
								<td style="width: 10%;">
									<s:iterator value="recordAftList">
										<s:if test="type == 5">
										<s:property value="tbStudent.name" />
										</s:if>
									</s:iterator>
								</td>
							</tr>
							<tr class="grdrow">
								<td style="width: 5%;">
									<div align="center">
										下午早退的学生姓名
									</div>
								</td>
								<td style="width: 10%;">
									<s:iterator value="recordAftList">
										<s:if test="type == 6">
										<s:property value="tbStudent.name" />
										</s:if>
									</s:iterator>
								</td>
							</tr>
							<tr class="grdrow">
								<td style="width: 5%;">
									<div align="center">
										下午旷课的学生姓名
									</div>
								</td>
								<td style="width: 10%;">
									<s:iterator value="recordAftList">
										<s:if test="type == 7">
										<s:property value="tbStudent.name" />
										</s:if>
									</s:iterator>
								</td>
							</tr>
							<tr class="grdrow">
								<td style="width: 5%;">
									<div align="center">
										一天迟到的学生姓名
									</div>
								</td>
								<td style="width: 10%;">
									<s:iterator value="recordDayList">
										<s:if test="type == 1">
										<s:property value="tbStudent.name" />
										</s:if>
									</s:iterator>
								</td>
							</tr>
							<tr class="grdrow">
								<td style="width: 5%;">
									<div align="center">
										一天早退的学生姓名
									</div>
								</td>
								<td style="width: 10%;">
									<s:iterator value="recordDayList">
										<s:if test="type == 2">
										<s:property value="tbStudent.name" />
										</s:if>
									</s:iterator>
								</td>
							</tr>
							<tr class="grdrow">
								<td style="width: 5%;">
									<div align="center">
										一天迟旷课学生姓名
									</div>
								</td>
								<td style="width: 10%;">
									<s:iterator value="recordDayList">
										<s:if test="type == 3">
										<s:property value="tbStudent.name" />
										</s:if>
									</s:iterator>
								</td>
							</tr>
						</table>
					</s:form>
				</div>


			</div>

		</fieldset>

	</body>
</html>

