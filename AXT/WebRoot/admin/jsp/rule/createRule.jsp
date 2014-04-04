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

		<title>新增规则</title>

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
		<script type="text/javascript" src="<%=path %>/admin/common/script/ruletype.js"></script>
	</head>
	<body bgcolor="ghostwhite">
		<div class="PageTitleArea">
			<div class="PageTitle"> 
				规则管理
			</div>
		</div>
		<fieldset class="AdminSearchform">
			<legend>
				新增规则
			</legend>
			<div class="grdGroupListLi">
				<s:form name="form1" action="tbRuleAction!createRule"  method="POST" theme="simple"
					name="form1" enctype="multipart/form-data">
					
					<table width="586" border="0" cellpadding="0" cellspacing="0"
						id="addItemsTable" height="89">
						
						<tr>
							<td>
								类型:
							</td>
							
							<td>
								<s:select id="s1" name="type" list="ruleTypeList" listKey="id" listValue="typeName"
								cssStyle="width:130px; margin-top:0px;" onchange="change()" />
							</td>
						</tr>
						<tr>
							<td>规则格式:</td>
							<td id="s2" >XXX 例：星期一至星期天（MON TUE WED THU FRI SAT SUN）</td>
							<td id="s3" style="display: none">MM-dd 例：05-01</td>
							<td id="s4" style="display: none">yyyy-MM-dd 例： 1991-08-24</td>
						</tr>
						<tr>
							<td style="width: 125px">
								规则:
							</td>
							<td>
								<s:textfield id="rule" name="tbRule.rule"
									cssStyle="width:200px"></s:textfield>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_rule"></span>
								</FONT>
							</td>
							
						</tr>
						<tr>
							<td>
								所用设置：
							</td>
							<td>
								<s:select name="tbSetting.id" list="tbSettingList" listKey="id" listValue="name" />
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
