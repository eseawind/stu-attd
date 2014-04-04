		function checkCharacter(){
			var pageSize  =  document.getElementById('pageSize').value;
			var jumpPage = document.getElementById('jumpPage').value;
			
			if(pageSize!=parseInt(pageSize)){
				alert('非法的页面大小');
				return false;
			}
			
			if(jumpPage!=parseInt(jumpPage)){
				alert('非法的页码');
				return false;
			}
			return true;
		}
		
		function isBlank(szStr)
		{
			if(szStr.length < 1){
    				return true;
			}
			for(i = 0; i < szStr.length; i ++){
    			if(szStr.substring(i, i + 1) != ' '){
      					return false;
    			}
			}
			return true;
		}
		