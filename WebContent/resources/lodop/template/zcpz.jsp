<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common/tag.jspf"%>
<table border="0" cellSpacing="0" cellPadding="0" width="100%" bordercolor="#000000" style="font-family:'楷体';">
<thead>
  <tr>
    <td width="100%" colspan="6" style="font-size: 30px;text-align:center;">
    	<b style="letter-spacing: 30px;">
    		<c:if test="${fyd.zcfl==1}">支出凭证 </c:if>
    		<c:if test="${fyd.zcfl==0}">支出说明</c:if>
    	</b>
    </td>
  </tr>
  <tr height="25" style="font-size: 15px;">
	<td width="100%" colspan="6" align="left"><span style="padding-left:600px;">类型：${fyd.istepi + 1}</span></td>
  </tr>
  <tr height="25" style="font-size: 15px;">
  	<td width="100%" colspan="6" align="left"><span style="display:inline-block;width:200px;">部门：<bwie:organize var="mxqy" orgCode="${orgCode }"/>${mxqy.orgNameC}</span><span style="display:inline-block;width:180px;">经手人：${username }</span><span style="display:inline-block;width:220px;"><fmt:formatDate value="${dyDate }" pattern="yyyy" />年&nbsp;&nbsp;<fmt:formatDate value="${dyDate }" pattern="MM" />月&nbsp;&nbsp;<fmt:formatDate value="${dyDate }" pattern="dd" />日</span>编号：${fyd.bh }</td>
  </tr>
   <tr height="27" style="font-size: 14px;">
	<th style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="100">报销科目</th>
	<th style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="100">报销人部门</th>
	<th style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="70">报销人</th>
	<th style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="400">摘 &nbsp; &nbsp; &nbsp;要</th>
	<th style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="50">15%</th>
	<th style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;" width="90">金额</th>
  </tr>
  </thead>
  <tbody style="font-size: 14px;" align="center">
  <c:forEach items="${fymxList }" var="fymx">
  <tr height="27">
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="100"><bwie:fybm var="fykm" p_id="${fymx.kmid}"/>${fykm.mc}</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="100"><bwie:organize var="mxqy" orgCode="${fymx.mxqy}"/>${mxqy.orgNameC}</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="70"><c:if test="${fymx.peixunqihao == null }"><bwie:formalStaff var="djr" fsid="${fymx.djr}"/>${djr.name}</c:if><c:if test="${fymx.peixunqihao != null }"><bwie:pxjl var="djr" pid="${fymx.djr}"/>${djr.xm}</c:if></td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="400">${fymx.fysm }</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="50"><c:if test="${fymx.isbx == 1}">是</c:if></td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;" width="90"><fmt:formatNumber value="${fymx.fyje }" pattern="##00.00#" /></td>
  </tr>
  </c:forEach>
  <tr height="28" style="font-size: 15px;">
	<td colspan="6">
	  <table bordercolor="#000" cellSpacing="0" cellPadding="0" width="100%" >
	    <tr height="28">
		  <th style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;" width="20%" align="right">大写金额：</th>
		  <th style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="30%" tdata="Sum" format="UpperMoney" tindex="6"><font color="#0000FF">######</font></th>
		  <th style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="20%" align="right">合计：</th>
		  <th style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;" width="30%" tdata="Sum" format="###0.00" tindex="6"><font color="#0000FF" >######</font></th>
		</tr>
	  </table>
	</td>
	
  </tr>
  <tr height="28"  style="font-size: 15px;">
	<th width="100%" colspan="6" align="left"><span style="display:inline-block;width:140px;">部门领导：</span><span style="display:inline-block;width:140px;">主管会计：</span><span style="display:inline-block;width:180px;">公司领导：</span><span style="display:inline-block;width:140px;">出纳：</span>领款人：</th>
  </tr>
  </tbody>
  <tfoot>
	<tr><td colspan="6">&nbsp;</td></tr>
	<tr>
	 <td width="100%" colspan="6">
		<span tdata="pageNO" format="#" style="padding-left:700px;"><font color="#0000FF">#</font></span>/<span tdata="pageCount" format="#"><font color="#0000FF">#</font></span>
	</td>
    </tr>
  </tfoot>
</table>