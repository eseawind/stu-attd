<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>学生资料管理</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">

		<link rel="stylesheet" href="<%=path%>/admin/css/v1.css"
			type="text/css" />
		<script type="text/javascript"
			src="<%=path%>/admin/common/script/jquery-1.2.6.js">
</script>
		<script type="text/javascript"
			src="<%=path%>/admin/common/script/user/userInfo.js">
</script>
	</head>
	<script type="text/javascript">
var message = "<s:property value="Message"/>";
       if(message!="")
         {
          alert(message);
         }
    </script>

	<body bgcolor="ghostwhite">
		<div class="PageTitleArea">
			<div class="PageTitle">
				学生信息管理
			</div>
			<div style="width: 80%;">
				学生信息管理
			</div>
		</div>
		<fieldset class="AdminSearchform">
			<legend>
				学生信息
			</legend>
			<s:form action="/admin/tbStudent!updateTbStudent.action"
				onsubmit="return validateUserName();" method="POST" theme="simple">
				<s:hidden name="tbStudent.id" value="%{tbStudent.id}" />
				<s:hidden name="tbStudent.num" value="%{tbStudent.num}" />
				<table width="300px" border="0" cellspacing="0"
					class="GridViewStyle" id="grdHelpList"
					style="border-collapse: collapse;">
					<tr>
						<td>
							<font color="red">*</font>
						</td>
						<td>
							学号:
						</td>
						<td>
							<s:textfield id="account" name="tbStudent.uid"
								value="%{tbStudent.uid}" cssStyle="width:200px" />
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
								value="%{tbStudent.name}" cssStyle="width:200px"></s:textfield>
							<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
								id="message_name"></span> </FONT>
						</td>
					</tr>
					<tr>
						<td>
							<font color="red">*</font>
						</td>
						<td>
							入学日期:
						</td>
						<td>
							<s:textfield id="name" name="tbStudent.date"
								value="%{tbStudent.date}" cssStyle="width:200px"></s:textfield>
							<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
								id="message_name"></span> </FONT>
						</td>
					</tr>
					<tr class="GridViewHeaderStyle">
						<td></td>
						<td>
							用户性别:
						</td>
						<td>
							<s:radio list="#{1:'男', 0:'女'}" name="tbStudent.sex"
								value="%{tbStudent.sex}" />
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
								value="%{tbStudent.fatherName}" cssStyle="width:200px"></s:textfield>
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
								value="%{tbStudent.fatherTel}" cssStyle="width:200px"></s:textfield>
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
								value="%{tbStudent.motherName}" cssStyle="width:200px"></s:textfield>
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
								value="%{tbStudent.motherTel}" cssStyle="width:200px"></s:textfield>
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
									<s:if test="tbStudent.tbClass.id == id">
										<option value="<s:property value="id" />" selected="selected">
											<s:property value="name" />
										</option>
									</s:if>
									<s:else>
										<option value="<s:property value="id" />">
											<s:property value="name" />
										</option>
									</s:else>
								</s:iterator>
							</SELECT>
							<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
								id="message_name"></span> </FONT>
						</td>
					</tr>
					<tr class="GridViewHeaderStyle">
						<td></td>
						<td></td>
						<td>
							<s:submit value="确定修改" onclick="return checkIsNull();" />
						</td>
					</tr>
				</table>
			</s:form>
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

