<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/pages/public/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/pages/public/bootstrap_head.jsp"%>
	<title>demo</title>
</head>
<body>


<div class="panel panel-primary">
   <div class="panel-heading">
      <h3 class="panel-title">上传文件样例</h3>
   </div>
   <div class="panel-body">
            <form role="form" id="searchForm" class="form-horizontal" enctype="multipart/form-data" action="${root}demo/upload.do" method="post" >
								    <div class="form-group form-group-sm ">
								      <label for="f1" class="col-sm-1 control-label">字段1</label>
								      <div class="col-sm-3  has-error">
								         <input type="text" class="form-control"  name="f1" placeholder="请输入字段1" >
								      </div>
								      <label for="f2" class="col-sm-1 control-label">字段2</label>
								      <div class="col-sm-3 has-error">
								         <input type="text" class="form-control"   name="f2" placeholder="请输入字段2" >
								      </div>
								      <label for="f3" class="col-sm-1 control-label">字段3</label>
								      <div class="col-sm-3">
								         <input type="text" class="form-control"   name="f3" placeholder="请输入字段3" >
								      </div>
								   </div>
								   <div class="form-group form-group-sm">
								      <label for=file class="col-sm-1 control-label">file1</label>
								      <div class="col-sm-3">
								         <input type="file"  name="file1">
								      </div>
								   </div>
								   <div class="form-group form-group-sm">
								      <div class="col-sm-1 col-md-offset-5">
								       <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-search"></i>&nbsp;提交</button>
								      </div>
								   </div>
							    </form>
   </div>
</div>
</body>
</html>
