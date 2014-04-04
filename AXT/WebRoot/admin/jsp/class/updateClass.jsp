<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>个人资料管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	
    <link rel="stylesheet" href="<%=path %>/admin/css/v1.css" type="text/css" />
    <script type="text/javascript"
			src="<%=path%>/admin/common/script/jquery-1.2.6.js"></script>
    <script type="text/javascript" src="<%=path %>/admin/common/script/user/userInfo.js"></script>
  </head>
      <script type="text/javascript">
    var message="<s:property value="Message"/>";
       if(message!="")
         {
          alert(message);
         }
    </script>
  
  <body bgcolor="ghostwhite">
     <div class="PageTitleArea">
       <div class="PageTitle">班级信息管理</div>
       <div style="width: 80%;">班级信息管理</div>
    </div>
    <fieldset class="AdminSearchform">       
       <legend>修改班级信息</legend>
       <s:form action="/axt/tbClass!updateTbClass.action" onsubmit="return validateUserName();" method="POST" theme="simple">
          <s:hidden name="tbClass.id" value="%{tbClass.id}"/>
       	  <table width="300px" border="0" cellspacing="0" class="GridViewStyle" id="grdHelpList" style="border-collapse:collapse;">
       	    <tr class="GridViewHeaderStyle">
	    	   <td width="50px"></td>
	    	   <td>班级名:</td>
	    	   <td><s:textfield id="account" name="tbClass.name" value = "%{tbClass.name}" cssStyle="width:200px"/></td>
	    	</tr>
	    	<tr class="GridViewHeaderStyle">
	    	<td></td><td></td>
	    	   <td >
        <s:submit value="确定修改" onclick="return checkIsNull();"/></td>
	    	</tr>
	      </table>
       </s:form>
    </fieldset>
    
  </body>
</html>
