<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>规则管理</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="content-language" content="zh-CN"/>
	<meta name="author" content="#"/>
	<link rel="stylesheet" href="<%=path %>/admin/css/v1.css" type="text/css"/>  
	<script type="text/javascript"
			src="<%=path%>/admin/common/script/jquery-1.2.6.js"></script>
		<script type="text/javascript">
        <script type="text/javascript" src="<%=path %>/admin/common/script/v1.js"></script>  

  </head>
  <body bgcolor="ghostwhite">
  <div class="PageTitleArea">
	    <div class="PageTitle">考勤规则管理</div>	

		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="SmallCommonTextButton" href ="<%=path %>/tbRuleAction!queryAllRule"><font color = "red">规则列表</font></a>
		<a class="SmallCommonTextButton" href ="<%=path %>/tbSettingAction!queryAllSetting"><font color = "red">设置列表</font></a>
   </div>
    
	
  </body>
</html>
