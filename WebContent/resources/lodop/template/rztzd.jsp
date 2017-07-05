<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common/tag.jspf"%>
<table border="0" cellSpacing="0" cellPadding="0" width="100%" bordercolor="#000000" style="font-family:'楷体';">
  <thead>
  <tr>
    <td width="100%" height="40" colspan="4" style="font-size: 28px;text-align:center; BORDER-COLLAPSE: collapse;  BORDER-LEFT: 0px  groove; BORDER-TOP:0px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;"><b style="letter-spacing: 10px;">入住通知单</b></td>
  </tr>
  </thead>
  <tbody style="font-size: 15px;" align="center">
  <tr height="30">
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="160">市场部</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="200">${zsgl.dlrdwmc }</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="160">住宿人员姓名</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;" width="200">${zsgl.jzxm }</td>
  </tr>
  <tr height="30">
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="160">性别</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="200">${zsgl.xb }</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="160">关联学生姓名</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;" width="200">${zsgl.xyxm }</td>
  </tr>
  <tr height="30">
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="160">住宿人员身份</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="200">${zsgl.jord }</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="160">房间及床位号</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;" width="200">${fjgl.menuName }</td>
  </tr>
  <tr height="30">
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="160">入住时间</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="200"><fmt:formatDate value="${zsgl.jssj }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="160">可免费住宿天数</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;" width="200">${day }</td>
  </tr>
  <tr height="30">
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="160">押金</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="200">${zsgl.zsyj }</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="160">住宿管理员</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;" width="200">${zsgl.rzjsrxm }</td>
  </tr>
  <tr height="30">
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="160">应退房时间</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="200"><fmt:formatDate value="${zsgl.sqlssj }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="160">物品确认签字</td>
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"></td>
  </tr>
  <tr height="30">
	<td style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 0px groove;BORDER-BOTTOM: 1px  groove;" width="160">备注</td>
	<td colspan="3" style="BORDER-COLLAPSE: collapse;  BORDER-LEFT: 1px  groove; BORDER-TOP:1px  groove; BORDER-RIGHT: 1px groove;BORDER-BOTTOM: 1px  groove;"></td>
  </tr> 
  </tbody>
</table>