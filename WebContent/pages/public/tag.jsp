<%@ taglib uri="http://java.sun.com/jsp/jstl/core"       prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"        prefix="fm" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn" %>
<%@ taglib   tagdir="/WEB-INF/tags"  prefix="app" %>
<%@ taglib prefix="aa"  uri="ajaxAnywhere"   %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  pageContext.setAttribute("root"  ,basePath);
  pageContext.setAttribute("rs"    ,basePath+"resources/");
  pageContext.setAttribute("pg"    ,basePath+"pages/");
%>