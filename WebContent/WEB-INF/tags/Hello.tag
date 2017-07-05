<%@ tag pageEncoding="UTF-8"
description="hello tag"
%>
使用方法:<br/>
1. 在使用页面引入  &lt;%@ taglib prefix="app"  &nbsp;&nbsp; <b>tagdir="/WEB-INF/tags"</b>   %&gt; <br/>
2. 在HTML body中 这样使用:  &lt;app:Hello /&gt;<br/>
3. 标签文件必须以<b>".tag"</b> 结尾,必须放到/WEB-INF/tags 目录中,就这么简单 <br/>
4. 为什么要用tagfile：这样可以免去在java中拼接HTML代码<br/>
5. 20150930 by xuejianxin<br/>