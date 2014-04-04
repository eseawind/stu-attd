<%@ page language="java"  contentType="text/html; charset=UTF-8"%>
 				<span id="f"><s:submit id="first" name="first" value="首页" onclick="document.getElementById('operation').value='first';"  cssClass="SmallCommonTextButton"></s:submit></span>
 				<span id="p"><s:submit id="prev" name="prev" value="上一页" onclick="document.getElementById('operation').value='previous';"  cssClass="SmallCommonTextButton"></s:submit></span>
 				<span id="n"><s:submit id="next" name="next"  value="下一页" onclick="document.getElementById('operation').value='next';"   cssClass="SmallCommonTextButton"></s:submit></span>
 				<span id="l"><s:submit id="last" name="last"  value="尾页" onclick="document.getElementById('operation').value='last';"   cssClass="SmallCommonTextButton"></s:submit></span>
			<span id=''></span>
			<span id=''></span>
			共<s:property value="totalRows"/>条 &nbsp; 记录<s:textfield name="pageSize" size="2" id="pageSize"></s:textfield>条/页&nbsp; 
			页次<s:property value="currentPage"/>/<s:property value="totalPages"/>&nbsp;
			转<s:textfield name="jumpPage" size="2" id='jumpPage'/>页<s:submit value="跳转到" onclick="document.getElementById('operation').value='gotoPages';return checkCharacter();" cssClass="SmallCommonTextButton"></s:submit>
 			<input type="hidden" name="operation" id="operation" />
 			<input type="hidden" name="currentPage" id="currentPage" value='${requestScope.currentPage }'/>
 			<input type="hidden" name="totalRows" id="totalRows"  value='${requestScope.totalRows }'/>
			<input type="hidden" name="totalPages" id="totalPages" value='${requestScope.totalPages }' />
		
		
		<script type="text/javascript">
			  	  	var cont  = document.getElementById('currentPage').value;
					var pageN = document.getElementById('totalPages').value; 
					if(cont==pageN && cont!=0)
						{
							document.getElementById('next').disabled=true;
							document.getElementById('last').disabled=true;
					}else{
					
					}
					
					if((cont-1)==0)
					{
							document.getElementById('prev').disabled=true;
							document.getElementById('first').disabled=true;
					}else{
						
					}
					if(pageN==0){
							document.getElementById('next').disabled=true;
							document.getElementById('last').disabled=true;
							document.getElementById('prev').disabled=true;
							document.getElementById('first').disabled=true;
					}
		</script>
