<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/pages/public/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/pages/public/bootstrap_head.jsp"%>
	<title>数据库表信息</title>
</head>
<body>
<div class="panel panel-primary">
                        <div class="panel-heading">
                            <i class="fa fa-table fa-fw"></i>表: ${tableName} &nbsp;&nbsp;&nbsp; <a href="javascript:history.go(-1);" > <b style="color: red">返回</b></a>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped">
                                            <thead>
                                                <tr>
                                                     <th style="width:50px ">序号</th>
					                                 <th>列名</th>
					                                 <th>说明</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${list}" var="obj" varStatus="status">
													<tr>
														<td>${status.index+1}</td>
														<td>${obj.columnName}</td>
														<td>${obj.comments}</td>
													</tr>
												</c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- /.table-responsive -->
                                </div>
                                <!-- /.col-lg-12 (nested) -->
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->


<script type="text/javascript">
  function code(tableName){
	if(!tableName){
		  alert("请选择表名!");
	}
	$.ajax({
		url : '${root}demo/code.do',
		data : {
			    'tableName':tableName,
			    'pojo':$('#pojo_'+tableName).is(':checked'),
			    'mapper':$('#mapper_'+tableName).is(':checked'),
			    'dao':$('#dao_'+tableName).is(':checked')
		       },
		type : 'POST',
		success : function(result) {
			alert(result.msg);
		}
	});
	  
  }
</script>

</body>
</html>
