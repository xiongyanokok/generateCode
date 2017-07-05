<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common/tag.jspf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>毕业证打印</title>
<link rel="stylesheet" href="style1.css"  />
<style type="text/css">

</style>
</head>
<body>
<br />
<br />
<br />
<br />
<p></p>
<p></p>
<p>&nbsp;</p>
	<table style="width:672px;height:221px;margin:50px auto;">
    	<tbody style="width:538px;height:202px;margin-left:65px;">
        	<tr style="height:15px;width:538px;">
	        		<td style="height:15px;float:left;background:#FFF;width:108px;margin-left:28px;">${byz.xyxm }</td>
	        		<td style="height:15px;float:left;background:#FFF;width:40px;margin-left:28px;">${byz.xyxb }</td>
	        		<td style="height:15px;float:left;background:#FFF;width:82px;margin-left:20px;">${year}</td>
	        		<td style="height:15px;float:left;background:#FFF;width:50px;margin-left:14px;">${month}</td>
	        		<td style="height:15px;float:left;background:#FFF;width:56px;margin-left:8px;">${day}</td>
	        		<td style="height:15px;float:left;background:#FFF;width:70px;margin-left:56px;"> ${byzrxyear}</td>
        	</tr>
            <tr style="width:538px;height:15px;">
            	<td style="height:15px;float:left;background:#FFF;width:36px;">${byzrxmonth}</td>
            	<td style="height:15px;float:left;background:#FFF;width:68px;margin-left:28px;">${byzbyyear}</td>
            	<td style="height:15px;float:left;background:#FFF;width:51px;margin-left:14px;">${byzbymonth}</td>
            	<td style="height:15px;float:left;background:#FFF;width:255px;margin-left:60px;"><bwie:xxzyrecode var="zy" zyid="${byz.xyxxzy }"/>${zy.mc}</td>
            </tr>
            <tr style="width:538px;height:15px;">
            	<td style="height:15px;float:left;background:#FFF;width:34px;height:15px;float:left;background:#FFF;">${xz}</td>
            </tr>
            <tr style="width:156px;height:15px;margin-left:88px;"><td>北京八维研修学院</td></tr>
            <tr style="width:538px;height:15px;">
            	<td style="width:160px;height:15px;margin-left:66px;background:#FFF;float:left;">${byz.zsno }</td>
            	<td style="width:70px;height:15px;margin-left:120px;background:#FFF;float:left;">${fzyear}</td>
            	<td style="width:36px;height:15px;margin-left:14px;background:#FFF;float:left;">${fzmonth}</td>
            	<td style="width:36px;height:15px;margin-left:8px;background:#FFF;float:left;">${fzday}</td>
            </tr>
    </tbody>
    </table>
</body>
</html>