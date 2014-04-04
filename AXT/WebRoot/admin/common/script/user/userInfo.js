
function checkIsNull() {
	var name = document.getElementById("name").value;
	var Email = document.getElementById("email").value;
	var phone = document.getElementById("phone").value;
	var password = document.getElementById('password1').value;
	
	var i = 0;

	if (name == "") {
		$("#message_name").text("\u7528\u6237\u540d\u4e0d\u80fd\u4e3a\u7a7a");
	}
	if (phone != "") {
		if (phone.length > 11) {
			$("#message_phone").text("\u8f93\u5165\u7684\u7535\u8bdd\u53f7\u7801\u4e0d\u7b26\u5408\u8981\u6c42");
			i++;
		}
	}
	if (Email != "") {
		if (!(Email.match(/^\w+([-+.]\w+)*@\w+([-.]\\w+)*\.\w+([-.]\w+)*$/))) {
			$("#message_email").text("\u90ae\u7bb1\u4e0d\u7b26\u5408\u8981\u6c42");
			i++;
		}
	}
	if(password=="")
	{
 		$("#message_password").text("密码不能为空");
	}
	if (i != 0 || name == "" || password == "") {
		return false;
	}
	return true;
}

