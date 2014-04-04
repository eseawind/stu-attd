<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'excelTest.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/v1.css"
			type="text/css" />
  </head>
  
  <body>
    <form action="${pageContext.request.contextPath}/admin/tbStudent!addTbStudentBatch.action" method="post" enctype="multipart/form-data">
	<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce">
		<tr bgcolor="#FFFFFF" class="STYLE19">
			<td align="right" width="50%">excel表1:</td>
			<td width="50%">
				<input type="file" name="excelFile.upload"/>
			</td>
		</tr>
		<tr bgcolor="#FFFFFF" class="STYLE19">
			<td align="right" width="50%">excel表2:</td>
			<td width="50%">
				<input type="file" name="excelFile.upload"/>
			</td>
		</tr>
		<tr bgcolor="#FFFFFF" class="STYLE19">
			<td align="right" width="50%">excel表3:</td>
			<td width="50%">
				<input type="file" name="excelFile.upload"/>
			</td>
		</tr>
		<tr bgcolor="#FFFFFF" class="STYLE19">
			<td align="right" width="50%">excel表4:</td>
			<td width="50%">
				<input type="file" name="excelFile.upload"/>
			</td>
		</tr>
		<tr bgcolor="#FFFFFF" class="STYLE19">
			<td align="right" width="50%">excel5表:</td>
			<td width="50%">
				<input type="file" name="excelFile.upload"/>
			</td>
		</tr>
		<tr bgcolor="#FFFFFF" class="STYLE19">
			<td colspan="2" align="center">
				<input type="submit" value="提交">
			</td>
		</tr>
		
	</table>	
	</form>
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
