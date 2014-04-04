	// JavaScript Document
	var obsidianNormal, obsidianHover;
	var porcelainLeft, porcelainMiddle, porcelainRight;
	var porcelain2Left, porcelain2Middle, porcelain2Right;
	var selectedObsidianID = '';
	var firstObsidianID = '';
	var navTimer, navTimerRunning = false;
	var oTimer, oTimerRunning = false;
	var p2Timer, p2timerRunning = false;
	var porcelainOnID = '';
	var pageloaded = false;

	function $_getID(id)
	{
		return document.getElementById(id);
	}

	function obsidianMouseOver(obsidianID)
	{
		if (pageloaded)
		{
			if (porcelainOnID != '')
				turnOff();
			oTimer = setTimeout('obsidianOn(\'' + obsidianID + '\')',150);
			oTimerRunning = true;
		}
	}
	function obsidianOn(obsidianID)
	{
		var oldIndex = parseInt(selectedObsidianID.replace('obsidian',''))-1;
		var newIndex = parseInt(obsidianID.replace('obsidian',''))-1;
	  
		// unselect currently selected
		if (selectedObsidianID != null && selectedObsidianID != '')
		{
			var selectedObsidian = $_getID(selectedObsidianID);
			var selectedPorcelain = $_getID(selectedObsidianID.replace('obsidian','porcelainContent'));
			selectedObsidian.src = obsidianNormal[oldIndex].src;
			selectedPorcelain.className = 'menuhide';
		}
		// select new
		if (selectedObsidianID != null && selectedObsidianID != '')
		{
			var obsidianImage = $_getID(obsidianID);
			var porcelainContentID = obsidianID.replace('obsidian','porcelainContent');
			var porcelainContent = $_getID(porcelainContentID);
			
			obsidianImage.src = obsidianHover[newIndex].src;
			porcelainContent.className = 'menushow';
			alignPorcelainContent(obsidianID,porcelainContentID);
			selectedObsidianID = obsidianID;
		}
	}

	function obsidianMouseOut(obsidianID)
	{
		if (oTimerRunning)
			clearTimeout(oTimer);
		oTimerRunning = false;
	}
	function porcelainMouseOver(porcelainID, contentID)
	{
		if (porcelainOnID != '')
			turnOff();
		// hover button
		var selectedPorcelain = $_getID(porcelainID);
		//alert(selectedPorcelain.className);
		if (selectedPorcelain.className != 'hover')
		{
			selectedPorcelain.className = 'hover';
			handleDividerImages(porcelainID,true);
		}
			// display flyout if neccessary
			var flyout = $_getID(porcelainID + '_FlyOut');
			if (flyout != null)
			{
				flyout.className = 'porcelain2show';
				// orientation flyout location
				var offsetTop = selectedPorcelain.offsetTop; 
				var offsetLeft = selectedPorcelain.offsetLeft; 
				var offsetWidth = selectedPorcelain.offsetWidth; 
				var offsetHeight = selectedPorcelain.offsetHeight; 
				while(selectedPorcelain = selectedPorcelain.offsetParent) 
				{ 
					offsetTop += selectedPorcelain.offsetTop; 
					offsetLeft += selectedPorcelain.offsetLeft; 
				}
				
				flyout.style.left = offsetLeft + "px";
				flyout.style.top = (offsetTop + offsetHeight -3) + "px";

				porcelainOnID = porcelainID;
			}
	}

	function porcelainMouseOut(porcelainID)
	{
		var flyout = $_getID(porcelainID + '_FlyOut');
		//alert(flyout);
		if (flyout == null)
		{
			// unhover button
			var selectedPorcelain = $_getID(porcelainID);
			//alert(selectedPorcelain.className);
			if (selectedPorcelain.className == 'hover')
			{
				selectedPorcelain.className = '';
				handleDividerImages(porcelainID,false);
			}
		}
		else
		{
			p2Timer = setTimeout("turnOff()",500);
			p2timerRunning = true;
		}
	}
	function porcelain2MouseOver(porcelain2ID, parentID)
	{
		if (p2timerRunning)
			clearTimeout(p2Timer);
		porcelainOnID = parentID;
		var item = $_getID(porcelain2ID);
		item.className = 'porcelain2itemselected';
	}
	function porcelain2MouseOut(porcelain2ID)
	{
		p2Timer = setTimeout("turnOff()",500);
		p2timerRunning = true;
		var item = $_getID(porcelain2ID);
		item.className = 'porcelain2item';
	}
	function turnOff()
	{
		if (p2timerRunning)
			clearTimeout(p2Timer);
		// unhover button
		var selectedPorcelain = $_getID(porcelainOnID);
		if (selectedPorcelain != null)
		{
			if (selectedPorcelain.className != 'porcelainitemcurrent')
			{
				selectedPorcelain.className = 'porcelainitem';
				handleDividerImages(porcelainOnID,false);
			}
		}
		// hide flyout
		var flyout = $_getID(porcelainOnID + '_FlyOut');
		if (flyout != null)
			flyout.className = 'porcelain2hide';
		porcelainOnID = '';
		p2timerRunning = false;
	}

	function handleDividerImages(porcelainID,turnOff,expireState)
	{
		var porcelainItem = $_getID(porcelainID);
		var dividerAfterID = porcelainID.replace('_porcelain','_divider');
		var pIndex = parseInt(dividerAfterID.substring(dividerAfterID.length - 1, dividerAfterID.length));
		var from = '_divider' + pIndex;
		var to = pIndex - 1;
		to = '_divider' + to;
		var dividerBeforeID = dividerAfterID.replace(from,to);
		
		var firstDivider, secondDivider;
		var visValue = 'visible';
		var disValue = 'inline';
		if (turnOff)
		{
			visValue = 'hidden';
			disValue = 'none';
		}
		if (firstDivider = $_getID(dividerBeforeID))
		{
			if (firstDivider.className != 'expired')
			{
				firstDivider.style.visibility = visValue;
			}
			if (expireState) { firstDivider.className = 'expired'; }
			else { firstDivider.style.display = disValue; }
		}
		if (secondDivider = $_getID(dividerAfterID))
		{
			if (secondDivider.className != 'expired')
			{
				secondDivider.style.visibility = visValue;
			}
			if (expireState) { secondDivider.className = 'expired'; }
			else { secondDivider.style.display = disValue; }
		}
	}

		
		function SelectMenu(menuItem, subMenuId)
        {
            // ����ǵ����Ѿ�ѡ�еĲ˵��������κ���
            //
            if (document.getElementById("txtSelectedMenuId").value == menuItem.id)
                return;

            menuItem.className = "Current";
            for(i = 0;i<document.getElementById("SubMenu").childNodes.length;i++)
            {
                document.getElementById("SubMenu").childNodes[i].className = "submenuLayerHide";
            }
            document.getElementById(subMenuId).className = "submenuLayerShow";
            
            if (document.getElementById("txtSelectedMenuId").value.length > 0)
                document.getElementById(document.getElementById("txtSelectedMenuId").value).className = "";
                
            document.getElementById("txtSelectedMenuId").value = menuItem.id;
        }

		
		function OnSelectMenu(menuItem)
        {
            // ����ǵ����Ѿ�ѡ�еĲ˵��������κ���
            //
            if (document.getElementById("txtSelectedMenuId").value == menuItem.id)
                return;

            menuItem.className = "Current";
            
            if (document.getElementById("txtSelectedMenuId").value.length > 0)
                document.getElementById(document.getElementById("txtSelectedMenuId").value).className = "";
                
            document.getElementById("txtSelectedMenuId").value = menuItem.id;
        }
        
        
        function MouseOver(menuItem)
        {
            if (document.getElementById("txtSelectedMenuId").value == menuItem.id)
                return;
                
            menuItem.className = "hover";
           // menuItem.childNodes[0].className = "hoverspan";
        }
        
        function MouseOut(menuItem)
        {
            if (document.getElementById("txtSelectedMenuId").value == menuItem.id)
                return;
                
            menuItem.className = "";
            //menuItem.childNodes[0].className = "";
        }
        
        function SubmenuMouseOver(menuItem, subMenuId)
        {
            menuItem.className = "hover";
            
            if (subMenuId == '')
                return;
            
            var subMenu = document.getElementById(subMenuId);
            if (subMenu == null)
                return;
            
            var offsetTop = menuItem.offsetTop; 
            var offsetLeft = menuItem.offsetLeft; 
            var offsetWidth = menuItem.offsetWidth; 
            var offsetHeight = menuItem.offsetHeight; 
            while( menuItem = menuItem.offsetParent ) 
            { 
                offsetTop += menuItem.offsetTop; 
                offsetLeft += menuItem.offsetLeft; 
            }
            
            subMenu.style.left = offsetLeft + "px";
            subMenu.style.top = (offsetTop + offsetHeight - 3) + "px";
            subMenu.className = "porcelain2show"; 
            
        }
        
        function SubmenuMouseOut(menuItem)
        {
            menuItem.className = "";
        }

		function leftList(thisID,thisImgID)
		{
			thisID = parent.document.getElementById(thisID);
			// thisImgID = document.getElementById(thisImgID);
			if (thisID.cols == "182,9,*")
			{
				thisID.cols = "0,9,*";
				//thisImgID.src = "../images/splitbar_collapse_h.gif";
				//document.getElementById("top_001").style.display = '';
				//document.getElementById("top_002").style.display = '';
			}
			else
			{
				thisID.cols = "182,9,*";
				//document.getElementById("top_001").style.display = 'none';
				//document.getElementById("top_002").style.display = 'none';
				//thisImgID.src = "../images/splitbar_expand_h.gif";
			}
		}
		
		function callLeftTree(obj)
		{
			//Sub menu background change;
			var subMainMenuList = document.getElementById('tree_menu');
			var subMenuTD = document.getElementById(obj);
			subMenuTD.className = 'treeview_focus';
			for (i=0;i<subMainMenuList.rows.length ;i++ )
			{	
				other = subMainMenuList.rows[i].cells[0];
				if (other.id != obj)
				{
					other.className = 'treeview_unfocus';
				}
			}
			
		}

		function thisMenuStyleChange(menuID,thisID)
		{
			var menuID = $_getID(menuID);
			//alert(menuID);
			
			var menuList = menuID.getElementsByTagName('li').length;
			var testList = menuID.getElementsByTagName('li');
			for (i=0;i<menuList ;i++ )
			{	
				testList[i].className = '';
			}
			thisID.className = 'selectThisItemsStyle';
		}
		
		function FrameRedirect(frameId, url)
		{
		    if (parent.document.getElementById(frameId) != null)
		    {
		        parent.document.getElementById(frameId).src  = url;
		       //alert(url)
		    }
		}
		//����.
        function SetCookie(name,value)//}�����һ����cookie�����ӣ�һ����ֵ
        {
            var Days = 30; //�� cookie �������� 30 ��
            var exp  = new Date();    //new Date("December 31, 9998");
            exp.setTime(exp.getTime() + Days*24*60*60*1000);
            document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
        }
        function getCookie(name)//ȡcookies����        
        {
            var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
             if(arr != null) return unescape(arr[2]); 
             return null;
        }

