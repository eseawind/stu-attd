<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>系统用户管理</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="content-language" content="zh-CN"/>
	<meta name="author" content="#"/>
	<link rel="stylesheet" href="<%=path %>/admin/css/v1.css" type="text/css"/>  
	<script type="text/javascript" src="<%=path%>/admin/common/script/jquery-1.2.6.js"></script>
    <script type="text/javascript" src="<%=path %>/admin/common/script/v1.js"></script>  
    <script type="text/javascript" src="<%=path %>/admin/common/script/commonPaging.js"></script> 
    <script type="text/javascript" src="<%=path %>/admin/common/script/asset.js"></script>
    <script type="text/javascript">
    var message="<s:property value="Message"/>";
       if(message!="")
         {
          alert(message);
         }
    </script>
    <script type="text/javascript">
    $(document).ready(function()
    {
    $("#select").change(function()
    {
      
         document.find.submit();
       
    });
    });
    
    function logout(id) {
    	window.location.href = "${pageContext.request.contextPath}/admin/tbUser!logoutUser.action?tbUser.id="+id;
    }
    </script>
  </head>
  <body bgcolor="ghostwhite">
   <div class="PageTitleArea">
	    <div class="PageTitle">系统用户管理</div>	

		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="SmallCommonTextButton" href ="<%=path %>/admin/jsp/user/createUser.jsp"><font color = "red">新增系统用户</font></a>

   </div>
   <fieldset class="AdminSearchform">
			<legend>
				查询用户：
			</legend>
			<s:form action = "/admin/tbUser!queryTbUserInfo.action"  method="POST" theme="simple">	
		     <table>
		  		<tr>
		    		 <td>
		       			 <s:select id = "s1" name = "s1" list = "#{0:'--查询全部--', 1:'用户名', 2:'账号'}" value = "0"  cssStyle="width:130px; margin-top:0px;" onchange="change()"> </s:select> 
		     		 </td>
		     		 
		     		 <td id="s2" style="display:none"> 		       		
		  				<s:textfield name="tbUser.username" cssStyle="width:130px; margin-top:0px;"  value = ""> </s:textfield>				  
		    		 </td>
		
		     		  <td id="s3" style="display:none"> 
		     		  	  <s:textfield name="tbUser.account" cssStyle="width:130px; margin-top:0px;"  value = ""> </s:textfield>				              
		    		  </td>
		            
		    			<td>  		   
		  				 	<s:submit cssStyle = "width:40px; margin-top:0px;" value="查询"/>
		            	</td>
		 		</tr>
			  </table>	
			</s:form>	
		</fieldset>
   <fieldset class="AdminSearchform">       
       <legend>系统用户列表</legend>             
       <div class="grdGroupListLi">
	     <div>
	       <br><s:form name ="form1" action="userAction!find.action"  method="POST" theme="simple" id="from1">
    	       <s:hidden name="state" value="%{state}"></s:hidden>
    	       <s:hidden name="tbRole.tbRoleId" value="%{tbRole.tbRoleId}"></s:hidden>
    	    <table width="70%" border="0" cellspacing="0" class="GridViewStyle" id="grdHelpList" style="border-collapse:collapse;">
	    		<tr class="GridViewHeaderStyle">
	    			<th width="15%" scope="col"><div align="center">编号</div></th>
	    			<th width="15%" scope="col"><div align="center">帐号名</div></th>
	    			<th width="15%" scope="col"><div align="center">用户名</div></th>
	    			<th width="15%" scope="col"><div align="center">状态</div></th>
	    			<th width="40%" scope="col"><div align="center">基本操作</div></th>
	    			
	    		</tr>
    			<s:iterator value="tbUserList">
    			<tr class="grdrow">
    				<td style="width:15%;"><div align="center"><s:property value="id"/></div></td>
					<td style="width:15%;"><div align="center"><s:property value="account"/></div></td>
	    			<td style="width:15%;"><div align="center"><s:property value="username"/></div></td>
	    			<td style="width:15%;"><div align="center"><s:property value="state"/></div></td>
	    			<td style="width:10%;" nowrap="nowrap" class="handleRightSelect" align="center">
	    				  <s:if test = "state == 1">                    
	    				  <a class="SmallCommonTextButton" href='javascript:logout(<s:property value="id"/>)'>注销用户</a>    
    					  </s:if> 
    					  <s:else>
    					  		<a class="SmallCommonTextButton" href='javascript:logout(<s:property value="id"/>)'><font color= "red">启用用户</font></a>
    					  </s:else>							
	    			&nbsp;&nbsp;&nbsp;						     
    						<a class="SmallCommonTextButton" href='${pageContext.request.contextPath}/admin/tbUser!deleteTbUser.action?tbUser.id=<s:property value="id"/>' onclick="return confirm('确定将此记录删除?')">删除用户</a>	
	    			</td>
    			</tr>
    			</s:iterator>
    		</table>
    		<div id='pageItem' style="text-align:center;">
			<%@ include file="/admin/common/jsp/commonPaging.jsp" %> 
			</div>
			
    	</s:form>
      </div>
    </div>
  </fieldset>
  </body>
</html>
