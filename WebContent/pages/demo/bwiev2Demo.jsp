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
	<form name="searchForm" id="searchForm" method="post" >
		<table class="border" >
				<tr class="Navigation">
					<td><b>集团动态增加列表</b></td>
				</tr>
		</table>
		<table class="border "  align=center >
			<tbody>
				<tr class="Navigationtdbg">
					<td align="right">id：</td>
					<td colspan="3"><input name="id" type="text"
						value="${demo.id}" /></td>
				</tr>
				
				<tr class="Navigationtdbg">
					<td colspan="4" align="right">
					<INPUT class=button type="button" value=" 查 询 "  onclick="pageCallback();" name="Submit1"> 
					<INPUT class=button type="reset" value=" 重置 " name="Submit2"></td>
				</tr>
			</tbody>
		</table>
</form>
     <aa:zone name="listZone">
		<table class="border"  align="center" >
			<tbody>
				<tr class="title">
					<th>id</th>
					<th>name</th>
				</tr>
				<c:forEach items="${page.list}" var="obj">
					<tr class="titletdbg" >
						<td>${obj.id}</td>
						<td>${obj.name}</td>	
					</tr>
				</c:forEach>
				<tr class="titletdbg">
			<td colspan="2" align="right">
				<%-- <app:Page id="pageUrl" count="${page.count}" currentPage="${page.currentPage}" pageCount="${page.pageCount}" pageSize="${page.pageSize}" url="${root}demo/listBwiev2Demo.do" /> --%>
                <app:Page id="pageCallback" count="${page.count}" currentPage="${page.currentPage}" pageCount="${page.pageCount}" pageSize="${page.pageSize}" useCallback="true" pageCallback="pageCallback" />
            </td>
			</tr>
				<tr class="titletdbg">
					<td colspan=2 align=right>
					<input name='submit1' type="button" class=button value='增加'     onClick='window.location.href="mhJtdt.do?m=insertJtdtEntry";' />
					<input name='submit2' type='button' class=button value='提交审批' onClick='funsea();' /> 
					<input name='submit3' type='button' class=button value='修改'      onClick='funupd();' /> 
					<input name='submit4' type='button' class=button value='删除'     onClick='fundel();' />
					</td>
				</tr>
			</tbody>
		</table>
	</aa:zone>
	
	<script type="text/javascript">
	 function pageCallback(page){
		 var url='${root}demo/listBwiev2Demo.do?1=1';
		 if(page){
		    url=url+'&pagesize='+page.pageSize+'&currentPage='+page.currentPage
		 }
		 document.getElementById("searchForm").action=url;
		 ajaxAnywhere.formName="searchForm";
         ajaxAnywhere.submitAJAX();
	 }  
	 //指定刷新区域
	 ajaxAnywhere.getZonesToReload = function () {
		     return "listZone";
	 };
	</script>
</body>
</html>
