<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/pages/public/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/pages/public/bootstrap_head.jsp"%>
	<title>uploadify 上传文件样例</title>
	
	<!-- 上传文件需要的 -->
	<link rel="stylesheet" type="text/css" href="${rs}uploadify/uploadify.css">
	<script type="text/javascript" src="${rs}uploadify/jquery.uploadify-3.1.min.js"></script>
	<!-- 上传文件需要的 结束 -->
	
</head>
<body>

  <div id="fileDiv">
  </div>




  <div id="uploadDiv">
   <input type="file" name="uploadify" id="uploadify" />
        <a href="javascript:$('#uploadify').uploadify('upload','*')" onclick="return check();">开始上传</a>&nbsp;     
        <!-- <a href="javascript:$('#uploadify').uploadify('cancel', '*')">取消所有上传</a> -->
  </div>

<script type="text/javascript">

function check(){
	//根据自己要求验证数据
	return true;
}


var files=[];

//${root}sys/uploadfiy.do
$(function() {
    $("#uploadify").uploadify({
    	'height'        : 27, 
    	'width'         : 80,  
    	'buttonText'    : '浏 览',
        'swf'           : '${rs}uploadify/uploadify.swf',
        'uploader'      : '${root}sys/uploadfiy.do',
        'auto'          : false,
        'fileTypeExts'  : '*',
        'method'		: 'post',//提交方式
        'formData'      : {},
        'queueSizeLimit':6,//一次可以在队列中文件的最大数目
        'fileSizeLimit':5000,//允许上传文件的最大大小
        'onUploadStart' : function(file) {
        	//path =test/mypath 表示test目录下的mypath
        	/**
        	如果需要保存上传文件信息 "formData",{"path":'test/mypath','save':'true','dataId':'xxx','dataTable':'tableName'}
        	dataId     上传文件和 数据的关联id
        	dataTable  关联表的名称
        	'save':'true' 表示保存文件信息
        	*/
        	//$("#uploadify").uploadify("settings", "formData",{"path":'test/mypath'});  
        	$("#uploadify").uploadify("settings", "formData",{"path":'test/mypath','save':'true','dataId':'xxx','dataTable':'tableName'});  
         },
        'onUploadSuccess': function (file,data,response) {
        	//response 返回值一般为true
        	var result= JSON2.parse(data);
        	files.push(result);
        	//alert()
        	/**
        	result 对象字段
        	
        	fileSize: 484
			fileType: "doc"
			generateName: "新生成的文件名称"
			isOk: true
			originalName: "原始文件名称"
			uploadDir: "test/mypath" //上传路径
        	*/
			//console.log(result);
			//console.log("response"+response);
			
        },
        'onQueueComplete': function(stats){
        	var html="";
        	for(i in files){
        		html+='<a href="'+files[i].url+'" >'+ files[i].generateName+'</a><br/>';
        	}
        	$("#fileDiv").html(html);
    	    //alert( "成功上传的文件数:" + stats.uploadsSuccessful + " - 上传失败的文件数: " + stats.uploadsErrored);
    	    alert("全成功了");
        }
    });
});


</script>
</body>
</html>
