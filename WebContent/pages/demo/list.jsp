<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/pages/public/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/pages/public/bootstrap_head.jsp"%>
	<title>demo</title>
	<script type="text/javascript" src="${pg}demo/list.js"></script>
</head>
<body>


<div class="panel panel-primary">
   <div class="panel-heading">
      <h3 class="panel-title">样例数据</h3>
   </div>
   <div class="panel-body">
            <table class="table table-striped table-condensed table-bordered">
			<thead>
				<tr class="success">
					<th>id</th>
					<th>name</th>
				</tr>
			</thead>
			<tbody>	
				<c:forEach items="${page.list}" var="obj">
					<tr>
						<td>${obj.id}</td>
						<td>${obj.name}</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
			<tr>
			<td colspan="2" align="right">
				<app:PageBS id="pageUrl" count="${page.count}" currentPage="${page.currentPage}" pageCount="${page.pageCount}" pageSize="${page.pageSize}" url="${root}demo/list.do" />
			</td>
			</tr>
			</tfoot>
			</table>
   </div>
</div>

<input type="button"  class="btn btn-primary" value="简单ajax调用" onclick="testajax();" />
<br/>
<br/>

<input type="button"  class="btn btn-primary" value="提交复杂的json对象到后台" onclick="postJson();" />
<br/>
<br/>

            CALLBACK分页:
            <app:PageBS id="pageCallback" count="${page.count}" currentPage="${page.currentPage}" pageCount="${page.pageCount}" pageSize="${page.pageSize}" useCallback="true" pageCallback="pageCallback" />
<script type="text/javascript">
 function pageCallback(page){
	 window.location.href='${root}demo/list.do?1=1&pagesize='+page.pageSize+'&currentPage='+page.currentPage;
 }
 /**
 如何把一个js对象提交到后台, 你还可以提交数组，或者更复杂的对象
 */
 function postJson(){
	 
	   var vo={
			    "id":'11',
				"name":'my name is 帅哥!!!',
				"address":"address1",
				"sex":"sex1",
				"work":"work1",
				"createDate":"2015-10-10 23:31:00", //日期
				"lalala":"lalala"  //pojo 中不存在的字段
	   };  
	   //再添加一个属性
	   vo.aaa="aaa";
	   //删除一个属性
	   delete vo.aaa;
	 
	   $.ajax({
			url : $root+'/demo/postJson.do',
			dataType: 'json',
			contentType : 'application/json; charset=UTF-8',
			data : JSON2.stringify(vo),
			type : 'POST',
			success : function(result) {
				alert(result.msg);
			}
	   });
 }
 
</script>	
</body>
</html>
