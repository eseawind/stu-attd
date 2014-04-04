function submitForm(obj){
	obj.submit();
}

function change(){
 var index = document.getElementById('s1').selectedIndex; 
if(index == 1){
  document.getElementById('s2').style.display="";
  document.getElementById('s3').style.display="none";
  document.getElementById('s4').style.display="none";
 }else if(index == 2){
  document.getElementById('s3').style.display="";
  document.getElementById('s2').style.display="none";
  document.getElementById('s4').style.display="none";
 }else if (index == 3){
   document.getElementById('s4').style.display="";
   document.getElementById('s3').style.display="none";
   document.getElementById('s2').style.display="none";
 }else {
   document.getElementById('s2').style.display="none";
   document.getElementById('s3').style.display="none";
   document.getElementById('s4').style.display="none";
 } 
}

function checkselect() {
 	 document.getElementById('s1').value="0";
 }