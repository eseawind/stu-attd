<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>系统日志管理</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="content-language" content="zh-CN"/>
	<meta name="author" content="#"/>
	<link rel="stylesheet" href="<%=path %>/admin/css/v1.css" type="text/css"/>  
	<script type="text/javascript"
			src="<%=path%>/admin/common/script/jquery-1.2.6.js"></script>
			<script type="text/javascript"
			src="<%=path%>/admin/common/script/Calendar.js"></script>
		<script type="text/javascript">
        <script type="text/javascript" src="<%=path %>/admin/common/script/v1.js"></script>  

   <script type="text/javascript" src="<%=path %>/admin/common/script/commonPaging.js"></script> 
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
    </script>
  </head>
  <body bgcolor="ghostwhite">
  <fieldset class="AdminSearchform">
			<legend>
				系统日志查询
			</legend>
			<div class="grdGroupListLi">
					 <s:form action="tbLogAction!queryAllUserLog" method="POST"
					theme="simple" name="form1" enctype="multipart/form-data">
					<table width="60%" border="0" cellpadding="0" cellspacing="0"
						id="addItemsTable">
						<tr>
						<s:hidden name="tbUser.id" value="%{tbUser.id}"></s:hidden>
	    <td>
	        &nbsp;&nbsp;&nbsp;&nbsp; 操作用户：
	   </td>
	   <td>
	     <s:textfield class ="input" id="title" name="userName"
									cssStyle="width:200px"/>
	</td>
	<td>操作时间：</td>
	<TD>
	<s:textfield class ="input" id="date" name="logDate"
									onclick="MyCalendar.SetDate(this)" cssStyle="width:200px"
									readonly="true"/>
   </TD>
									<td>
									<s:submit name="提交" value="查询"/>
									</td>
									</tr>
					</table>
				</s:form>
			</div>
		</fieldset>
   <div class="PageTitleArea">

   <fieldset class="AdminSearchform">       
       <legend>系统用户列表</legend>             
       <div class="grdGroupListLi">
	     <div>
	       <br><s:form name ="form1" action="tbLogAction!queryAllUserLog"  method="POST" theme="simple" id="from1">
    	       <s:hidden name="logDate" value="%{logDate}"></s:hidden>
    	       <s:hidden name="userName" value="%{userName}"></s:hidden>
    	       <s:hidden name="tbUser.id" value="%{tbUser.id}"></s:hidden>
    	    <table width="70%" border="0" cellspacing="0" class="GridViewStyle" id="grdHelpList" style="border-collapse:collapse;">
    	     <% int i = 0; %>
	    		<tr class="GridViewHeaderStyle">
	    			
	    			<th width="15%" scope="col"><div align="center">操作用户</div></th>
	    			<th width="15%" scope="col"><div align="center">操作时间</div></th>
	    			<th width="15%" scope="col"><div align="center">操作信息</div></th>
	    			<th width="20%" scope="col"><div align="center">操作</div></th>
	    			
	    		</tr>
    			<s:iterator value="#request.tbLogList">
    			<tr class="grdrow">
    				<td style="width:15%;"><div align="center"><s:property value="tbUser.username"/></div></td>
					<td style="width:15%;"><div align="center"><s:date name="date" format="yyyy-MM-dd HH:MM:ss"/></div></td>
					<td style="width:15%;"><div align="center"><s:property value="content"/></div></td>
	    				 <td style="width:20%;" nowrap="nowrap" class="handleRightSelect"><div align="center">&nbsp;&nbsp;&nbsp;
    						
    						
						<a class="SmallCommonTextButton" href='
    						    <s:url action="tbLogAction!deleteUserLogById.action">
    						    <s:param name="tbLog.id" value="id" />
    						    <s:param name="tbUser.id" value="#session.currentUser.id" />
    						    <s:param name="logDate" value="%{logDate}"/>
    						    <s:param name="userName" value="userName"/>
    							 </s:url>' onclick="return confirm('确定将此记录删除?')">删除</a>	    	
    				
    				</div></td>
	    			
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

