<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>学生信息管理</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<meta http-equiv="content-language" content="zh-CN" />
		<meta name="author" content="#" />
		<link rel="stylesheet" href="<%=path%>/admin/css/v1.css"
			type="text/css" />
		<script type="text/javascript" src="<%=path%>/admin/common/script/jquery-1.2.6.js"></script>
		<script type="text/javascript" src="<%=path%>/admin/common/script/v1.js"></script>
 		<script type="text/javascript" src="<%=path %>/admin/common/script/asset.js"></script>
		<script type="text/javascript"
			src="<%=path%>/admin/common/script/commonPaging.js">
</script>
		<script type="text/javascript">
var message = "<s:property value="Message"/>";
       if(message!="")
         {
          alert(message);
         }
    </script>
		<script type="text/javascript">
$(document).ready(function() {
	$("#select").change(function() {

		document.find.submit();

	});
});
</script>
	</head>
	<body bgcolor="ghostwhite">
		<div class="PageTitleArea">
			<div class="PageTitle">
				学生信息管理
			</div>

			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a class="SmallCommonTextButton"
				href="<%=path%>/admin/tbClass!getTbClassAll.action"><font
				color="red">新增学生信息</font> </a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a class="SmallCommonTextButton"
				href="<%=path%>/admin/jsp/student/importStudentByExcelFile.jsp"><font
				color="red">使用excel 文件导入学生信息</font> </a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a class="SmallCommonTextButton"
				href="<%=path%>/admin/jsp/student/importStudentPhoto.jsp"><font
				color="red">导入学生照片压缩文件</font> </a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a class="SmallCommonTextButton"
				href="<%=path%>/admin/jsp/student/download.jsp"><font
				color="red">下载学生信息 的Excel文件模板</font> </a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a class="SmallCommonTextButton"
				href="${pageContext.request.contextPath}/admin/tbClass!getTbClassAllForExportStudentInfo.action"><font
				color="red">导出一个班级的所有学生信息</font> </a>

		</div>
		<fieldset class="AdminSearchform">
			<legend>
				查询学生信息：
			</legend>
			<s:form action="/admin/tbStudent!tbStudentList.action" method="POST"
				theme="simple">
				<table>
					<tr>
						<td>
							<s:select id="s1" name="s1"
								list="#{0:'--查询全部--', 1:'学号', 2:'姓名',3:'班级'}" value="0"
								cssStyle="width:130px; margin-top:0px;" onchange="change()">
							</s:select>
						</td>

						<td id="s2" style="display: none">
							<s:textfield name="tbStudent.uid"
								cssStyle="width:130px; margin-top:0px;" value="">
							</s:textfield>
						</td>

						<td id="s3" style="display: none">
							<s:textfield name="tbStudent.name"
								cssStyle="width:130px; margin-top:0px;" value="">
							</s:textfield>
						</td>
						<td id="s4" style="display: none">
							<SELECT name="tbStudent.tbClass.id">
								<option value="">全部</option>
								<s:iterator value="tbClassList">
									<option value="<s:property value="id"/>"><s:property value="name"/></option>
								</s:iterator>
							</SELECT>
						</td>
						<td>
							<s:submit cssStyle="width:40px; margin-top:0px;" value="查询" />
						</td>
					</tr>
				</table>
			</s:form>
		</fieldset>
		<fieldset class="AdminSearchform">
			<legend>
				学生信息列表
			</legend>
			<div class="grdGroupListLi">
				<div>
					<br>
					<s:form name="form1" action="userAction!find.action" method="POST"
						theme="simple" id="from1">
					<table width="70%" border="0" cellspacing="0" class="GridViewStyle"
						id="grdHelpList" style="border-collapse: collapse;">
						<%
							int i = 0;
						%>
						<tr class="GridViewHeaderStyle">
							<th width="5%" scope="col">
								<div align="center">
									学号
								</div>
							</th>
							<th width="10%" scope="col">
								<div align="center">
									姓名
								</div>
							</th>
							<th width="5%" scope="col">
								<div align="center">
									性别
								</div>
							</th>
							<th width="10%" scope="col">
								<div align="center">
									入学日期
								</div>
							</th>
							<th width="10%" scope="col">
								<div align="center">
									父亲姓名
								</div>
							</th>
							<th width="10%" scope="col">
								<div align="center">
									父亲电话
								</div>
							</th>
							<th width="10%" scope="col">
								<div align="center">
									母亲姓名
								</div>
							</th>
							<th width="10%" scope="col">
								<div align="center">
									母亲电话
								</div>
							</th>
							<th width="10%" scope="col">
								<div align="center">
									班级
								</div>
							</th>
							<th width="20%" scope="col">
								<div align="center">
									操作
								</div>
							</th>
						</tr>
						<s:iterator value="tbStudentList">
							<tr class="grdrow">
								<td>
									<div align="center">
										<s:property value="uid" />
									</div>
								</td>
								<td style="width: 10%;">
									<div align="center">
										<s:property value="name" />
									</div>
								</td>
								<td style="width: 5%;">
									<div align="center">
										<s:if test="sex == 0">
											女
										</s:if>
										<s:else>
											男
										</s:else>
									</div>
								</td>
								<td style="width: 10%;">
									<div align="center">
										<s:property value="date" />
									</div>
								</td>
								<td style="width: 10%;">
									<div align="center">
										<s:property value="fatherName" />
									</div>
								</td>
								<td style="width: 10%;">
									<div align="center">
										<s:property value="fatherTel" />
									</div>
								</td>
								<td style="width: 10%;">
									<div align="center">
										<s:property value="motherName" />
									</div>
								</td>
								<td style="width: 10%;">
									<div align="center">
										<s:property value="motherTel" />
									</div>
								</td>
								<td style="width: 10%;">
									<div align="center">
										<s:property value="tbClass.name" />
									</div>
								</td>
								<td style="width: 15%;">
									<div align="center">
										<a
											href="<%=path%>/admin/tbStudent!getTbStudentForUpdate.action?tbStudent.id=<s:property value="id"/>">修改信息</a>
											&nbsp;&nbsp;&nbsp;
											<a
											href="<%=path%>/admin/tbStudent!graduateOrDropout.action?tbStudent.id=<s:property value="id"/>&tbStudent.type=1">毕业处理</a>
											&nbsp;&nbsp;&nbsp;
											<a
											href="<%=path%>/admin/tbStudent!graduateOrDropout.action?tbStudent.id=<s:property value="id"/>&tbStudent.type=2">退学处理</a>
									</div>
								</td>
							</tr>
						</s:iterator>
					</table>
					<div id='pageItem' style="text-align: center;">
							<%@ include file="/admin/common/jsp/commonPaging.jsp"%>
						</div>
						</s:form>
				</div>
				
				
			</div>
			
		</fieldset>

	</body>
</html>

