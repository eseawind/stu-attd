function submitForm(obj){
	obj.submit();
}

function change(){
 var index = document.getElementById('s1').selectedIndex; 

if(index == 1){
  document.getElementById('s2').style.display="";
  document.getElementById('s3').style.display="none";
  document.getElementById('s4').style.display="none";
  document.getElementById('s5').style.display="none";
  document.getElementById('s6').style.display="none";
  document.getElementById('s7').style.display="none";
  document.getElementById('s8').style.display="none";
  document.getElementById('s9').style.display="none";
 }else if(index == 2){
  document.getElementById('s3').style.display="";
  document.getElementById('s2').style.display="none";
  document.getElementById('s4').style.display="none";
  document.getElementById('s5').style.display="none";
  document.getElementById('s6').style.display="none";
  document.getElementById('s7').style.display="none";
  document.getElementById('s8').style.display="none";
  document.getElementById('s9').style.display="none";
 }else if (index == 3){
  document.getElementById('s4').style.display="";
  document.getElementById('s2').style.display="none";
  document.getElementById('s3').style.display="none";
  document.getElementById('s5').style.display="none";
  document.getElementById('s6').style.display="none";
  document.getElementById('s7').style.display="none";
  document.getElementById('s8').style.display="none";
  document.getElementById('s9').style.display="none";
 }else if (index == 4){
  document.getElementById('s5').style.display="";
  document.getElementById('s2').style.display="none";
  document.getElementById('s3').style.display="none";
  document.getElementById('s4').style.display="none";
  document.getElementById('s6').style.display="none";
  document.getElementById('s7').style.display="none";
  document.getElementById('s8').style.display="none";
  document.getElementById('s9').style.display="none";
 } else if (index == 5){
  document.getElementById('s6').style.display="";
  document.getElementById('s2').style.display="none";
  document.getElementById('s3').style.display="none";
  document.getElementById('s4').style.display="none";
  document.getElementById('s5').style.display="none";
  document.getElementById('s7').style.display="none";
  document.getElementById('s8').style.display="none";
  document.getElementById('s9').style.display="none";
 }else if (index == 6){
  document.getElementById('s7').style.display="";
  document.getElementById('s2').style.display="none";
  document.getElementById('s3').style.display="none";
  document.getElementById('s4').style.display="none";
  document.getElementById('s5').style.display="none";
  document.getElementById('s6').style.display="none";
  document.getElementById('s8').style.display="none";
  document.getElementById('s9').style.display="none";
 }else if (index == 7){
  document.getElementById('s8').style.display="";
  document.getElementById('s2').style.display="none";
  document.getElementById('s3').style.display="none";
  document.getElementById('s4').style.display="none";
  document.getElementById('s5').style.display="none";
  document.getElementById('s6').style.display="none";
  document.getElementById('s7').style.display="none";
  document.getElementById('s9').style.display="none";
 }else if (index == 8){
  document.getElementById('s9').style.display="";
  document.getElementById('s2').style.display="none";
  document.getElementById('s3').style.display="none";
  document.getElementById('s4').style.display="none";
  document.getElementById('s5').style.display="none";
  document.getElementById('s6').style.display="none";
  document.getElementById('s7').style.display="none";
  document.getElementById('s8').style.display="none";
 }else{
  document.getElementById('s2').style.display="none";
  document.getElementById('s3').style.display="none";
  document.getElementById('s4').style.display="none";
  document.getElementById('s5').style.display="none";
  document.getElementById('s6').style.display="none";
  document.getElementById('s7').style.display="none";
  document.getElementById('s8').style.display="none";
  document.getElementById('s9').style.display="none";
 }
}

function checkselect() {
 	 document.getElementById('s1').value="0";
 }