<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common/tag.jspf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>结业证打印</title>
<link rel="stylesheet" href="style1.css"  />
<style type="text/css">

</style>
</head>
<body>
	<table style="width:675px;height:476px;background:#6CF;margin:50px auto;">
    	<tbody style="width:355px;height:322px;float:right;margin-right:65px;">
        	<tr style="height:15px;width:255px;">
            	<td style="height:15px;float:left;background:#fff;width:130px;margin-left:32px;">${byz.xyxm }</td>
            	<td style="height:15px;float:left;background:#fff;width:40px;margin-left:45px;">${byz.xyxb }</td>
            </tr>
            <tr style="height:15px;width:255px;">
            	<td style="height:15px;float:left;background:#fff;width:60px;">${year}</td>
            	<td style="height:15px;float:left;background:#fff;width:25px;margin-left:15px;">${month}</td>
            	<td style="height:15px;float:left;background:#fff;width:26px;margin-left:14px;">${day}</td>
            	<td style="height:15px;float:left;background:#fff;margin-left:60px;">${byzrxyear}</td>
            </tr>
            <tr style="height:15px;width:255px;">
            	<td style="height:15px;float:left;background:#fff;width:51px;">${byzrxmonth}</td>
            	<td style="height:15px;float:left;background:#fff;margin-left:28px;">${byzbyyear}</td>
            	<td style="height:15px;float:left;background:#fff;width:43px;margin-left:16px;">${byzbymonth}</td>
            </tr>
            <tr style="height:15px;width:255px;">
            	<td style="height:15px;width:166px;paddding-left:56px;background:#fff;"><bwie:xxzyrecode var="zy" zyid="${byz.xyxxzy }"/>${zy.mc}</td>
            </tr>
            <tr style="height:15px;width:226px;float:right;">
	            <td style="height:15px;float:left;background:#fff;width:62px;">${byz.zsno }</td>
	            <td style="height:15px;float:left;background:#fff;">${fzyear}</td>
	            <td style="height:15px;float:left;background:#fff;width:30px;margin-left:14px;">${fzmonth}</td>
	            <td style="height:15px;float:left;background:#fff;width:32px;margin-left:12px;">${fzday}</td>
            </tr>
    	</tbody>
    </table>
</body>
</html>