<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改xx</title>
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
					修改xx
				</small>
			</h1>
		</div>
		
		<div class="row">
			<div class="col-xs-12">

				<form class="form-horizontal" role="form">
					<input type="hidden" id="${firstName}" name="${firstName}" value="${r"${"}${smallClassName}.${firstName}${r"}"}" />
					<#list list as item>
					<#if item.beanLable != "${firstName}" && item.beanLable != "isDelete" && item.beanLable != "createUserId" && item.beanLable != "createTime" && item.beanLable != "updateUserId" && item.beanLable != "updateTime">
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right">xx：</label>
						<div class="col-sm-9">
							<input type="text" class="col-xs-5 col-sm-3" id="${item.beanLable}" name="${item.beanLable}" value="${r"${"}${smallClassName}.${item.beanLable}${r"}"}"/>
						</div>
					</div>
					</#if>
					</#list>

					<div class="clearfix form-actions">
						<div class="col-md-offset-3 col-md-9">
							<button class="btn btn-info" type="button" id="submit">
								<i class="icon-ok bigger-110"></i>
								提交
							</button>

							&nbsp; &nbsp; &nbsp;
							<button class="btn" type="reset">
								<i class="icon-undo bigger-110"></i>
								重置
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
</body>
</html>
<script type="text/javascript" src="/js/jquery-2.0.3.min.js"></script>
<script type="text/javascript">
	$("#submit").click(function(){
		$.ajax({
			url : "/admin/${pageDir}/update.do",
			data : $("form").serialize(),
			type : 'POST',
			dataType : 'json',
			success : function(result) {
				if (result.code == 'Y') {
					window.location.href="/admin/${pageDir}/list.do";
				} else {
					alert(result.message);
				}
			}
		});
	});
</script>