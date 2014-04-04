function checkIsNull()
{
var account = document.getElementById('account').value;
var name = document.getElementById('name').value;
var password = document.getElementById('password').value;
var Email = document.getElementById('email').value;
var phone = document.getElementById('phone').value;
var i=0;
if(account=="")
{
 $("#message_account").text("帐号不能为空");
}
if(name=="")
{
 $("#message_name").text("用户名不能为空");
}
if(password=="")
{
 $("#message_password").text("密码不能为空");
}
if(phone!="")
 {  
 
   if(phone.length>11)
   {
    $("#message_phone").text("输入的电话号码不符合要求");
      i++;
   }
 }
 if(Email!="")
 {
   if(!(Email.match(/^\w+([-+.]\w+)*@\w+([-.]\\w+)*\.\w+([-.]\w+)*$/)))
    {
   $("#message_email").text("邮箱不符合要求");
   i++;
    }
   
 }
  if(i!=0||account==""||name==""||password=="")
    {
    return false;
    }
return true;

}
	