
		
		function checkIsNull()
		{ 
			var number=$("#number").val();
			var price=$("#price").val();
			
			if(number=="")
			{
				$("#message_number").text("(集号不能为空)");
				return false;
			}
			if(price=="")
			{
				$("#message_price").text("(价格不能为空)");
				return false;
			}
			if(isNaN(price)){
				$("#message_price").text("(请输入合法的价格)");
				return false;
			}
			if(urlstate != 1) {
				$("#message_url").text("(请确认片集URL的合法性！)");
				return false;
			}
		}