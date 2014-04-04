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
       <div class="PageTitle">个人资料管理</div>
       <div style="width: 80%;">个人资料管理</div>
    </div>
    <fieldset class="AdminSearchform">       
       <legend>个人资料</legend>
       <s:form action="/axt/tbUser!updateTbUser" onsubmit="return validateUserName();" method="POST" theme="simple">
          <s:hidden name="tbUser.id" value="%{tbUser.id}"/>
       	  <table width="300px" border="0" cellspacing="0" class="GridViewStyle" id="grdHelpList" style="border-collapse:collapse;">
       	    <tr class="GridViewHeaderStyle">
	    	   <td width="50px"></td>
	    	   <td>用户账号:</td>
	    	   <td><s:textfield id="account" name="tbUser.account" value = "%{tbUser.account}" cssStyle="width:200px" readonly="true"/></td>
	    	</tr>
	    	<tr class="GridViewHeaderStyle">
	    		<td></td>
				<td><font color="red">*</font>密&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
				<td>
	   			<s:textfield id = "password" name="tbUser.password" value="%{tbUser.password}" cssStyle="width:200px"></s:textfield>
	   		   	<font color="red"><SPAN id="message_password"></SPAN></font>
				</td>
			</tr>
	    	<tr class="GridViewHeaderStyle">
	    	<td></td>
	    	   <td>用户姓名:</td>
	    	   <td><s:textfield id="name" name="tbUser.username" value="%{tbUser.username}" cssStyle="width:200px" onblur="return validateUserName();"/></td>
	    	   <td><span id="message_name" style="color:red"></span></td>
	    	</tr>
	    	<tr class="GridViewHeaderStyle">
						<td></td>
						<td>
							用户状态:
						</td>
						<td>
							<s:radio list="#{1:'开启', 0:'注销'}" name="tbUser.state" value="%{tbUser.state}" />
						</td>
					</tr>
	    	<tr class="GridViewHeaderStyle">
	    	<td></td>
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
