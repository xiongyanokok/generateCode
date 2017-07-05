<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>xx列表</title>
<link rel="stylesheet" href="/bootstrap/assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="/bootstrap/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="/bootstrap/assets/css/ace.min.css" />
<link rel="stylesheet" href="/bootstrap/assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="/bootstrap/assets/css/ace-skins.min.css" />
</head>
<body>

	<div class="page-content">
		<div class="page-header">
			<h1>
				xx管理
				<small>
					<i class="icon-double-angle-right"></i>
					xx列表
				</small>
			</h1>
		</div>
		
		<div class="well well-sm">
        	<form role="form" id="searchForm" class="form-horizontal" >
				<div class="form-group form-group-sm">
					<label for="tableName" class="col-sm-1 control-label no-padding-right">名称：</label>
					<div class="col-sm-3">
						<input type="text" class="col-xs-8" id="name" name="name" >
					</div>
					<label class="col-sm-1"></label>
					<div class="col-sm-1">
						<button type="button" class="btn btn-primary btn-sm" onclick="query()">查询</button>
					</div>
					<div class="col-sm-1">
						<button type="button" class="btn btn-primary btn-sm" onclick="add()">新增</button>
					</div>
				</div>
		    </form>
	    </div>
						    
		<div class="hr"></div>
		
		<div class="row">
			<div class="col-xs-12">
				<div class="table-header">xx管理</div>

				<div class="table-responsive">
					<table id="table" class="table table-striped table-bordered table-hover" />
				</div>
			</div>
		</div>
	</div>

</body>
</html>
<script type="text/javascript" src="/js/jquery-2.0.3.min.js"></script>
<script type="text/javascript" src="/bootstrap/assets/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/bootstrap/assets/js/jquery.dataTables.bootstrap.js"></script>
<script type="text/javascript">
	var dataTable;
	$(function(){
		dataTable = $('#table').dataTable( {
			"sPaginationType": "bootstrap",
			"bFilter": false, //搜索框
            "bAutoWidth": false, //自适应宽度
            "bProcessing" : true, // 加载层
            "bServerSide" : true, // 服务器获取数据
            "bPaginate": true,  // 是否显示分页
            "bLengthChange": true, // 可改变每页显示条数
            "iDisplayLength": 10, // 每页显示条数
            "aLengthMenu": [10, 20, 30, 50], 
            "aaSorting": [[ 1, "desc" ]], // 排序
           	"sAjaxSource": "/admin/${pageDir}/query.do",
			"fnServerData": retrieveData,
			"fnDrawCallback" : function(){
				this.api().column(0).nodes().each(function(cell, i) {
					cell.innerHTML =  i + 1;
				});
			},
			"aoColumns" : [
				{
				    "mData" : "id",
				    "sClass" : "center",
				    "bSortable" : false,
				    "sWidth" : "2%"
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
	            		var button = "<button type='button' class='btn-primary' onclick='edit("+data.${firstName}+")'>修改</button>"+
	            			" <button type='button' class='btn-danger' onclick='del("+data.${firstName}+")'>删除</button>";
	            		return button;
	            	}
	            }
	        ],
            "oLanguage" : {
                "sProcessing" : "<img src='/bootstrap/assets/css/images/loading.gif'/>正在加载中......",
                "sLengthMenu" : "每页显示 _MENU_ 条记录",
                "sZeroRecords" : "没有数据！",
                "sEmptyTable" : "表中无数据存在！",
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
				type : 'POST',
				dataType : 'json',
				success : function(result) {
					if (result.code == 'Y') {
						callback(result.data);
					} else {
						alert(result.message);
					}
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					alert("error");
				}
			});
		}
	});
	
	// 新增数据
	function add() {
		window.location.href="/admin/${pageDir}/add.do";
	}
	
	// 修改数据
	function edit(${firstName}) {
		window.location.href="/admin/${pageDir}/edit.do?${firstName}="+${firstName};
	}
	
	// 查询数据
	function query() {
		dataTable.fnDraw();
	}
	
	// 删除
	function del(${firstName}) {
		if (confirm("确定要删除吗？")) {
			$.ajax({
				url : "/admin/${pageDir}/delete.do",
				data : {"${firstName}":${firstName}},
				type : 'POST',
				dataType : 'json',
				success : function(result) {
					if (result.code == 'Y') {
						dataTable.fnDraw();
					} else {
						alert(result.message);
					}
				}
			});
		}
	}
	
</script>