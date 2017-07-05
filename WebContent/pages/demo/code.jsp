<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/pages/public/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>demo</title>
<%@include file="/pages/public/bootstrap_head.jsp"%>
</head>
<body>


	<div class="container">
		<h1>主页</h1>

		<div class="row">
			<div class="col-md-3"
				style="background-color: #dedef8; box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
				
				<a href="<c:url value='demo/list.do?GVzdDaW4hdGVzdEyMw=YWRtaW4hMTIz'/>" target="_blank"> 管理员登录</a>
				<br /> <br /> <br /> <br /> <br />
				
				<a href="<c:url value='demo/list.do?GVzdDaW4hdGVzdEyMw=d3V5YW5tZWkhMTIz'/>" target="_blank"> 出纳登录</a>
				<br /> <br /> <br /> <br /> <br />
				
				
				<a href="<c:url value='pages/demo/tagtest.jsp'/>" target="_blank">标签测试</a>	
				<br/><br/><br/><br/>
				
				<a href="<c:url value='demo/listBwiev2Demo.do'/>" target="_blank"> listBwiev2Demo</a>
		        <br /> <br /> <br /> <br /> <br />
				<button onclick="abc()">对话框</button>
				<span id="dialoagSpan" style="color:  red"></span>
			</div>
			<div class="col-md-9"
				style="background-color: #dedef8; box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
				<h2>
					Hello World! <br />
					<c:out value="c:out aaa" />
				</h2>
			</div>
		</div>
	</div>
</body>
</html>
