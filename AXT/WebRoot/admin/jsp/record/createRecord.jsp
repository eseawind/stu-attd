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

		<title>资产记录管理</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">

		<link rel="stylesheet" href="<%=path%>/admin/css/v1.css"
			type="text/css" />

		<script type="text/javascript"
			src="<%=path%>/admin/common/script/jquery-1.2.6.js"></script>
		<script type="text/javascript">
		function checkIsNull()
       { 
          var title=$("#title").val();
         if(title=="")
         {
          $("#message_title").text("(资产记录编号不能为空)");
          return false;
         }
         if(title.length>6)
         {
         	$("#message_title").text("(资产记录编号长度过长)");
         	return false;
         }
       }
       var message="<s:property value="message"/>";
       if(message!="")
         {
          alert(message);
         }
		</script>

	</head>
	<body bgcolor="ghostwhite">
		<div class="PageTitleArea">
			<div class="PageTitle">
				资产记录管理
			</div>
		</div>

		<fieldset class="AdminSearchform">
			<legend>
				新增资产记录
			</legend>
			<div class="grdGroupListLi">
				<s:form name="form1" action="recordAction!createRecord" method="POST"
					theme="simple" name="form1" enctype="multipart/form-data">
					<table width="60%" border="0" cellpadding="0" cellspacing="0"
						id="addItemsTable">
						<tr>
							<td>
								&nbsp;&nbsp;经手人:
							</td>
							<td>
								<s:select name="tbUser.tbUserId" list="tbUserList" listKey="tbUserId" listValue="tbUserName" Value="%{tbUser.tbUserId}"/>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_title"></span> </FONT>
							</td>
						</tr>
						
						<tr>
							<td>
								&nbsp;&nbsp;取货人:
							</td>
							<td>
								<s:select name="tbStaff.tbStaffId" list="tbStaffList" listKey="tbStaffId" listValue="tbStaffName" Value="%{tbStaff.tbStaffId}"/>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_title"></span> </FONT>
							</td>
						</tr>
						
						<tr>	
							<td>
								&nbsp;&nbsp;取货起点:
							</td>
							<td>
								<s:textfield id="title" name="tbRecord.tbRecordPlace"
									cssStyle="width:200px"></s:textfield>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_title"></span> </FONT>
							</td>
						</tr>	
						
						<tr>
							<td>
								&nbsp;&nbsp;备注:
							</td>
							<td>
								<s:textfield id="title" name="tbRecord.tbRecordRemark"
									cssStyle="width:200px"></s:textfield>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_title"></span> </FONT>
							</td>
					`  </tr>
					
						<tr>
							<td>
								&nbsp;&nbsp;开始时间:
							</td>
							<td>
								<s:textfield id="title" name="tbRecord.tbRecordSdate"
									cssStyle="width:200px"></s:textfield>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_title"></span> </FONT>
							</td>
						</tr>
						
						<tr>
							<td>
								&nbsp;&nbsp;结束时间:
							</td>
							<td>
								<s:textfield id="title" name="tbRecord.tbRecordEdate"
									cssStyle="width:200px"></s:textfield>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_title"></span> </FONT>
							</td>
						</tr>
						
						<tr>	
							<td>
								&nbsp;&nbsp;取货类型:
							</td>
							<td>
								<s:select id="title" name="tbRecord.tbRecordType" list="#{'0':'入库','1':'领用','2':'调拨','3':'维修','4':'报废'}"></s:select>
								<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span
									id="message_title"></span> </FONT>
							</td>
						</tr>
					</table>
					
					<s:submit value="确定" onclick="return checkIsNull();" />
					<s:reset value="重置" />
				</s:form>
			</div>
		</fieldset>
		<div>
			<center>
				<a class="SmallCommonTextButton" href="javascript:history.go(-1);">
    				<font color="red">返&nbsp;&nbsp;&nbsp;&nbsp;回</font>
    			</a>
    		</center>
		</div>
	</body>
</html>
