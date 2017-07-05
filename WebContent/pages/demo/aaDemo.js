
// ajaxAnywhere.getAJAX(url, "ssclDetialZone,要刷新的zone");  

function  aaDemo(){
          ajaxAnywhere.formName="form1";
          ajaxAnywhere.submitAJAX();
}
function doCheck(){
	 ajaxAnywhere.formName="listForm";
     ajaxAnywhere.submitAJAX();
}
//指定刷新区域
ajaxAnywhere.getZonesToReload = function () {
      return "zone1";
      //return "ssclListZone,saveButtonZone,ssclSzdh,ssclDetialZone";
};