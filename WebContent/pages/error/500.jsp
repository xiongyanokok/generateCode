<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true"%>
<%@page import="java.io.PrintStream"%>  
<%@page import="java.io.ByteArrayOutputStream"%>  
<%@include file="/pages/public/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
     <%@include file="/pages/public/bootstrap_head.jsp"%>
	<title>500 服务器错误</title>
</head>
<body>

<div class="container">
   <div class="row" >
      <div class="col-xs-6 col-md-offset-3" >
      <br/><br/><br/><br/><br/><br/><br/><br/><br/>
          <div class="panel panel-red"> 
                        <div class="panel-heading">
                               500 Oops! Internal Server Error
                        </div>
                        <div class="panel-body">
                                                        服务器内部错误,请稍候再试!!!<a href="javascript:history.go(-1);">返回</a>!
                            <br/>
                                                      错误信息:
                            <%= exception.getMessage()%> 
                            <br/>
                            <%  //此处输出异常信息  
	                            exception.printStackTrace();  
	                            ByteArrayOutputStream ostr = new ByteArrayOutputStream();  
	                            exception.printStackTrace(new PrintStream(ostr));  
	                            out.print(ostr);  
                            %>  
                            <br>
                            <br>
                        </div>
          </div>
      </div>
   </div>
</div>
</html>
