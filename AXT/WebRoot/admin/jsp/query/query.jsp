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
		<title>查询管理</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<meta http-equiv="content-language" content="zh-CN" />
		<meta name="author" content="#" />
		<link rel="stylesheet" href="<%=path%>/admin/css/v1.css"
			type="text/css" />
		<script type="text/javascript" src="<%=path%>/admin/common/script/jquery-1.2.6.js"></script>
    <script type="text/javascript" src="<%=path %>/admin/common/script/v1.js"></script>  
   	<script type="text/javascript" src="<%=path %>/admin/common/script/commonPaging.js"></script>
   	<script type="text/javascript" src="<%=path%>/admin/js/Calendar.js"></script>
		<script type="text/javascript">
var message = "<s:property value="message"/>";
       if(message!="")
         {
          alert(message);
         }
    </script>
	</head>
	<body bgcolor="ghostwhite">
		<div class="PageTitleArea">
			<div class="PageTitle">
				查询管理
			</div>
		</div>
		<fieldset class="AdminSearchform">
  		<div class="grdGroupListLi">
  		<s:form action="queryAction!queryAllRecord" method="POST"
  				theme="simple" name="form" enctype="multipart/form-data">
  				<table width="40%" border="0" cellpadding="0" cellspacing="0"id="addItemsTable"><br/>
		  			<tr>
		  				<td>
		  					查询所有记录：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  				</td>
						<td>
							<s:submit id="submit" value="查询" onclick="return checkIsNull();"/>
						</td>
					</tr>
				</table>
			</s:form>
			
			<legend>资产记录查询</legend>
			
			<s:form action="queryAction!queryRecordByType" method="POST"
  				theme="simple" name="form" enctype="multipart/form-data">
  				<table width="40%" border="0" cellpadding="0" cellspacing="0"id="addItemsTable"><br/>
		  			<tr>
		  					考勤类型:
					</tr>
					<tr>
		  					<s:radio list="#{0:'入库', 1:'领用',2:'调拨',3:'维修',4:'报废'}" name="tbRecord.tbRecordType" value = "0"/>
		  			</tr>
		  			<tr>
							<s:submit id="submit" value="查询" onclick="return checkIsNull();"/>
					</tr>
				</table>
			</s:form>
			
			<s:form action="queryAction!queryRecordByHandUser" method="POST"
  				theme="simple" name="form" enctype="multipart/form-data">
  				<table width="40%" border="0" cellpadding="0" cellspacing="0"id="addItemsTable"><br/>
		  			<tr>
		  				<td>
		  					经手人：&nbsp;&nbsp;&nbsp;
		  				</td>
		  				<td>
		  					<s:select list="tbUserList" listValue="tbUserName" listKey="tbUserName" name="tbRecord.tbUser.tbUserName" cssStyle="width:150px">
		  					</s:select>
		  					</td>
						<td>
							<s:submit id="submit" value="查询" onclick="return checkIsNull();"/>
						</td>
					</tr>
				</table>
			</s:form>
			
			<s:form action="queryAction!queryRecordByRemark" method="POST"
  				theme="simple" name="form" enctype="multipart/form-data">
  				<table width="40%" border="0" cellpadding="0" cellspacing="0"id="addItemsTable"><br/>
		  			<tr>
		  				<td>
		  					记录备注：&nbsp;&nbsp;
		  				</td>
		  				<td>
		  					<s:textfield class ="input" id="tbRecordRemark" name="tbRecord.tbRecordRemark"
		  						cssStyle="width:150px"/>
		  				</td>
						<td>
							<s:submit id="submit" value="查询" onclick="return checkIsNull();"/>
						</td>
					</tr>
				</table>
			</s:form>
			
			<s:form action="queryAction!queryRecordBySDate" method="POST"
  				theme="simple" name="form" enctype="multipart/form-data">
  				<table width="40%" border="0" cellpadding="0" cellspacing="0"id="addItemsTable"><br/>
		  			<tr>
		  				<td>
		  					开始时间：&nbsp;&nbsp;
		  				</td>
		  				<td>
		  					<s:textfield id="tbRecordSdate" name="tbRecord.tbRecordSdate"
										onclick="MyCalendar.SetDate(this)" cssStyle="width:150px"
										readonly="true">
							</s:textfield>
		  				</td>
						<td>
							<s:submit id="submit" value="查询" onclick="return checkIsNull();"/>
						</td>
					</tr>
				</table>
			</s:form>
			
			
			<s:form action="queryAction!queryRecordByEDate" method="POST"
  				theme="simple" name="form" enctype="multipart/form-data">
  				<table width="40%" border="0" cellpadding="0" cellspacing="0"id="addItemsTable"><br/>
		  			<tr>
		  				<td>
		  					结束时间：&nbsp;&nbsp;
		  				</td>
		  				<td>
		  					<s:textfield id="tbRecordEdate" name="tbRecord.tbRecordEdate"
										onclick="MyCalendar.SetDate(this)" cssStyle="width:150px"
										readonly="true">
							</s:textfield>
		  				</td>
						<td>
							<s:submit id="submit" value="查询" onclick="return checkIsNull();"/>
						</td>
					</tr>
				</table>
			</s:form>
			
		</div>
  </body>
</html>
