<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>查询管理</title>
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
    <script type="text/javascript" src="<%=path%>/admin/js/Calendar.js"></script>
   	<script type="text/javascript" src="<%=path %>/admin/common/script/record.js"></script>
  </head>
  <body bgcolor="ghostwhite" onbeforeunload="checkselect()">
   <fieldset class="AdminSearchform">   
   <div class="PageTitleArea">
		<div class="PageTitle">
		 <legend>历史记录查询</legend> 
		</div>
			
			<s:form action = "queryAction!queryRecordBy"  method="POST" theme="simple">	
		     <table>
		  		<tr>
		    		 <td>
		       			 <s:select id = "s1" name = "s1" list = "#{0:'--查询全部--', 1:'考勤规则类型', 2:'记录时间', 3:'学生姓名'}" value = "0"  cssStyle="width:130px; margin-top:0px;" onchange="change()"> </s:select> 
		     		 </td>
		     		 
		     		 <!-- 考勤类型-->
		     		 <td id="s2" style="display:none"> 		       		
		  				<s:select list="#{0:'上午正常', 1:'上午迟到',2:'上午早退',3:'上午旷课',4:'下午正常',5:'下午迟到',6:'下午早退',7:'下午旷课'}" name="tbRecord.type" cssStyle="width:130px; margin-top:0px;"></s:select>				  
		    		 </td>
		
		           <!-- 记录时间 -->
		           <td id="s3" style="display:none">	
	  					<s:textfield id="date" name="recordDate"
									onclick="MyCalendar.SetDate(this)" cssStyle="width:150px"
									readonly="true">
						</s:textfield>
		           </td>
		           
		            <td id="s4" style="display:none">	
	  					<s:textfield id="name" name="name">
	  					</s:textfield>
		           </td>
		           
	    			<td>  		   
	  				 	<s:submit cssStyle = "width:40px; margin-top:0px;" value="查询"/>
	            	</td>
		            	
		 		</tr>
			  </table>	
			</s:form>	
		</div>
       <div class="grdGroupListLi">
	     <div>
	    	 <legend>&nbsp;&nbsp;历史记录列表</legend> 
	       <br><s:form name ="form1" action="queryAction!queryAllRecord.action"  method="POST" theme="simple" id="from1">
    	     <table width="70%" border="0" cellspacing="0" class="GridViewStyle" id="grdHelpList" style="border-collapse: collapse;">
						<%
							int i = 0;
						%>
						
					<tr class="GridViewHeaderStyle">
							<th width="20%" scope="col">
								<div align="center">
									记录编号
								</div>
							</th>
							<th width="20%" scope="col">
								<div align="center">
									考勤类型
								</div>
							</th>
							<th width="20%" scope="col">
								<div align="center">
									学生姓名
								</div>
							</th>
							<th width="20%" scope="col">
								<div align="center">
									学生编号
								</div>
							</th>
							<th width="20%" scope="col">
								<div align="center">
									记录日期
								</div>
							</th>
						</tr>
						<s:iterator value="#request.recordList">
							<tr class="grdrow">
								<td style="width: 20%;">
									<div align="center"><%=++i%></div>
								</td>
								<td style="width: 20%;">
									<div align="center">
										<s:if test="type==0"><font color="purple">上午正常</font></s:if>
										<s:elseif test="type==1"><font color="brown">上午迟到</font></s:elseif>
										<s:elseif test="type==2"><font color="red">上午早退</font></s:elseif>
										<s:elseif test="type==3"><font color="black">上午旷课</font></s:elseif>
										<s:elseif test="type==4"><font color="Lime">下午正常</font></s:elseif>
										<s:elseif test="type==5"><font color="Fuchsia">下午迟到</font></s:elseif>
										<s:elseif test="type==6"><font color="Olive">下午早退</font></s:elseif>
										<s:elseif test="type==7"><font color="Aqua">下午旷课</font></s:elseif>
									</div>
								</td>
								<td style="width: 20%;">
									<div align="center">
										<s:property value="tbStudent.name"/>
									</div>
								</td>
								<td style="width: 20%;">
									<div align="center">
										<s:property value="tbStudent.id"/>
									</div>
								</td>
								<td style="width: 20%;">
									<div align="center">
									<!-- <s:property value="date"/> -->	
									<s:date name="date" format="yyyy-MM-dd hh:MM:ss" />
									</div>
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
