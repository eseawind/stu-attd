
		function checkIsNull()
		{ 
			var totalnum=$("#totalnum").val();
			var year=$("#year").val();
			var director=$("#director").val();
			var actor=$("#actor").val();
			
			if(totalnum == "")
			{
				$("#message_totalnum").text("(影片总集数不能为空)");
				return false;
			}
			if(year.length != 4)
			{
				$("#message_year").text("(请输入四位的年份值)");
				return false;
			}
			if(director.length > 20)
			{
				$("#message_director").text("(导演名不会多于20个汉字)");
				return false;
			}
			if(actor.length > 200)
			{
				$("#message_actor").text("(主要演员名不会多于200个汉字)");
				return false;
			}
			
		}
