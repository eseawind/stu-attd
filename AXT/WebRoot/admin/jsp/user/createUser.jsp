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

		<link rel="stylesheet" href="<%=path%>/admin/css/v1.css"
			type="text/css" />
		
		<script type="text/javascript"
			src="<%=path%>/admin/common/script/jquery-1.2.6.js"></script>
		<script type="text/javascript">
		<script type="text/javascript" src="<%=path %>/admin/common/script/v1.js"></script>
        <script type="text/javascript" src="<%=path %>/admin/common/script/user/user.js"></script>
		<SCRIPT type="text/javascript">
			function validate() {
				var pass1 = document.getElementById("password1").value.trim();
				var pass2 = document.getElementById("password2").value.trim();
				if(pass1 != pass2) {
					alert("新密码和确认密码不匹配");
					return false;
				}
				return true;
			}
		</SCRIPT>
		
	</head>
	<body bgcolor="ghostwhite">
		<div class="PageTitleArea">
			<div class="PageTitle"> 
				用户管理 
			</div>
		</div>
        <% 
        
      Date date = new Date();
        
         %>
		<fieldset class="AdminSearchform">
			<legend>
				新增用户
			</legend>
			<div class="grdGroupListLi">
				<s:form name="form1" action="/admin/tbUser!addTbUser.action"  method="POST" theme="simple" onsubmit="return validate();"
					 >
					
					<table width="60%" border="0" cellpadding="0" cellspacing="0"
						id="addItemsTable">
						<tr>
							<td>
								<font color="red">*</font>
							</td>
							<td>
								帐号:
							</td>
							<td>
								<s:textfield id="account" name="tbUser.account"
									cssStyle="width:200px"></s:textfield>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_account"></span>
								</FONT>
							</td>
						</tr>
						<tr>
							<td>
								<font color="red">*</font>
							</td>
							<td>
								用户名:
							</td>
							<td>
								<s:textfield id="name" name="tbUser.username"
									cssStyle="width:200px"></s:textfield>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_name"></span>
								</FONT>
							</td>
						</tr>
						<tr>
							<td>
								<font color="red">*</font>
							</td>
							<td>
								密码:
							</td>
							<td>
							<s:password id="password1" name="tbUser.password" cssStyle="width:200px">
							</s:password>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_password"></span>
								</FONT>
							</td>
						</tr>
						<tr>
							<td>
								<font color="red">*</font>
							</td>
							<td>
								确认密码:
							</td>
							<td>
							<s:password id="password2" name="passConfirm" cssStyle="width:200px">
							</s:password>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_password"></span>
								</FONT>
							</td>
						</tr>
						<tr>
							<td>
							</td>
							<td>
								状态:
							</td>
							<td>
							<s:radio list="#{0:'注销', 1:'正常'}" name="tbUser.state" value = "1"/>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
								id="message_email"></span>
								</FONT>
							</td>
						</tr>
					</table>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
					<s:submit value="确定" onclick="return checkIsNull();"/>
						<s:reset value="重置" />
					
				</s:form>
			</div>	
		</fieldset>
		<table border="0" cellspacing="0" id="grdHelpList" style="border-collapse:collapse;" width="80%">  
	      <tr>
	        <td colspan="4" align="center">
	        	<a class="SmallCommonTextButton" href="javascript:history.go(-1);">
    				<font color="red">返回</font>
    			</a>
    		</td>
    		<td></td>
    		<td></td>
    		<td></td>
	   </table> 
	</body>
</html>
