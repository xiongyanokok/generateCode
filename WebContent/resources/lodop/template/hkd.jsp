<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common/tag.jspf"%>
<table border="0" cellSpacing="0" cellPadding="0" width="100%" bordercolor="#000000" style="font-family:'楷体';">
  <thead>
  <tr>
    <td width="100%" colspan="4" style="font-size: 32px;text-align:center;"><b style="letter-spacing: 30px;">还款单</b></td>
  </tr>
  <tr height="28" style="font-size: 15px;">
	<td width="100%" colspan="4" align="left"><span style="display:inline-block;width:180px;">部门：<bwie:organize var="mxqy" orgCode="${orgCode }"/>${mxqy.orgNameC}</span><span style="display:inline-block;width:200px;">经手人：${username }</span><span style="display:inline-block;width:200px;"><fmt:formatDate value="${dyDate }" pattern="yyyy" />年&nbsp;&nbsp;<fmt:formatDate value="${dyDate }" pattern="MM" />月&nbsp;&nbsp;<fmt:formatDate value="${dyDate }" pattern="dd" />日</span>编号：${bh }</td>
  </tr>
  <tr height="30" style="font-size: 15px;">
	<th style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="120">还款人部门</th>
	<th style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="100">还款人</th>
	<th style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="400">摘 &nbsp; &nbsp; &nbsp;要</th>
	<th style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;" width="100">还款金额</th>
  </tr>
  </thead>
  <tbody style="font-size: 15px;" align="center">
  <tr height="160">
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="120"><bwie:organize var="mxqy" orgCode="${orgcode}"/>${mxqy.orgNameC}</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="100"><bwie:formalStaff var="djr" fsid="${hkry}"/>${djr.name}</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="400">${zy }</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;" width="100"><fmt:formatNumber value="${hkje }" pattern="##00.00#" /></td>
  </tr>
  
  <tr height="30" style="font-size: 15px;">
	<td colspan="4">
	  <table bordercolor="#000" cellSpacing="0" cellPadding="0" width="100%" >
	    <tr height="30">
		  <th style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;" width="20%" align="right">大写金额：</th>
		  <th style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="30%" tdata="Sum" format="UpperMoney" tindex="4"><font color="#0000FF">######</font></th>
		  <th style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="20%" align="right">合计：</th>
		  <th style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;" width="30%" tdata="Sum" format="###0.00" tindex="4"><font color="#0000FF" >######</font></th>
		</tr>
	  </table>
	</td>
	
  </tr>
  <tr height="30"  style="font-size: 15px;">
	<th width="100%" colspan="4" align="left"><span style="display:inline-block;width:140px;">部门领导：</span><span style="display:inline-block;width:140px;">主管会计：</span><span style="display:inline-block;width:180px;">公司领导：</span><span style="display:inline-block;width:140px;">出纳：</span>领款人：</th>
  </tr>
  </tbody>
</table>