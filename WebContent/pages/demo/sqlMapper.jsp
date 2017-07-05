<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/pages/public/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/pages/public/bootstrap_head.jsp"%>
	<title>Sql代码生成</title>
</head>
<body>


<div class="panel panel-primary">
                        <div class="panel-heading">
                            <i class="fa fa-table fa-fw"></i> Sql To Mapper
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="well  well-sm">
	                                                   提示(推荐Chrome和Firefox浏览器):&nbsp;&nbsp;<span id="msg" style="color: red"></span>
						    </div>
                        
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <input class="form-control" type="text" id="pojoName" placeholder="请输入POJO名称,默认为MyPojo" title="请输入POJO名称,默认为MyPojo"><br/>
										<ul id="myTab" class="nav nav-tabs">
										   <li class="active"><a href="#sql1" data-toggle="tab">SQL</a></li>
										   <li><a href="#mapper1" data-toggle="tab">Mapper</a></li>
										   <li><a href="#pojo1" data-toggle="tab">Pojo</a></li>
										</ul>
										<div id="myTabContent" class="tab-content">
										   <div class="tab-pane fade in active" id="sql1">
										      <textarea rows="17" cols="200" id="sql" style="width:100%" placeholder="请输入SQL"></textarea>
										   </div>
										   <div class="tab-pane fade" id="mapper1">
										      <textarea rows="17" cols="200" id="mapper" style="width:100%"></textarea>
										   </div>
										   <div class="tab-pane fade" id="pojo1">
										     <textarea rows="17" cols="200" id="pojo" style="width:100%"></textarea>
										   </div>
										   <div style="width:100%;text-align: center">
										   <input type="button"   class="btn btn-primary " value="请输入SQL后点击执行" onclick="executeSql();" />
										   </div>
										</div>
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




</body>
<script type="text/javascript">
 function executeSql(){
	 $("#msg").html(" ");
	 var sql=$.trim(  $("#sql").val());
	 if(!sql){
		 $("#msg").html("请输入SQL");
		 return;
	 }
	 var pojoName=$("#pojoName").val();
	 if(!pojoName){
		 pojoName="MyPojo";
	 }
	 $.ajax({
			url : $root+'/demo/executeSql.do',
			data : {sql:sql,pojoName:pojoName},
			type : 'POST',
			success : function(result) {
				$("#mapper").val(result.mapper);
				$("#pojo").val(result.pojo);
				if(result.msg){
					$("#msg").html(result.msg);
				}else{
				    $("#msg").html("代码生成成功!");
				}
			}
	 });
 }
</script>
</html>
