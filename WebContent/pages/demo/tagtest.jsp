<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/pages/public/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/pages/public/bootstrap_head.jsp"%>
	<title>自定义标签测试</title>
	<script type="text/javascript" src="${pg}demo/list.js"></script>
</head>
<body>


<div class="panel panel-green">
   <div class="panel-heading">
      <h3 class="panel-title">自定义标签测试</h3>
   </div>
   <div class="panel-body">
          hello 标签测试<br/> <app:Hello /><br/><hr/>
          <!-- url="http://www.baidu.com" -->
          <app:PageBS id="page1" count="300" currentPage="15" pageCount="30" pageSize="10" useCallback="true" pageCallback="page1Callback" /><br/><hr/>
      <br/>
   </div>
</div>
<script type="text/javascript">
 function page1Callback(page){
	 alert("pagesize:"+ page.pageSize +"\ncurrentPage:"+page.currentPage);
 }
</script>
</body>
</html>
