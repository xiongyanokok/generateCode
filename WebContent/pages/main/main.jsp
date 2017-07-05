<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/pages/public/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/pages/public/bootstrap_head.jsp"%>
<title></title>
</head>
<body>

<div id="wrapper">

        <!-- Navigation -->
           <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="javascript:void(0);"></a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>消息1</strong>
                                    <span class="pull-right text-muted">
                                        <em>昨天</em>
                                    </span>
                                </div>
                                <div>哈哈哈...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>消息2</strong>
                                    <span class="pull-right text-muted">
                                        <em>昨天</em>
                                    </span>
                                </div>
                                <div>呵呵呵...</div>
                            </a>
                        </li>
                       
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> 用户信息</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> 设置</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="logout.do"><i class="fa fa-sign-out fa-fw"></i> 退出</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-dashboard fa-fw"></i> 首页</a>
                        </li>
                        


					<li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Demo<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<c:url value='demo/list.do'/>" target="_blank"> 查询显示列表</a>
                                </li>
                                <li>
                                    <a href="<c:url value='pages/demo/tagtest.jsp'/>" target="_blank">标签测试</a>
                                </li>
                                <li>
                                    <a href="<c:url value='demo/listBwiev2Demo.do'/>" target="_blank">listBwiev2Demo</a>
                                </li>
                                <li>
                                    <a href="${pg}demo/upload.jsp" target="_blank">普通上传文件</a>
                                </li>
                                <li>
                                    <a href="${pg}demo/uploadify.jsp" target="_blank">上传文件uploadfiy</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                        <li>
                            <a href="#"><i class="fa fa-table fa-fw"></i>系统工具<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<c:url value='demo/tableList.do'/>" target="_blank"><b style="color: red"> 代码生成</b></a>
                                </li>
                                <li>
                                    <a href="<c:url value='demo/sqlMapper.do'/>" target="_blank"><b style="color: red">SQL生成Mapper</b></a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                    <br/>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper" >
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="page-header">首页</h4>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div >  
	                            <form role="form" id="searchForm" class="form-horizontal" >
								    <div class="form-group form-group-sm ">
								      <label for="tableName" class="col-sm-1 control-label">字段1</label>
								      <div class="col-sm-3  has-error">
								         <input type="text" class="form-control"  name="f1" placeholder="请输入字段1" >
								      </div>
								      <label for="tableName" class="col-sm-1 control-label">字段2</label>
								      <div class="col-sm-3 has-error">
								         <input type="text" class="form-control"   name="f2" placeholder="请输入字段2" >
								      </div>
								      <label for="tableName" class="col-sm-1 control-label">字段3</label>
								      <div class="col-sm-3">
								         <input type="text" class="form-control"   name="f3" placeholder="请输入字段3" >
								      </div>
								   </div>
								   <div class="form-group form-group-sm">
								      <label for="tableName" class="col-sm-1 control-label">字段4</label>
								      <div class="col-sm-3">
								         <input type="text" class="form-control"  name="f4" placeholder="请输入字段4" >
								      </div>
								      
								      <label for="tableName" class="col-sm-1 control-label">字段5</label>
								      <div class="col-sm-3">
								         <input type="text" class="form-control"   name="f5" placeholder="请输入字段5" >
								      </div>
								   </div>
								   <div class="form-group form-group-sm">
								      <div class="col-sm-1 col-md-offset-5">
								       <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-search"></i>&nbsp;查询</button>
								      </div>
								   </div>
							    </form>
            </div> 
             
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <!-- /.panel -->
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <i class="fa fa-table fa-fw"></i> 列表样例
                            <div class="pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-outline btn-default btn-xs "  data-toggle="modal" data-target="#myModal" data-whatever="添加">
                                          <span class="fa fa-plus fa-fw"></span>添加 
                                    </button>
                                </div>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-outline btn-default btn-xs" data-toggle="modal" data-target="#myModal" data-whatever="修改">
                                        <span class="fa fa-pencil fa-fw"></span>修改
                                    </button>
                                </div>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-outline btn-default btn-xs" data-toggle="modal" data-target="#myModal" data-whatever="删除">
                                         <span class="fa  fa-trash-o fa-fw"></span>删除
                                    </button>
                                </div>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-outline btn-default btn-xs" data-toggle="modal" data-target="#myModal" data-whatever="查看">
                                           <span class="fa  fa-list-alt fa-fw"></span>查看
                                    </button>
                                </div>
                            </div>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Date</th>
                                                    <th>Time</th>
                                                    <th>Amount</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>3326</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:29 PM</td>
                                                    <td>$321.33</td>
                                                </tr>
                                                <tr>
                                                    <td>3326</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:29 PM</td>
                                                    <td>$321.33</td>
                                                </tr>
                                                <tr>
                                                    <td>3326</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:29 PM</td>
                                                    <td>$321.33</td>
                                                </tr>
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
                        
                        <div class="panel-footer" style="text-align: center">
	                                      <app:PageBS id="page1" count="300" currentPage="15" pageCount="30" pageSize="10" useCallback="true" pageCallback="page1Callback" />
                        </div>
                        
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    
    
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel" aria-hidden="true">
		   <div class="modal-dialog">
		      <div class="modal-content">
		         <div class="modal-header">
		            <button type="button" class="close" 
		               data-dismiss="modal" aria-hidden="true">
		                  &times;
		            </button>
		            <h4 class="modal-title" id="myModalLabel">
		               模态框（Modal）标题
		            </h4>
		         </div>
		         <div class="modal-body">
		            在这里添加一些文本
		         </div>
		         <div class="modal-footer">
		            <button type="button" class="btn btn-default" 
		               data-dismiss="modal">关闭
		            </button>
		            <button type="button" class="btn btn-primary">
		               提交更改
		            </button>
		         </div>
		      </div><!-- /.modal-content -->
</div><!-- /.modal -->
    
    
    
<script type="text/javascript">
    // 模态框处理
    $('#myModal').on('show.bs.modal', function (event) {
	  var button = $(event.relatedTarget) // Button that triggered the modal
	  var recipient = button.data('whatever') // Extract info from data-* attributes
	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
	  var modal = $(this)
	  modal.find('.modal-title').text(recipient)
	  modal.find('.modal-body input').val(recipient)
	});


 function page1Callback(page){
	 alert("pagesize:"+ page.pageSize +"\ncurrentPage:"+page.currentPage);
 }
</script>
</body>
</html>
