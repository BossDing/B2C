<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page language="java"contentType = "text/html;
charset = gb2312" pageEncoding = "GBK"%>
<% String username = (String)session.getAttribute("username"); %>
<html>
<head>
<title>BC2商城</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../css/frame.css" rel="stylesheet" type="text/css"/>
<script language="javascript">
function show(table,sum){
var t;
t=document.getElementById(table);
  if(t.style.display=="") {
 t.style.display="none";
  } 
 else {
  t.style.display="";
 }
 var i;
 
 for(i=0;i<sum;i++){
 if(("t"+i)!=table){
 t=document.getElementById("t"+i);
 t.style.display="none";
   }
  }
}

function checkselectno(){
var el = document.getElementsByTagName('input');
var len = el.length;
var checkno=0;
for(var i=0; i<len; i++)
  {
  if((el[i].type=="checkbox") && (el[i].checked==true))   
     checkno++;   
  }
if(checkno==1)
  {window.location.href="category_edit.html";
   return true;
  }
if(checkno>1)
  {
  window.alert("每次只能修改一个目录！");
  return false;
  }
else
  {
  window.alert("请先选择目录！");
  return false;
  }

}

function checkdelno(){
var el = document.getElementsByTagName('input');
var len = el.length;
var checkno=0;
for(var i=0; i<len; i++)
  {
  if((el[i].type=="checkbox") && (el[i].checked==true))   
     {checkno=1;
	 break;  }
  }
if(checkno==1)
  {
  if(window.confirm("确定删除？"))
     return true;
   else
     return false;
  }
 
else
  {
  window.alert("请先选择目录！");
  return false;
  }

}
</script>
<script language="javascript" src="../js/checkform.js"></script>

</head>

<body>
<div id="container">
	<div id="logalleft">
		<div id="logalright">
		<a href="" target="_parent">[<%= username %>] 已登录|</a>
	 	<a href="home.html" target="_parent">退出</a>
		</div>
	</div>
	<div id="globallink">
		<ul>
			<li><a href="home.html">首页</a></li>
			<li><a href="category_list.html">商品管理</a></li>
			<li><a href="order_admin.html">订单管理</a></li>
			<li><a href="salesdata_admin.html">销售量统计</a></li>
			<li><a href="user_admin.html">会员管理</a></li>
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
				网站路径：<a href="home.html">首页</a>&gt;&gt;<a href=""> 商品管理</a>
			</div>
		</div>
		<div id="double1">
			<div id="doublehead1"><strong>现有目录列表</strong></div>
			<div id="doublecontent1">
			<form action="" method="post" enctype="multipart/form-data" name="form1">
				<table id="xialabiao">
				<tr>
			<td align="right" class="inputHeader"><label>
          <input type="checkbox" name="category1" value="tsyx">
          </label></td>
          <td align="left" class="inputHeader"><img src="../image/plus.gif"></td>
          <td width="94%"  class="inputHeader"><a href="javascript:show('t0',8)" class="menuLink">图书音像</a></td>
          </tr>
        <tr id="t0" style="display:none">
          <td colspan="3"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="inputTable">
              <tr>
                <td width="4%" align="right" class="inputContent"><input type="checkbox" name="category1" value="jc"></td>
                <td width="4%" align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td width="92%" class="inputContent"><a href="item_list.html" class="menuLink" >教材</a></td>
              </tr>
              <tr>
                <td align="right" class="inputContent"><input type="checkbox" name="category1" value="wy"></td>
                <td align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td colspan="2" class="inputContent">外语</td>
              </tr>
              <tr>
                <td align="right" class="inputContent"><input type="checkbox" name="category1" value="gwyks"></td>
                <td align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td colspan="2" class="inputContent">公务员考试</td>
              </tr>
              <tr>
                <td align="right" class="inputContent"><input type="checkbox" name="category1" value="ky"></td>
                <td align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td colspan="2" class="inputContent">考研</td>
              </tr>
              <tr>
                <td align="right" class="inputContent"><input type="checkbox" name="category1" value="ys"></td>
                <td align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td colspan="2" class="inputContent">影视</td>
              </tr>
              <tr>
                <td align="right" class="inputContent"><input type="checkbox" name="category1" value="yy"></td>
                <td align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td colspan="2" class="inputContent">音乐</td>
              </tr>
          </table></td>
        </tr>
        <tr>
          <td width="4%" align="right" class="inputHeader"><label>
          <input type="checkbox" name="category2" value="sssh" >
          </label></td>
          <td width="2%" align="left" class="inputHeader"><img src="../image/plus.gif"></td>
          <td align="left" class="inputHeader"><a href="javascript:show('t1',8)" class="menuLink">时尚生活</a></td>
          </tr>
        <tr id="t1" style="display:none">
          <td colspan="3"><table class="inputTable" border="0" cellpadding="0" cellspacing="0" width="100%">
              <tr>
                <td width="4%" align="right" class="inputContent"><input type="checkbox" name="category2" value="hf"></td>
                <td width="4%" align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td class="inputContent">护肤</td>
              </tr>
              <tr>
                <td align="right" class="inputContent"><input type="checkbox" name="category2" value="sh"></td>
                <td align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td class="inputContent">首饰</td>
              </tr>
              <tr>
                <td align="right" class="inputContent"><input type="checkbox" name="category2" value="fz"></td>
                <td align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td class="inputContent">服装</td>
              </tr>
              <tr>
                <td align="right" class="inputContent"><input type="checkbox" name="category2" value="xb"></td>
                <td align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td class="inputContent" width="92%">箱包</td>
              </tr>
          </table></td>
        </tr>
        <tr>
          <td align="right" class="inputHeader"><label>
          <input type="checkbox" name="category3" value="smcp">
          </label></td>
          <td align="left" class="inputHeader"><img src="../image/plus.gif"></td>
          <td align="left" class="inputHeader"><a href="javascript:show('t2',8)" class="menuLink"></a><a href="javascript:show('t2',8)" class="menuLink">数码产品</a></td>
          </tr>
        <tr id="t2" style="display:none">
          <td colspan="3"><table class="inputTable" border="0" cellpadding="0" cellspacing="0" width="100%">
              <tr>
                <td width="4%" align="right" class="inputContent"><input type="checkbox" name="category3" value="smxj"></td>
                <td width="4%" align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td width="92%" class="inputContent">数码相机</td>
              </tr>
              <tr>
                <td align="right" class="inputContent"><input type="checkbox" name="category3" value="mp3"></td>
                <td align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td class="inputContent">mp3</td>
              </tr>
              <tr>
                <td align="right" class="inputContent"><input type="checkbox" name="category3" value="smlyb"></td>
                <td align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td class="inputContent">数码录音笔</td>
              </tr>
              <tr>
                <td align="right" class="inputContent"><input type="checkbox" name="category3" value="smpj"></td>
                <td align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td class="inputContent">数码配件</td>
              </tr>
              <tr>
                <td align="right" class="inputContent"><input type="checkbox" name="category3" value="ej"></td>
                <td align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td class="inputContent">耳机</td>
              </tr>
          </table></td>
        </tr>
        <tr>
          <td align="right" class="inputHeader"><label>
          <input type="checkbox" name="category4" value="xhsd">
          </label></td>
          <td align="center" class="inputHeader"><img src="../image/plus.gif"></td>
          <td align="left" class="inputHeader"><a href="javascript:show('t3',8)" class="menuLink">鲜花速递</a> </td>
        </tr>
        <tr id="t3" style="display:none">
          <td colspan="3"><table class="inputTable" border="0" cellpadding="0" cellspacing="0" width="100%">
              <tr>
                <td width="4%" align="right" class="inputContent"><input type="checkbox" name="category4" value="mg"></td>
                <td width="4%" align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td width="92%" class="inputContent">玫瑰</td>
              </tr>
              <tr>
                <td align="right" class="inputContent"><input type="checkbox" name="category4" value="bh"></td>
                <td align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td class="inputContent">百合</td>
              </tr>
              <tr>
                <td align="right" class="inputContent"><input type="checkbox" name="category4" value="yjx"></td>
                <td align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td class="inputContent">郁金香</td>
              </tr>
              <tr>
                <td align="right" class="inputContent"><input type="checkbox" name="category4" value="knx"></td>
                <td align="right" class="inputContent"><img src="../image/minus1.JPG"></td>
                <td class="inputContent">康耐馨</td>
              </tr>
              
          </table></td>
        </tr>
        <tr>
          <td align="center" class="inputHeader">&nbsp;</td>
		   <td align="center"xlbright class="inputHeader">&nbsp;</td>
		   
          <td class="xlbright"><input type="reset" name="reselect" value="重新选择">
