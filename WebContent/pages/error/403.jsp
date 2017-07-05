<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/pages/public/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/pages/public/bootstrap_head.jsp"%>
	<title>403 Oops!</title>
</head>
<body>

<div class="container">
   <div class="row" >
      <div class="col-xs-6 col-md-offset-3" >
      <br/><br/><br/><br/><br/><br/><br/><br/><br/>
          <div class="panel panel-green"> 
                        <div class="panel-heading">
                               403 Oops! Page Access Denied
                        </div>
                        <div class="panel-body">
                                                        该资源您没权限访问,请<a href="javascript:history.go(-1);">返回</a>!!!
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
