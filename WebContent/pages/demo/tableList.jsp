<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/pages/public/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/pages/public/bootstrap_head.jsp"%>
	<title>数据库代码生成</title>
</head>
<body>


<div class="panel panel-primary">
                        <div class="panel-heading">
                            <i class="fa fa-table fa-fw"></i> 数据库代码生成
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="well  well-sm">
	                            <form role="form" id="searchForm" class="form-horizontal" action="${root}demo/tableList.do" >
								    <div class="form-group form-group-sm">
								      <label for="tableName" class="col-sm-1 control-label">表名</label>
								      <div class="col-sm-2">
								         <input type="text" class="form-control" id="tableName"  name="tableName" placeholder="请输入表名后回车" >
								      </div>
								      <!-- <div class="col-sm-9">
								       <button type="submit" class="btn btn-primary btn-sm">查询</button>
								      </div> -->
								   </div>
							    </form>
						    </div>
                        
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped">
                                            <thead>
                                                <tr>
                                                     <th style="width:50px ">序号</th>
					                                 <th>表名称</th>
					                                 <th>选项</th>
					                                 <th style="width:50px ">模块名称</th>
					                                 <th style="width:50px ">动作</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${list}" var="obj" varStatus="status">
													<tr>
														<td>${status.index+1}</td>
														<td><a href="${root}demo/tableInfo.do?tableName=${obj}">${obj} </a></td>
														<td>
														Model<input type="checkbox" name="pojo"    id="pojo_${obj}" checked="checked">&nbsp;&nbsp;&nbsp; 
														Mapper<input type="checkbox" name="mapper" id="mapper_${obj}" checked="checked">&nbsp;&nbsp;&nbsp;
														Dao<input type="checkbox" name="dao"       id="dao_${obj}" checked="checked">
														service<input type="checkbox" name="service"       id="service_${obj}" checked="checked">
														serviceImpl<input type="checkbox" name="serviceImpl"       id="serviceImpl_${obj}" checked="checked">
														controller<input type="checkbox" name="controller"       id="controller_${obj}" checked="checked">
														jsp<input type="checkbox" name="jsp"       id="jsp_${obj}" checked="checked">
														html<input type="checkbox" name="html"       id="html_${obj}" checked="checked">
														</td>
														<td>
														<input type="text" id="mod_${obj}">
														</td>
														<td>
														  <button type="button" class="btn btn-outline btn-primary btn-xs"  onclick="code('${obj}')">生成</button>
														</td>
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
  
  //搜索框绑定回车事件
  $('#tableName').bind('keypress',function(event){
	    if(event.keyCode == "13")    
	    {
	    	$("#searchForm").submit();
	    }
  });


  function code(tableName){
	if(!tableName){
		  alert("请选择表名!");
	}
	
	if(confirm("确定要生成代码吗? 请确保不会覆盖别人的代码!!!!")){
		$.ajax({
			url : '${root}demo/code.do',
			data : {
				    'tableName':tableName,
				    'pojo':$('#pojo_'+tableName).is(':checked'),
				    'mapper':$('#mapper_'+tableName).is(':checked'),
				    'dao':$('#dao_'+tableName).is(':checked'),
				    'service':$('#service_'+tableName).is(':checked'),
				    'serviceImpl':$('#serviceImpl_'+tableName).is(':checked'),
				    'controller':$('#controller_'+tableName).is(':checked'),
				    'jsp':$('#jsp_'+tableName).is(':checked'),
				    'html':$('#html_'+tableName).is(':checked'),
				    'mod':$('#mod_'+tableName).val()
			       },
			type : 'POST',
			success : function(result) {
				alert(result.msg);
			}
		});
	}
	  
  }
</script>

</body>
</html>
