<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/pages/public/tag.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>集团动态增加列表</title>
<%@include file="/pages/public/head.jsp"%>
<style type="text/css">
</style>
</head>
<body>
        <table class="border" >
				<tr class="Navigation">
					<td><b>集团动态增加列表</b></td>
				</tr>
		</table>
		<aa:zone name="listZone">
		<table class="border"  align="center" >
			<tbody>
				<tr class="title">
				    <th style="width:40px;text-align: center"><input type="checkbox" value="all"  id="check_all" onclick="check(this)" /></th>
					<th>id</th>
					<th>name</th>
				</tr>
				<c:forEach items="${page.list}" var="obj">
					<tr class="titletdbg" >
					    <td style="width:40px;text-align: center"> <input type="checkbox" value="${obj.id}" name="ck_id" onclick="check(this)" /> </td>
						<td>${obj.id}</td>
						<td>${obj.name}</td>
					</tr>
				</c:forEach>
				<tr class="titletdbg">
			<td colspan="3" align="right">
                <app:Page id="pageCallback" count="${page.count}" currentPage="${page.currentPage}" pageCount="${page.pageCount}" pageSize="${page.pageSize}" useCallback="true" pageCallback="pageCallback" />
            </td>
			</tr>
				<tr class="titletdbg">
					<td colspan=3 align="center">
					   <input type="button" class="button" value="确认" onclick="confirm();">
			           <input type="button" class="button" value="关闭" onclick="cancel();">
					</td>
				</tr>
			</tbody>
		</table>
	</aa:zone>

<script type="text/javascript">
   //分页回调
	function pageCallback(page){
		 var url='${root}demo/listDialog.do?1=1';
		 if(page){
		    url=url+'&pagesize='+page.pageSize+'&currentPage='+page.currentPage
		 }
	     ajaxAnywhere.getAJAX(url,'listZone');
	}  
   //全选
   function check(who){
	   if('all'== who.value){
		   $("input[name='ck_id']").each(function () {
			   this.checked=who.checked;
		   });
	   }else{
		   var checkAll=true;
		   $("input[name='ck_id']").each(function () {
			   if(!this.checked){
				   checkAll=false;
			   }
			   return checkAll;
	       }); 
		   $('#check_all')[0].checked=checkAll;
	   }
   }
   
   function getOpener (){
		if(opener){
				return opener.window; 
		}else {
				return parent.window;
		}
   }
   
   // 确认按钮
   function confirm (){
	   var ids=[];
	   $("input[name='ck_id']:checked").each(function () {
		   ids.push(this.value);
       });
	   if(ids.length<=0){
		   alert("请选择!");
		   return false;
	   }
	   //一定要传递json 对象
	   //在父页面定义一个 dialogConfirm 函数,参数时一个对象
	   if(getOpener()){
		   getOpener().dialogConfirm(
				   {
			         ids:ids.join()
			       }
			   );
	   }
   }
   //关闭按钮
   function cancel (){
	    //在父页面定义一个 dialogCancel 函数,参数时一个对象
	    if(getOpener()){
	    	getOpener().dialogCancel();
	    }
   }
</script>
</body>
</html>
