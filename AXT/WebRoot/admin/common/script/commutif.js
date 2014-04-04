//判断是否为空
function checkIsNull(){
	var title = document.getElementById("title").value;
	var date = document.getElementById("date").value;
	var content = document.getElementById("content").value;
	if($.trim(title) == ""){
	$("#message_title").text("*请输入标题*");	
	}else {
		$("#message_title").text("");
	}
	
	if($.trim(date) == ""){
	$("#message_date").text("*请选择时间*");	
	}else {
		$("#message_date").text("");
	}
	
	if($.trim(content) == ""){
	$("#message_content").text("*内容不能为空*");	
	}else {
		$("#message_content").text("");
	}
	
	if($.trim(date) == "" || $.trim(title) == "" || $.trim(content) == ""){
		return false;
	}
return true;
}
////判断图片和日期是否为空
function checkIsDateAndpictureNull(){
	var date=document.getElementById("date").value;
	var picture= document.getElementById("picture").value;
	if($.trim(date) == ""){
	  $("#message_date").text("*请选择时间*");	
	   }
	else{
		$("#message_date").text("");
	  }
	 if($.trim(picture) == ""){
	  $("#message_picture").text("*请上传图片*");	
	   }
	else{
		$("#message_picture").text("");
	  }
	 if($.trim(date) == "" || $.trim(picture) == ""){
		return false;
	}
	return  true;
}


//确定要删除
function checkIsDelete(){
		if(confirm("确定要删除")){
			return true;
		}
		return false;
		
}