&nbsp;&nbsp;
<input type="button" name="reselect2" value="删除目录" onClick="checkdelno()">&nbsp;&nbsp;
<input type="button" name="edit" value="编辑目录" onClick="c_e.jsp"></td>
				</tr>
            </table>
			</div>
			</div>
			
			
			
			<div id="double2">
			<div id="doublehead2"><strong>添加目录</strong></div>
			<div id="doublecontent2">
				<table id="itemsearch">
				   <tr>
					<th class="itemsearchth" >目录名：</th>
            		<td class="itemsearchtd1">
					 <input type="text" class="inputtext" name="name" onFocus="nextfield='password'" value="" maxlength="25"> 
					</td>
					<td class="itemsearchtd2">
						<span class="red">*&nbsp;必输项<span class="red"></td>
          		 </tr>
				 <tr>
				 <th class="itemsearchth">父目录：</th>
            		<td class="itemsearchtd1">
						<select>
							<option value="">请选择</option>
							<option value="tsyx">图书音像</option>
							<option value="sssh">时尚生活</option>
							<option value="smcp">数码产品</option>
							<option value="xhsd">鲜花速递</option>
						</select>
					</td>
					<td class="itemsearchtd2">&nbsp;</td>
          		 </tr>
				 <tr>
				 <th class="itemsearchth"><span class="inputHeader">目录描述：</span></th>
            		<td class="itemsearchtd1">
				<textarea name="textarea" class="textAreaStyle"></textarea>
					</td>
					<td class="itemsearchtd2">&nbsp;</td>
					</td>
          		 </tr>
				 <tr>
				 <th class="itemsearchth"><span class="inputHeader">目录图片：</span></th>
            		<td class="itemsearchtd1">
					<input type="file" class="inputtext">
					</td>
					<td class="itemsearchtd2">&nbsp;</td>
          		 </tr>
				 <tr>
				 <th></th>
				 	<td><input type="button" name="button2" value="添加" onClick="checkcategoryform()">
						&nbsp;<input type="reset" name="button1" value="重填" onClick="clear()">
					</td>
				 </tr>
        </table>
		</form>		
			</div>

</div>
	<div id="footer">
		<span id="footerleft"> &nbsp;隐私权 | 版权 | 法律声明 | 电子邮件：admin@163.com </span>
		<span id="footerright"> B2C商城  Power by IBM &nbsp;</span>
	</div>
</body>
</html>
