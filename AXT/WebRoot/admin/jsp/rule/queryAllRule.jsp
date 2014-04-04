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
  <div class="PageTitleArea">
	    <div class="PageTitle">规则管理</div>	

		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="SmallCommonTextButton" href ="<%=path %>/tbRuleAction!excute"><font color = "red">新增规则</font></a>

   </div>
   <fieldset class="AdminSearchform">       
       <legend>规则列表</legend>             
       <div class="grdGroupListLi">
	     <div>
	       <br><s:form name ="form1" action="tbRuleAction!queryAllRule.action"  method="POST" theme="simple" id="from1">
    	    <table width="70%" border="0" cellspacing="0" class="GridViewStyle" id="grdHelpList" style="border-collapse:collapse;">
    	     <% int i = 0; %>
	    		<tr class="GridViewHeaderStyle">
	    			<th width="15%" scope="col"><div align="center">编号</div></th>
	    			<th width="15%" scope="col"><div align="center">规则</div></th>
	    			<th width="15%" scope="col"><div align="center">类型</div></th>
	    			<th width="15%" scope="col"><div align="center">设置名称</div></th>
	    			<th width="20%" scope="col"><div align="center">操作</div></th>
	    		</tr>
    			<s:iterator value="#request.tbRuleList">
    			<tr class="grdrow">
    				<td style="width:15%;"><div align="center"><%=++i %></div></td>
					<td style="width:15%;"><div align="center"><s:property value="rule"/></div></td>
	    			<td style="width:15%;"><div align="center">
	    			<s:if test="type==0">星期</s:if>
	    			<s:elseif test="type==1">月 日</s:elseif>
	    			<s:elseif test="type==2">年 月 日</s:elseif>
	    			<!-- <s:property value="type"/></div></td> -->
	    			<td style="width:15%;"><div align="center"><s:property value="tbSetting.name"/></div></td>
	    			<td style="width:20%;" nowrap="nowrap" class="handleRightSelect"><div align="center">&nbsp;&nbsp;&nbsp;						     
    						<a class="SmallCommonTextButton" href='
	                        	<s:url action="tbRuleAction!queryRuleById.action">
	                        	<s:param name="tbRule.id" value="id" /> 
	                        	</s:url>'>编辑</a>&nbsp;&nbsp;&nbsp;			
    						<a class="SmallCommonTextButton" href='
    						    <s:url action="tbRuleAction!deleteRuleById.action">
    						    <s:param name="tbRule.id" value="id" />
    						    <s:param name="tbRule.rule" value="rule" />
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
	    	  <tr>
		</table> 
  </body>
</html>
