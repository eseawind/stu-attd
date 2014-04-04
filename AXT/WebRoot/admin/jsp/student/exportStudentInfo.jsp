<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>导出一个班级的所有学生的信息</title>
    
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
    <form action="${pageContext.request.contextPath}/admin/tbStudent!exportTbStudentToExcel.action" method="post">
		请选择要导出的班级：<SELECT name="tbClass.id">
			<s:iterator value="tbClassList">
				<option value="<s:property value="id"/>"><s:property value="name"/></option>
			</s:iterator>
		</SELECT>
		请选择导出的文件类型： <SELECT name="type">
			<option value="1">office2003(.xls)</option>
			<option value="2">office2007(.xlsx)</option>
		</SELECT>
		<input type="submit" value="确定导出"/>
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
