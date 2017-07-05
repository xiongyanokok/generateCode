<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true"%>
<%@include file="/pages/public/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/pages/public/bootstrap_head.jsp"%>
	<title>应用程序错误</title>
</head>
<body>

<div class="container">
   <div class="row" >
      <div class="col-xs-6 col-md-offset-3" >
      <br/><br/><br/><br/><br/><br/><br/><br/><br/>
          <div class="panel panel-red"> 
                        <div class="panel-heading">
                                                       应用程序错误
                        </div>
                        <div class="panel-body">
                                                       应用程序错误:<%= exception.getMessage()%>
					       <br/>     
					             请<a href="javascript:history.go(-1);">返回</a>!!!
                           <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                        </div>
          </div>
      </div>
   </div>
</div>
</html>
