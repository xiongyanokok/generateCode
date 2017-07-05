<%@ tag pageEncoding="UTF-8" 
body-content="scriptless"
description="分页标签"
%>
<%@ attribute name="id"            required="true"  rtexprvalue="true"  description="ID"%>
<%@ attribute name="count"         required="true"  rtexprvalue="true"  type="java.lang.Integer" description="总数"%>
<%@ attribute name="pageSize"      required="true"  rtexprvalue="true"  type="java.lang.Integer" description="每页数量"%>
<%@ attribute name="currentPage"   required="true"  rtexprvalue="true"  type="java.lang.Integer" description="当前页码"%>
<%@ attribute name="pageCount"     required="true"  rtexprvalue="true"  type="java.lang.Integer" description="总页数"%>
<%@ attribute name="url"           required="false" rtexprvalue="true"  description="分页请求的url"%>
<%@ attribute name="pageCallback"  required="false" rtexprvalue="true"  description="点击页签的js回调函数"%>
<%@ attribute name="useCallback"   required="false" rtexprvalue="true"  type="java.lang.Boolean" description="是否需要js回调函数"%>
<%
  useCallback= null==useCallback?false:useCallback;
  if(null!=url && !"".equals(url) ){
	  if(url.indexOf("?")<0){
		  url+="?1=1";
	  }
  }
jspContext.setAttribute("url", url);
%>
<div class="pager"> 
	<span><%=currentPage%>/<%=pageCount%>,每页<%=pageSize%>条,共<%=count%>条</span>
	<% if(currentPage-1<=0){%>
		 <a href="javascript:void(0);">&lt;</a>
	<% } else if(useCallback){ %>
	     <a href="#" onclick="<%=pageCallback%>({'pageSize':<%=pageSize%>,'currentPage':<%=currentPage-1%>});">&lt;</a>
	<% } else { %>
	     <a href="<%=url%>&pageSize=<%=pageSize%>&currentPage=<%=currentPage-1%>">&lt;</a>
	<% } 
	 int begin=(currentPage-5 >0) ? (currentPage-5):1;
	 int end  =(currentPage-5 >0 )? ((currentPage+4>=pageCount)? pageCount:currentPage+4) : (pageCount>=10?10:pageCount);
	 for(int i=begin;i<=end;i++){
		 boolean isCurrent= (i==currentPage);
		 if(useCallback){ %>
		 	<a  <%= (isCurrent? "class='current'":" " )%> href="#" onclick="<%=pageCallback%>({'pageSize':<%=pageSize%>,'currentPage':<%=i%>});"><%=i%></a> 
	<%	 } else { %>
		    <a  <%= (isCurrent? "class='current'":" " )%> href="<%=url%>&pageSize=<%=pageSize%>&currentPage=<%=i%>"><%=i%></a>
	<%	 }
	 } //end for
	
	   if(currentPage+1>pageCount){%>
		 <a href="javascript:void(0);">&gt;</a>
	<% } else if(useCallback){ %>
	     <a href="#" onclick="<%=pageCallback%>({'pageSize':<%=pageSize%>,'currentPage':<%=currentPage+1%>});">&gt;</a>
	<% } else { %>
	     <a href="<%=url%>&pageSize=<%=pageSize%>&currentPage=<%=currentPage+1%>">&gt;</a>
	<% } %>
</div><!-- end pager --> 

