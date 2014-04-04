/**获取属性中的数值*/
function stripPx(value){
 if(value == "") return 0;
 return parseFloat(value.substring(0,value.length - 2));
}

/**拖拽类*/
function Drag(tagName,className){
 /**字段*/
  this.tagName=tagName;
  this.className=className;
  var dragDiv;
  var dragging = false;
  var _X;//鼠标到当前拖动对象最左边的距离
  var _Y;//鼠标到当前拖动对象最上边的距离
  
  /**方法*/
  this.startMove;
  this.stopMove;
  this.processMove;
  
  /**开始*/
  this.startMove = function (event,id){
    if(!event)event=window.event;//IE必须
   
    //把所有class为className的tagName设置为style.zIndex=0 目的是将这些tagName置于底部
    var elements = document.getElementsByTagName(this.tagName);
    for(var i=0;i<elements.length;i++){
      if(elements[i].className==this.className){
        elements[i].style.zIndex=0;
      } 
    }
    
    dragDiv = document.getElementById(id);//当前拖动对象
    dragDiv.style.zIndex = 1;//将此div置于前面
    
    //初始化鼠标在当前拖动对象的相对位置
    _X = event.clientX- stripPx(dragDiv.style.left);
    _Y = event.clientY- stripPx(dragDiv.style.top);
    
    //在此对象上的监听事件  firefox时只在此对象生效
    //Drag.dragDiv.onmousemove = this.processMove;
    //Drag.dragDiv.onmouseup = this.stopMove;
    
    //在window对象上的监听事件  IE/firefox时在窗口生效
    window.document.onmousemove = this.processMove;
    window.document.onmouseup = this.stopMove;
    
    dragging = true;
  }
  
  /**停止*/
  this.stopMove = function (){
    dragging = false;
  }
  
  /**移动处理*/
  this.processMove = function (event){
    if(dragging){
     if(!event)event = window.event;//IE必须
     var y = event.clientY; 
     var x = event.clientX; 
     
       //firefox必须加上px
     dragDiv.style.top = (y - _Y)+"px";
     dragDiv.style.left = (x - _X)+"px";
    } 
  }
}

var divDrag=new Drag('div','divMove');