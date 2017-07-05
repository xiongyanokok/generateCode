<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/pages/public/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/pages/public/bootstrap_head.jsp"%>
	<title>请重新登录</title>
</head>
<body>

<div class="container">
   <div class="row" >
      <div class="col-xs-6 col-md-offset-3" >
      <br/><br/><br/><br/><br/><br/><br/><br/><br/>
          <div class="panel panel-green"> 
                        <div class="panel-heading">
                                                            请重新登录
                        </div>
                        <div class="panel-body">
                            <b>您还没有登录系统!</b>
                            <br/>
                            <br/>
                            <br/>
                            <b> <a href="${root}">请点此登录</a></b>
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
