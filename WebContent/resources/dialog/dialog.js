/**
 * 对话框 by xuejianxin 20151021
 * 
 * @params 参数的json对象
 * @isWindowOpen 是否是 window.open 打开，默认为false
 */
dialog={};
dialog.hide=function (){
	if(dialog.window){
		dialog.window.close();
	}else{
		TINY.box.hide();
	}
}
dialog.show=function (params,isWindowOpen){
	var p={
			opacity:70,close:1,animate:1,fixed:1,mask:1,maskid:'',boxid:'',topsplit:2,url:0,post:0,height:0,width:0,html:0,iframe:0,
			title:'对话框',top:0, left:0, toolbar:'no', menubar:'no', scrollbars:'no', resizable:'no', location:'no', status:'no'
	      };
	for(k in params){p[k]=params[k];}
	//如果是window.open 
	if(isWindowOpen){
	   var iTop = (window.screen.height-30-p.height)/2; //获得窗口的垂直位置;  
	   var iLeft = (window.screen.width-10-p.width)/2; //获得窗口的水平位置; 
	   var openP={
			   height    :p.height,
			   width     :p.width,
			   toolbar   :p.toolbar,
			   menubar   :p.menubar,
			   scrollbars:p.scrollbars,
			   resizable :p.resizable,
			   location  :p.location,
			   status    :p.status,
			   top       :iTop,
			   left      :iLeft
	   };
	   var s="";
	   for(k in openP){
		   if(s.length>0){
			   s+=",";
		   }
		   s+=(k+"="+openP[k]);
	   }
	   // alert("s"+s);
	   //console.log(s);
	    dialog.window= window.open(p.url, p.title, s); 
	}else{
		//非 window.open 
		dialog.window=false;
		TINY.box.show({iframe:p.url,boxid:'frameless',width:p.width,height:p.height,fixed:false,maskid:'bluemask',maskopacity:60,autoHide:false,scrolling:p.scrolling});
	}
}