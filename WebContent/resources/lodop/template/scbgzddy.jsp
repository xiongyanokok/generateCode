<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common/tag.jspf"%>
<table border="0" cellSpacing="0" cellPadding="0" width="100%" bordercolor="#000000" style="font-family:'楷体';" >
  <thead>
  <tr  >
    <td width="100%" height="80" colspan="42" style="font-size: 28px;text-align:center; BORDER-COLLAPSE: collapse;  BORDER-LEFT: 0px  groove; BORDER-TOP:0px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;"><b style="letter-spacing: 10px;">北京八维集团 (${orgName})${gzy}工资表</b></td>
  </tr>
  
   <tr height="30">
  	<td style= "BORDER-COLLAPSE: collapse; BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="30" align="center">序号</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="30"align="center">结构</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200"align="center">机构</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="150" align="center">职务</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200"align="center">姓名</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200"align="center">上月基本工资</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">本月新增基本工资</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">退基本工资</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">本月调整基本工资</td>
		<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">本月实际基本工资</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">名义业绩</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">饭补</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">补助</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">工龄</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">奖罚</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">考勤扣款</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">考勤扣款调整</td>
 	 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">实际考勤扣款</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">保险扣款</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">公积金</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">补上月</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">招生补助</td>
 		<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">退招生补助</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">招生补助调整</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">实际招生补助</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">提成业绩</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">提成点</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">本人提成</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">本人提成调整</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">实发提成</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">级差提成</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">级差提成调整</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">实发级差提成</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">固定提点</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">固定提点调整</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">实发固定提点</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">KPI考核</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">罚款</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">应发金额</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">纳税部分</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200">缴税</td>
 	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove; font-size: 10px"  align="center" width="200"  >实发工资</td>
  </tr>
  </thead>
  <tbody style="font-size: 10px;" align="center">
  <c:if test="${not empty gzsss}">
  <c:forEach var="gzss" items="${gzsss}" varStatus="stauts">
  <tr height="30"  >
	<td colspan="5" style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;" width="200"> 财务留存15%</td>	
	
				<c:choose>
				<c:when test="${gzss[5]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[5]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
					<c:choose>
				<c:when test="${gzss[6]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[6]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
		<c:choose>
				<c:when test="${gzss[7]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[7]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
	<c:choose>
				<c:when test="${gzss[8]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[8]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>		
					<c:choose>
				<c:when test="${gzss[9]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[9]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
		<c:choose>
				<c:when test="${gzss[10]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[10]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
<c:choose>
				<c:when test="${gzss[11]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[11]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>		
				<c:choose>
				<c:when test="${gzss[12]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[12]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[13]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[13]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[14]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[14]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[15]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[15]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[16]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[16]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[17]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[17]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[18]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[18]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[19]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[19]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[20]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[20]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[21]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[21]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[22]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[22]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[23]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[23]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[24]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[24]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[25]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[25]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[26]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[26]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[27]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[27]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[28]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[28]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[29]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[29]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[30]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[30]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[31]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[31]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[32]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[32]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[33]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[33]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[34]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[34]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[35]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[35]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[36]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[36]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[37]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[37]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[38]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[38]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[39]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[39]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[40]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[40]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzss[41]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzss[41]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
</tr>
</c:forEach>
</c:if>
  <c:if test="${not empty gzs}">
  <c:forEach var="gz" items="${gzs}" varStatus="stauts">
  <tr height="30"  >
  <td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="30">${stauts.index+1}</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="30">${gz[0]}</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="200">	${gz[1]} </td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;" width="150"><bwie:zwbmrecode var="zw" zid="${gz[3]}"/>${zw.mc}
									<input type="hidden" name="zwmc" value="${zw.mc}">
 									<input type="hidden" name="zwid" value="${gz[3]}"></td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;" width="200">${gz[4]}</td>
	
			
				<c:choose>
				<c:when test="${gz[5]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[5]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
					<c:choose>
				<c:when test="${gz[6]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[6]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
		<c:choose>
				<c:when test="${gz[7]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[7]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
	<c:choose>
				<c:when test="${gz[8]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[8]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>		
					<c:choose>
				<c:when test="${gz[9]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[9]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
		<c:choose>
				<c:when test="${gz[10]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[10]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
<c:choose>
				<c:when test="${gz[11]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[11]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>		
				<c:choose>
				<c:when test="${gz[12]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[12]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[13]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[13]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[14]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[14]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[15]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[15]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[16]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[16]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[17]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[17]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[18]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[18]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[19]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[19]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[20]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[20]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[21]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[21]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[22]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[22]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[23]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[23]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[24]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[24]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[25]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[25]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[26]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[26]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[27]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[27]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[28]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[28]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[29]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[29]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[30]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[30]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[31]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[31]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[32]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[32]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[33]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[33]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[34]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[34]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[35]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[35]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[36]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[36]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[37]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[37]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[38]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[38]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[39]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[39]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[40]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[40]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gz[41]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gz[41]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
</tr>
</c:forEach>
</c:if>

 
 <c:if test="${not empty gzss}">
  <c:forEach var="gzs" items="${gzss}" varStatus="stauts">
  <tr height="30"  >
	<td colspan="5" style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;" width="200">合计</td>	
				<c:choose>
				<c:when test="${gzs[5]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[5]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
					<c:choose>
				<c:when test="${gzs[6]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[6]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
		<c:choose>
				<c:when test="${gzs[7]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[7]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
	<c:choose>
				<c:when test="${gzs[8]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[8]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>		
					<c:choose>
				<c:when test="${gzs[9]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[9]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
		<c:choose>
				<c:when test="${gzs[10]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[10]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
<c:choose>
				<c:when test="${gzs[11]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[11]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>		
				<c:choose>
				<c:when test="${gzs[12]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[12]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[13]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[13]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[14]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[14]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[15]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[15]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[16]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[16]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[17]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[17]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[18]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[18]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[19]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[19]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[20]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[20]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[21]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[21]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[22]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[22]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[23]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[23]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[24]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[24]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[25]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[25]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[26]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[26]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[27]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[27]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[28]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[28]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[29]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[29]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[30]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[30]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[31]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[31]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[32]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[32]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[33]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[33]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[34]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[34]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[35]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[35]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[36]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[36]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[37]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[37]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[38]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[38]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[39]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[39]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[40]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[40]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${gzs[41]==0}">
					<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"></td>
				</c:when>
				<c:otherwise>
				<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"width="200"><fmt:formatNumber value="${gzs[41]}" pattern="0.00"/></td>
				</c:otherwise>
				</c:choose>
</tr>
</c:forEach>
</c:if>
 
  </tbody>
   <tr>
    <td colspan="42" height="60" style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;" width="100%" align="right"><b style="letter-spacing: 10px;" >制表人:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;部门总监:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;财务审核:</b>${qrrxm}<b style="letter-spacing: 10px;">&nbsp;&nbsp;领导审批:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
  </tr>
   <tfoot>
	<tr><td colspan="42">&nbsp;</td></tr>
	<tr>
	 <td width="100%" colspan="42" align="right">
		<span > 第</span><span tdata="pageNO" format="#" ><font color="#0000FF">#</font></span>页/共<span tdata="pageCount" format="#"><font color="#0000FF">#</font></span>页
	</td>
    </tr>
    
  </tfoot>
</table>