<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理——校园智能安讯通系统网站</title>
</head>

<frameset rows="119,*" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="<%=path%>/admin/frame/topfrm.jsp" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset id="frms" cols="182,9,*" frameborder="no" border="0" framespacing="0">
    <frame src="<%=path%>/admin/frame/xtgl.jsp" name="leftFrame" scrolling="no" noresize="noresize" id="leftFrame" title="leftFrame" />
    <frame src="<%=path%>/admin/frame/contrlFrame.html" name="contrlFrame" scrolling="no" noresize="noresize" id="contrlFrame" title="contrlFrame" />
    <frame src="<%=path%>/admin/frame/mainfrm.html" name="Main" id="Main" title="Main"/>
  </frameset>
</frameset>
<body>
</body>
</html>
