
//上传图片个数的增加和删除
function addPicture(){
	var table1 = document.getElementById("pictureTable");
	var lastRow = table1.rows.length;
	var row = table1.insertRow(lastRow);
	
	//图片
	var cell1 = row.insertCell(0);
	var i = lastRow+1;
	var textNode1 = document.createTextNode('图片'+i+'：');
	var fileNode =  document.createElement("input");
	fileNode.type = "file";
	fileNode.name = "pictureFileList["+ (i-1) + "].file";
	fileNode.style.width = "200px";
	cell1.appendChild(textNode1);
	cell1.appendChild(fileNode);
	
	//描述
	var cell2 = row.insertCell(1);
	var textNode2 = document.createTextNode('描述：');
	var textFiledNode = document.createElement("input");
	textFiledNode.type = "text";
	textFiledNode.name = "pictureFileList["+ (i-1) +"].pictureDescribe";
	textFiledNode.style.width = "160px";
	cell2.appendChild(textNode2);
	cell2.appendChild(textFiledNode);
	
	//删除按钮
	var cell3 = row.insertCell(2);
	var buttonNode = document.createElement("input");
	buttonNode.type = "button";
	buttonNode.value  = "删除";
	buttonNode.onclick = function(){
		var tbl = document.getElementById('pictureTable');
		var lastR = tbl.rows.length;
		 tbl.deleteRow(lastR - 1);
	}
	buttonNode.style.width = "70px";
	buttonNode.style.height ="24px";
	cell3.appendChild(buttonNode);	
}

function addAnnex(){
	var table1 = document.getElementById("annexTable");
	var lastRow = table1.rows.length;
	var row = table1.insertRow(lastRow);
	
	//附件
	var cell1 = row.insertCell(0);
	var i = lastRow+1;
	var textNode1 = document.createTextNode('附件'+i+'：');
	var fileNode =  document.createElement("input");
	var hiddenNode = document.createElement("input");
	
	
	fileNode.type = "file";
	fileNode.name = "annexFileList[" + (i-1) + "].file";
	fileNode.style.width = "200px";
	
	hiddenNode.type = "hidden";
	hiddenNode.name = "annexFileList["+ (i-1) +"].pictureDescribe";
	hiddenNode.value = "";
	
	cell1.appendChild(textNode1);
	cell1.appendChild(fileNode);
	cell1.appendChild(hiddenNode);
	
	//删除按钮
	var cell2 = row.insertCell(1);
	var buttonNode = document.createElement("input");
	buttonNode.type = "button";
	buttonNode.value  = "删除";
	buttonNode.onclick = function(){
		var tbl = document.getElementById('annexTable');
		var lastR = tbl.rows.length;
		 tbl.deleteRow(lastR - 1);
	}
	buttonNode.style.width = "70px";
	buttonNode.style.height ="24px";
	cell2.appendChild(buttonNode);	
}
