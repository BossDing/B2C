<%@ page language="java" import="java.util.*" contentType = "text/html;
charset = gb2312" pageEncoding = "GBK" %>
<% String username = (String)session.getAttribute("username"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>BC2商城</title>
<link href="../css/frame.css" rel="stylesheet" type="text/css">
   </head>

<body>
<div id="container">
	<div id="logalleft">
		<div id="logalright">
		<a href="" target="_parent">[<%= username %>] 已登录|</a>
	 	<a href="home.jsp" target="_parent">退出</a>
		</div>
	</div>
	<div id="globallink">
		<ul>
			<li><a href="home.jsp">首页</a></li>
			<li><a href="category_list.jsp">商品管理</a></li>
			<li><a href="order_admin.jsp">订单管理</a></li>
			<li><a href="salesdata_admin.jsp">销售量统计</a></li>
			<li><a href="user_admin.jsp">会员管理</a></li>
			<li><a href="" class="nouseful">&nbsp;</a></li>
			<li><a href="" class="nouseful">&nbsp;</a></li>
			<li><a href="" class="nouseful">&nbsp;</a></li>
		</ul>
	</div>
	<div id="banner"></div>
	<div id="main">
		<div id="search2">
			<div id="searchleft">
				<img src="../image/ico_site.jpg"  id="ico_site"/>
				网站路径：<a href="home.jsp">首页</a>&gt;&gt;<a href="">查看商品评论</a>
			</div>
		
		</div>
		<div id="sendnote">
			<div id="sendnotehead"><strong>共有2条评论</strong></div>
			<div id="sendnotecontent">
				<table id="creditquery">
					<tr>
					<td class="commentr1color"> 会员：</td>
					<td class="commentr1color"> zhangtong123@163.com</td>
					<td class="commentr1color"> 发表时间：</td>
					<td class="commentr1color"> 2007-10-05 22:12:30</td>
					<td class="commentr1color"> 打分：</td>
					<td class="commentr1color"> <img src="../image/4star.JPG" alt="喜欢"></td>
					</tr>
					<tr>
					<td class="commentr2color">评论：</td>
	     			<td colspan="5" class="commentr2color"><span class="red">很不错的一本书，通俗易懂，是大学物理教材中的经典之作。</span> </td>
	 			   </tr>
				   	<tr>
					<td class="commentr1color"> 会员：</td>
					<td class="commentr1color"> wangqd456@126.com</td>
					<td class="commentr1color"> 发表时间：</td>
					<td class="commentr1color"> 2007-10-20 17:23:16</td>
					<td class="commentr1color"> 打分：</td>
					<td class="commentr1color"> <img src="../image/4star.JPG" alt="喜欢"></td>
					</tr>
					<tr>
					<td class="commentr2color">评论：</td>
	     			<td colspan="5" class="commentr2color"><span class="red">看过了，确实不错。</span></td>
	 			   </tr>
            </table>	
			</div>
		</div>
		
	<div id="footer">
		<span id="footerleft"> &nbsp;隐私权 | 版权 | 法律声明 | 电子邮件：admin@163.com </span>
		<span id="footerright"> B2C商城  Power by IBM &nbsp;</span>
	</div>
</div>

</body>
</html>
