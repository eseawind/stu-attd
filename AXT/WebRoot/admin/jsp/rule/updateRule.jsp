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
    
    <title>角色管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	
	<link rel="stylesheet" href="<%=path %>/admin/css/v1.css" type="text/css"/>  
   
   <script type="text/javascript" src="<%=path%>/admin/common/script/v1.js"></script>  
   <script type="text/javascript" src="<%=path %>/admin/common/script/jquery-1.2.6.js"></script>
  <script type="text/javascript">
		function checkIsNull()
       { 
          var txtrule=$("#txtrule").val();
         if(txtrule=="")
         {
          $("#message_title").text("(规则名不能为空)");
          return false;
         }
          var txttype=$("#txttype").val();
         if(txttype=="")
         {
          $("#message_title").text("(类型不能为空)");
          return false;
         }
       }
       var message="<s:property value="Message"/>";
       if(message!="")
         {
          alert(message);
         }
		</script>
   
   
    </head>
   <body bgcolor="ghostwhite">
	<div class="PageTitleArea">
	    <div class="PageTitle">
	    	规则管理
	    </div>
    </div>
    
    <fieldset class="AdminSearchform">
    <legend>更改规则信息</legend>
    	<div class="grdGroupListLi">
    	 <s:form  name="form1" action="tbRuleAction!updateRule" onsubmit="return checkIsNull();" method="POST" theme="simple" name="form1" enctype="multipart/form-data">
    		 
    		 <table width="60%" border="0" cellpadding="0" cellspacing="0" id="addItemsTable">
    		 			<s:hidden value="%{tbRule.id}" name="tbRule.id"></s:hidden>
                      <tr>
                        <td><font color="red">*</font>规则名:</td>
                        <td>
		    				<s:textfield id="txtrule" name="tbRule.rule" value="%{tbRule.rule}" cssStyle="width:200px"></s:textfield>
		    				<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span id="message_title" ></span></FONT>
		    			</td>
                      </tr> 
                     <tr>
                        <td><font color="red">*</font>类型名:</td>
                        <td>
		    				<s:textfield id="txttype" name="tbRule.type" value="%{tbRule.type}" cssStyle="width:200px"></s:textfield>
		    				<FONT color="red">&nbsp;&nbsp;&nbsp;&nbsp;<span id="message_title" ></span></FONT>
		    			</td>
                      </tr> 
                      <tr>
							<td>
								所用设置：<s:select name="tbSetting.id" list="tbSettingList" listKey="id" listValue="name" />
							</td>
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
	   </table> 
  </body>
</html>
