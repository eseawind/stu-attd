	<%@ page language="java"  contentType="text/html; charset=UTF-8"%>
	<script type="text/javascript" src="/AXT/admin/common/script/fileComm.js"></script>
	
		<table width="55%" border="0" cellpadding="0" cellspacing="0" id="falshTable">
			<tr>
	    		<td>F图片：<s:file name="flashFile.file" cssStyle="width:200px"/>
	    		&nbsp;&nbsp;&nbsp;&nbsp; 
	    		</td>
	    		<td>
	    			描述：<s:textfield name="flashFile.pictureDescribe" cssStyle="width:160px"/>&nbsp;&nbsp;&nbsp;&nbsp;   (Flash图片描述)
	    		</td>
	    	</tr>
	    </table>
	    <br>
	    <table width="53%" border="0" cellpadding="0" cellspacing="0" id="pictureTable">
	    	<tr>
	    		<td>
	    			图片1：<s:file name="pictureFileList[0].file" cssStyle="width:200px"/>
	    		</td>
	    		<td>
	    			描述：<s:textfield name="pictureFileList[0].pictureDescribe" cssStyle="width:160px"/>
	    		</td>
	    		<td>
	    			<input type="button" value="增加" onclick="addPicture();" style="height:24px;width:70px;"/>
	    		</td>
	    	</tr>
		</table>
			<br>
		<table width="59%" border="0" cellpadding="0" cellspacing="0" id="annexTable">
	    	<tr>
	    		<td>附件1：<s:file name="annexFileList[0].file" cssStyle="width:200px"/><input type="hidden" name="annexFileList[0].pictureDescribe" value=""></input></td>
				<td><input type="button" value="增加" onclick="addAnnex();" style="height:24px;width:70px;" /></td>
	    	</tr>
	    </table>