<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/pages/public/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>demo</title>
	<%@include file="/pages/public/head.jsp"%>
	<script type="text/javascript" src="${pg}demo/aaDemo.js"></script>
</head>
<body>
  <form action="${root}/demo/aaDemo.do" name="form1">
   id:  <input type="text" name="id" ><br/>
   name  <input type="text" name="name" ><br/>
   <input type="button" onclick="aaDemo()" value="提交">
  
  </form>
  <form  action="${root}/demo/mytest.do" name="listForm">
    		<table>
    			 <tr>
    			 	<td>ID编号 :</td><td><input type="text" name="id" id="id"/></td>
    			 </tr>
    			 <tr>
    			 	<td>姓名 :</td><td><input type="text" name="name" /></td>
    			 </tr>
    			 <tr>
    			 	<td>性别 :</td><td><input type="text" name="sex" /></td>
    			 </tr>
    			 <tr>
    			 	<td>工作行业:</td><td><input type="text" name="work" /></td>
    			 </tr>
    			 <tr>
    			 	<td>地址:</td><td><input type="text" name="address" /></td>
    			</tr>
    			<tr>
    				<td><input type="button" value="提交" onclick="return doCheck()" /></td ><td><input type="reset" value="取消" /></td >
    			</tr> 
    			
    		</table>
    		</form>
  <aa:zone name="zone1">
     id: ${demo.id}<br/>
     name: ${demo.name}<br/>
      <table border="1">
	   		<tr>
	   			<td>ID编号&nbsp;&nbsp; </td>
	   			<td>姓名</td>
	   			<td>性别</td>
	   			<td>工作行业</td>
	   			<td>地址</td>
	   		</tr>
			  <tr>
			  	<td>${demo.id}</td>
			  	<td>${demo.name}</td>
			  	<td>${demo.sex}</td>
			  	<td>${demo.work}</td>
			  	<td>${demo.address}</td>
			  </tr>
	   </table>
  </aa:zone>
</body>
</html>