//        window.onload = function MyMoodClassOnload()
//        {
//                alert(getCookie("HishopAdminCookie"));
//                if (getCookie("HishopAdminCookie") == "")
//                {
//                    SetCookie("HishopAdminCookie","Blue");
//                    document.getElementById("cssLink").href = "css/IFrame.css";
//                    return;
//                }
//                document.getElementById("cssLink").href = "css/IFrame_" + getCookie("HishopAdminCookie") + ".css";
//        }
        function MyMoodClass(thisMood)
        {
                /*if (thisMood.toString() == "Blue")
                {
                    document.getElementById("cssLink").href = "/AVOD/admin/css/IFrame.css";
                    parent.leftFrame.document.getElementById("cssLink").href = "/AVOD/admin/css/IFrame.css";
                    parent.contrlFrame.document.getElementById("cssLink").href = "/AVOD/admin/css/IFrame.css";
                    //SetCookie("HishopAdminCookie",thisMood);
                    return;
                }*/
                //SetCookie("HishopAdminCookie",thisMood);
                //alert(getCookie("HishopAdminCookie"));
                document.getElementById("cssLink").href = "/AXT/admin/css/IFrame_" + thisMood.toString() + ".css";
                parent.leftFrame.document.getElementById("cssLink").href = "/AXT/admin/css/IFrame_" + thisMood.toString() + ".css";
                parent.contrlFrame.document.getElementById("cssLink").href = "/AXT/admin/css/IFrame_" + thisMood.toString() + ".css";
        }
        
        
function getViewportHeight() {
	if (window.innerHeight!=window.undefined) return window.innerHeight;
	if (document.compatMode=='CSS1Compat') return document.documentElement.clientHeight;
	if (document.body) return document.body.clientHeight; 
	return window.undefined; 
}
function getViewportWidth() {
	if (window.innerWidth!=window.undefined) return window.innerWidth; 
	if (document.compatMode=='CSS1Compat') return document.documentElement.clientWidth; 
	if (document.body) return document.body.clientWidth; 
	return window.undefined; 
}
function setiframeheight(id)
{
    $_getID(id).style.height = (parseInt(getViewportHeight()) - 120) + "px";
}

function setplace(str)
{
	parent.topFrame.document.getElementById("place").innerHTML = str;
}