<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/pages/public/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/pages/public/bootstrap_head.jsp"%>
    <title></title>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">登录</h3>
                    </div>
                    <div class="panel-body">
                        <form action="login.do" id="formLogin">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="用户名" name="username" id="username" type="text" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="密码"  name="password"  id="password" type="password" value="">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">记住我
                                    </label>
                                </div>
                                <a href="javascript:void(0);" class="btn btn-lg btn-success btn-block" onclick="document.getElementById('formLogin').submit();" >登录</a>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
    $('#username,#password').bind('keypress',function (event){
    	if(event.keyCode == "13")    
   	    {
   	    	$("#formLogin").submit();
   	    }
    });
    </script>
</body>
</html>
