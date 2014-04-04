<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
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
		<base href="<%=basePath%>">

		<title>用户管理</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
	<link rel="stylesheet" href="<%=path %>/admin/css/v1.css" type="text/css"/>
	<script type="text/javascript" src="<%=path%>/admin/common/script/jquery-1.2.6.js"></script>
    <script type="text/javascript" src="<%=path %>/admin/common/script/v1.js"></script>  
   	<script type="text/javascript" src="<%=path %>/admin/common/script/commonPaging.js"></script> 
    <script type="text/javascript" src="<%=path%>/admin/js/Calendar.js"></script>
   	<script type="text/javascript" src="<%=path %>/admin/common/script/record.js"></script>

	</head>
	<body bgcolor="ghostwhite">
		<div class="PageTitleArea">
			<div class="PageTitle">
				学生信息管理
			</div>
		</div>
		<fieldset class="AdminSearchform">
			<legend>
				新增学生信息
			</legend>
			<div class="grdGroupListLi">
				<s:form name="form1" action="/admin/tbStudent!addTbStudent.action"
					method="POST" theme="simple" enctype="multipart/form-data">
					<s:hidden name="dateTime" value="%{date}"></s:hidden>
					<table width="60%" border="0" cellpadding="0" cellspacing="0"
						id="addItemsTable">
						<tr>
							<td>
								<font color="red">*</font>
							</td>
							<td>
								学号:
							</td>
							<td>
								<s:textfield id="account" name="tbStudent.uid"
									cssStyle="width:200px"></s:textfield>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_account"></span> </FONT>
							</td>
						</tr>
						<tr>
							<td>
								<font color="red">*</font>
							</td>
							<td>
								姓名:
							</td>
							<td>
								<s:textfield id="name" name="tbStudent.name"
									cssStyle="width:200px"></s:textfield>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_name"></span> </FONT>
							</td>
						</tr>
						<tr class="GridViewHeaderStyle">
							<td>
								<font color="red">*</font>
							</td>
							<td>
								入学日期:
							</td>
							  <td>	
	  								<s:textfield id="date" name="tbStudent.date"
										onclick="MyCalendar.SetDate(this)" cssStyle="width:200px"
										readonly="true">
									</s:textfield>
		          			  </td>
						</tr>
						<tr class="GridViewHeaderStyle">
							<td></td>
							<td>
								性别:
							</td>
							<td>
								<s:radio list="#{1:'男', 0:'女'}" name="tbStudent.sex" value="1" />
							</td>
						</tr>
						<tr class="GridViewHeaderStyle">
							<td></td>
							<td>
								类型:
							</td>
							<td>
								<SELECT name = "tbStudent.type"> 
									<option value="0">在校</option>
									<option value="1">毕业</option>
									<option value="2">退学</option>
								</SELECT>
							</td>
						</tr>
						<tr>
							<td>
								<font color="red">*</font>
							</td>
							<td>
								头像:
							</td>
							<td>
								<s:file id="name" name="excelFile.upload"
									cssStyle="width:200px"></s:file>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_name"></span> </FONT>
							</td>
						</tr>
						<tr>
							<td>
								<font color="red">*</font>
							</td>
							<td>
								父亲姓名:
							</td>
							<td>
								<s:textfield id="name" name="tbStudent.fatherName"
									cssStyle="width:200px"></s:textfield>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_name"></span> </FONT>
							</td>
						</tr>
						<tr>
							<td>
							</td>
							<td>
								父亲电话号码:
							</td>
							<td>
								<s:textfield id="phone" name="tbStudent.fatherTel"
									cssStyle="width:200px"></s:textfield>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_phone"></span>
							</td>
						</tr>
						<tr>
							<td>
								<font color="red">*</font>
							</td>
							<td>
								母亲姓名:
							</td>
							<td>
								<s:textfield id="name" name="tbStudent.motherName"
									cssStyle="width:200px"></s:textfield>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_name"></span> </FONT>
							</td>
						</tr>
						<tr>
							<td>
							</td>
							<td>
								母亲电话号码:
							</td>
							<td>
								<s:textfield id="phone" name="tbStudent.motherTel"
									cssStyle="width:200px"></s:textfield>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_phone"></span>
							</td>
						</tr>
						<tr>
							<td>
								<font color="red">*</font>
							</td>
							<td>
								所在班级:
							</td>
							<td>
								<SELECT name="tbStudent.tbClass.id">
									<s:iterator value="tbClassList">
										<option value="<s:property value="id"/>"><s:property value="name"/></option>
									</s:iterator>
								</SELECT>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_name"></span> </FONT>
							</td>
						</tr>
					</table>
					
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
					<s:submit value="确定" onclick="return checkIsNull();" />
					<s:reset value="重置" />

				</s:form>
			</div>
		</fieldset>
		<table border="0" cellspacing="0" id="grdHelpList"
			style="border-collapse: collapse;" width="80%">
			<tr>
				<td colspan="4" align="center">
					<a class="SmallCommonTextButton" href="javascript:history.go(-1);">
						<font color="red">返回</font> </a>
				</td>
				<td></td>
				<td></td>
				<td></td>
		</table>
	</body>
</html>