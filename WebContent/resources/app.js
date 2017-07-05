/**
 * 扩展ajaxAnywhere 的loading信息
 */
var loadingImage="<image alt='loading...' src='"+$rs+"ajaxAnywhere/loader.gif'/>";
AjaxAnywhere.prototype.showLoadingMessage = function(){
      	var div = document.getElementById("AA_" + this.id + "_loading_div");
      	if (!div) {
      	    div = document.createElement("DIV");
      	    document.body.appendChild(div);
      	    div.id = "AA_" + this.id + "_loading_div";
      	    div.style.position = "absolute";
      	    div.style.width  = "124px";
      	    div.style.heigth = "124px";
      	    div.innerHTML=loadingImage;
      	}
      	div.style.top     = '40%';
      	div.style.left    = '50%';
      	div.style.display = "";
}

var loading={
	id  :"_loading_div"	,
	show: function (){
		var div = document.getElementById(loading.id);
      	if (!div) {
      	    div = document.createElement("DIV");
      	    document.body.appendChild(div);
      	    div.id = loading.id;
      	    div.style.position = "absolute";
      	    div.style.width  = "124px";
      	    div.style.heigth = "124px";
      	    div.innerHTML=loadingImage;
      	}
      	div.style.top     = '40%';
      	div.style.left    = '50%';
      	div.style.display = "";
	},
	hide:function(){
		//console.log(div);
		var div = document.getElementById(loading.id);
		if (div) {
			div.style.display = "none";
		}
	}
}

/**
 * form 序列化为json
*/
$.fn.formToJson=function(){  
          var serializeObj={};  
          $(this.serializeArray()).each(function(){  
              serializeObj[this.name]=$.trim(this.value);  
          });  
          return serializeObj;  
};  