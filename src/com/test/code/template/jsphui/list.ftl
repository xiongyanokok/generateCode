<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" type="text/css" href="/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="/static/h-ui.admin/css/style.css" />
<title>xx管理</title>
</head>
<body>
	<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> xx管理 <span class="c-gray en">&gt;</span> xx列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="pd-20">
		<div class="text-l">
			条件A：<input type="text" class="input-text" style="width: 200px" id="" name="" />
			<span style="padding-right: 50px;"></span>
			条件B：<input type="text" class="input-text" style="width: 200px" id="" name="" />
			<span style="padding-right: 50px;"></span>
			条件C：<input type="text" class="input-text" style="width: 200px" id="" name="" />
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
    		<span class="l">
    			<a href="javascript:;" onclick="add()" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加xx </a>
    		</span>
    		<span class="r">
    			<a href="javascript:;" onclick="query()" class="btn btn-success radius"><i class="Hui-iconfont">&#xe665;</i> 查询xx </a>
    		</span>
  		</div>
  		<table id="table" class="table table-border table-bordered table-striped table-hover table-bg"/>
	</div>
</body>
</html>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="/static/h-ui.admin/js/H-ui.admin.js"></script>
<!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
	var dataTable;
	$(function(){
		dataTable = $("#table").dataTable( {
			"bLengthChange" : false, // 可改变每页显示条数
			"bFilter" : false, //过滤功能
			"bSort" : true, //排序功能
			"bAutoWidth" : false, //自适应宽度
			"bProcessing" : true, // 加载层
	        "bServerSide" : true, // 服务器获取数据
	        "aaSorting" : [[ 1, "desc" ]], //默认第几个排序
			"sAjaxSource" : "/admin/${pageDir}/query",
			"fnServerData" : retrieveData,
			"fnDrawCallback" : function(){
				this.api().column(0).nodes().each(function(cell, i) {
					cell.innerHTML =  i + 1;
				});
			},
			"aoColumns" : [
				{
				    "mData" : "id",
				    "sClass" : "text-c",
				    "bSortable" : false,
				    "sWidth" : "1%"
				},<#list list as item><#if item.beanLable != "id" && item.beanLable != "isDelete" && item.beanLable != "createUserId" 
				&& item.beanLable != "createTime" && item.beanLable != "updateUserId" && item.beanLable != "updateTime"> {
                	"mData" : "${item.beanLable}",
               		"sTitle" : "${item.beanLable}",
	                "bSortable": true,
				    "sWidth" : "5%"
            	},</#if></#list> {
	                "mData" : "updateTime",
	                "sTitle" : "修改时间",
	                "bSortable": true,
	                "sWidth" : "8%"
	            }, {
	            	"mData" : null,
	            	"sTitle" : "操作",
	            	"bSortable" : false,
	            	"sWidth" : "10%",
	            	"mRender": function(data, type, full) {
	            		var button = "<a class=\"btn btn-success radius size-MINI\" onclick=\"edit("+data.${firstName}+")\">修改</a>"+
	            			" <a class=\"btn btn-danger radius size-MINI\" onclick=\"del("+data.${firstName}+")\">删除</a>";
	            		return button;
	            	}
	            }
	        ],
            "oLanguage" : {
                "sProcessing" : "<img src=\"/static/h-ui.admin/images/loading.gif\"/>正在加载中......",
                "sLengthMenu" : "每页显示 _MENU_ 条记录",
                "sEmptyTable" : "无数据！",
                "sInfo" : "总共 _PAGES_ 页，当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
                "oPaginate" : {
                    "sFirst" : "首页",
                    "sPrevious" : "上一页",
                    "sNext" : "下一页",
                    "sLast" : "末页"
                }
            }
       	});
		
		// 查询数据
		function retrieveData(url, aoData, callback) {
			var data = {};

			// 分页参数
			var index = "";
			$.each(aoData, function(n, value) {
				if (value.name == "iDisplayStart") {
					data.offset = value.value;
				} else if (value.name == "iDisplayLength") {
					data.limit = value.value;
				} else if (value.name == "iSortCol_0") {
					index = value.value;
				}
			});

			// 排序参数
			var orderBy = "";
			$.each(aoData, function(n, value) {
				if (value.name == "mDataProp_"+index) {
					orderBy = value.value;
				} else if (value.name == "sSortDir_0") {
					data.orderBy = orderBy + " " + value.value;
				}
            }); 
			
			// 查询参数
			if ($("#name").val()) {
				data.name = $("#name").val();
			}
			
			$.ajax({
				url : url,
				data : data,
				type : "POST",
				dataType : "json",
				success : function(result) {
					if (result.code == "Y") {
						callback(result);
					}
				}
			});
		}
	});
	
	// 新增数据
	function add() {
		layer_show("添加xx", "/admin/${pageDir}/add", "", "550");
	}
	
	// 修改数据
	function edit(${firstName}) {
		layer_show("修改xx", "/admin/${pageDir}/edit?${firstName}="+${firstName}, "", "550");
	}
	
	// 查询数据
	function query() {
		dataTable.fnDraw();
	}
	
	// 删除
	function del(${firstName}) {
		layer.confirm("确认要删除吗？", function(index) {
			$.ajax({
				url : "/admin/${pageDir}/delete",
				data : {"id":id},
				type : "POST",
				dataType : "json",
				success : function(result) {
					if (result.code == "Y") {
						dataTable.fnDraw();
						layer.msg("删除成功", {icon:5, time:1000});
					} else {
						layer.alert(result.message);
					}
				}
			});
		});
	}
	
</script>