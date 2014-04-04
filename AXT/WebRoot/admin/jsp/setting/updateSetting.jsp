<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>设置管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	
	<link rel="stylesheet" href="<%=path %>/admin/css/v1.css" type="text/css"/>  
   
   <script type="text/javascript" src="<%=path%>/admin/common/script/v1.js"></script>  
   <script type="text/javascript" src="<%=path %>/admin/common/script/jquery-1.2.6.js"></script>
   <script type="text/javascript" src="<%=path %>/admin/common/script/setTime.js"></script>
  <script type="text/javascript">
       if(message!="")
         {
          alert(message);
         }
		</script>
   
   
    </head>
   <body bgcolor="ghostwhite">
	<div class="PageTitleArea">
	    <div class="PageTitle">
	    	设置管理
	    </div>
    </div>
    
    <fieldset class="AdminSearchform">
    <legend>更新设置信息</legend>
    	<div class="grdGroupListLi">
    	 <s:form  name="form1" action="tbSettingAction!updateSetting" method="POST" theme="simple" name="form1" enctype="multipart/form-data">
    		 
    		 <table width="70%" border="0" cellpadding="0" cellspacing="0" id="addItemsTable">
    		 			<tr class="GridViewHeaderStyle">
    		 			<s:hidden name="tbSetting.id" value="%{tbSetting.id}"/>
	    			<th width="5%" scope="col"><div align="center">编号</div></th>
	    			<th width="10%" scope="col"><div align="center">名称</div></th>
	    			<th width="10%" scope="col"><div align="center">早进起始</div></th>
	    			<th width="10%" scope="col"><div align="center">早进结束</div></th>
	    			<th width="10%" scope="col"><div align="center">午退起始</div></th>
	    			<th width="10%" scope="col"><div align="center">午退结束</div></th>
	    			<th width="10%" scope="col"><div align="center">午进起始</div></th>
	    			<th width="10%" scope="col"><div align="center">午进结束</div></th>
	    			<th width="10%" scope="col"><div align="center">晚退起始</div></th>
	    			<th width="10%" scope="col"><div align="center">晚退结束</div></th>
	    		</tr>
	    		<tr>
	    			<td style="width:10%;"><div align="center"><s:property value="tbSetting.id"/></div></td>
	    			<td style="width:10%;"><div align="center"><input name="tbSetting.name" type="text" value="<s:property value="tbSetting.name"/>"/></div></td>
	    			<th><input name="tbSetting.time1" type="text" value=<s:property value="tbSetting.time1"/> onclick="_SetTime(this)"/></th>
    				<th><input name="tbSetting.time2" type="text" value=<s:property value="tbSetting.time2"/> onclick="_SetTime(this)"/></th>
    				<th><input name="tbSetting.time3" type="text" value=<s:property value="tbSetting.time3"/> onclick="_SetTime(this)"/></th>
    				<th><input name="tbSetting.time4" type="text" value=<s:property value="tbSetting.time4"/> onclick="_SetTime(this)"/></th>
    				<th><input name="tbSetting.time5" type="text" value=<s:property value="tbSetting.time5"/> onclick="_SetTime(this)"/></th>
    				<th><input name="tbSetting.time6" type="text" value=<s:property value="tbSetting.time6"/> onclick="_SetTime(this)"/></th>
    				<th><input name="tbSetting.time7" type="text" value=<s:property value="tbSetting.time7"/> onclick="_SetTime(this)"/></th>
    				<th><input name="tbSetting.time8" type="text" value=<s:property value="tbSetting.time8"/> onclick="_SetTime(this)"/></th>
	    		</tr>
               </table>
			 <s:submit value="更新"/>
			 <s:reset value="重置"/>
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
    		</tr>
	   </table> 
	    <!--<s:debug></s:debug>-->
  </body>
</html>
