<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE4 {
	font-size: 12px;
	color: #1F4A65;
	font-weight: bold;
}

a:link {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;

}
a:visited {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;
}
a:hover {
	font-size: 12px;
	color: #FF0000;
	text-decoration: underline;
}
a:active {
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.STYLE7 {font-size: 12}
#apDiv2 {	position:absolute;
	left:124px;
	top:3px;
	width:238px;
	height:42px;
	z-index:1;
}
#apDiv1 {
	position:absolute;
	left:108px;
	top:2px;
	width:346px;
	height:20px;
	z-index:1;
}

-->
</style>

<script>
var  highlightcolor='#d5f4fe';
//姝ゅclickcolor鍙兘鐢╳in绯荤粺棰滆壊浠ｇ爜鎵嶈兘鎴愬姛,濡傛灉锟?xxxxxx鐨勪唬鐮佸氨涓嶈,杩樻病鎼炴竻妤氫负浠€锟?(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}
function check(){
	var tno = document.getElementById("dno").value;
	if(tno == null || tno == "" ){
		  alert("查询编号不能为空");
		  return false;
	}
	return true;
	}
</script>
</head>

<body>
<div id="apDiv1">
  <table width="349" border="0">
    <tr> 
      <td width="337"><form name="form1" method="post" action="selectDebtServlet" onsubmit="return check()">
        <label>
          <input type="submit" name="button" id="button" value="查询">
          </label>
        <label>
        <input type="text" name="dno" id="dno">
        </label>
         <label>
        <a href="Debt1.jsp" target="mainFrame">添加</a>
        </label>
      </form>
      </td>
    </tr>
  </table>
</div>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="30"><img src="tab_03.gif" width="15" height="30" /></td>
        <td background="tab_05.gif"><img src="311.gif" width="16" height="16" />欠费</td>
        <td width="14"><img src="tab_07.gif" width="187" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9" background="tab_12.gif">&nbsp;</td>
        <td width="1089" bgcolor="e5f1d6"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CECECE" onMouseOver="changeto()"  onmouseout="changeback()">
          <tr>
            <td width="29" height="26" background="tab_14.gif" class="STYLE1"><div align="center" name=""class="STYLE2 STYLE1">选择</div></td>
            <td width="122" height="26" background="tab_14.gif" class="STYLE1"><div align="center" name="dno"class="STYLE2 STYLE1">欠费单号</div></td>
            <td width="170" height="26" background="tab_14.gif" class="STYLE1"><div align="center" name="rno"class="STYLE2 STYLE1">欠费房间</div></td>
            <td width="112" height="26" background="tab_14.gif" class="STYLE1"><div align="center" class="STYLE2 STYLE1">
              <div align="center"name="price">费用</div>
            </div></td>
            <td width="145" background="tab_14.gif" class="STYLE1"><div name="time" align="center">时间</div></td>
            <td height="26" background="tab_14.gif" class="STYLE1"><div name="pay"align="center">是否支付</div>
              <div align="center" class="STYLE2"></div>
              <div align="center"></div>
              <div align="center"></div>              <div align="center"></div>              
              <div align="center"></div></td>
            <td width="58" height="26" background="tab_14.gif" class="STYLE1"><div align="center" class="STYLE2">编辑</div></td>
            <td width="80" height="26" background="tab_14.gif" class="STYLE1"><div align="center" class="STYLE2">删除</div></td>
          </tr>
           <c:forEach items="${requestScope.debts }" var="debt">
          
          <tr>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <input name="checkbox" type="checkbox" class="STYLE2" value="checkbox" />
            </div></td>
            <td height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="center" class="STYLE2 STYLE1">${debt.dno}</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">${debt.rno}</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">${debt.price}</div></td>
            <td height="18" bgcolor="#FFFFFF">${debt.time}</td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">${debt.pay}</div></td>
            <td width="58" height="18" bgcolor="#FFFFFF"><div align="center"><img src="037.gif" width="9" height="9" /><span class="STYLE1"> [</span><a href="selectDebtServlet1?dno=${debt.dno}"  target="mainFrame">编辑</a><span class="STYLE1">]</span></div></td>
            <td width="80" height="18" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2"><img src="010.gif" width="9" height="9" /> </span><span class="STYLE1">[</span><a href="deleteDebtServlet?dno=${debt.dno}">删除</a><span class="STYLE1">]</span></div></td>
          </tr>
           </c:forEach>
        </table></td>
        <td width="10" background="tab_16.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="29"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="29"><img src="tab_20.gif" width="15" height="29" /></td>
        <td background="tab_21.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="21%" height="29"><img src="q.gif" width="40" height="19" /> <img src="x.gif" width="40" height="19" /> <img src="s.gif" width="40" height="19" /></td>
            <td width="79%" valign="top" class="STYLE1"><div align="right">
              <table width="352" height="20" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="62" height="22" valign="middle"><div align="right"><img src="f_page.gif" width="46" height="20" /></div></td>
                  <td width="50" height="22" valign="middle"><div align="right"><img src="b_page.gif" width="46" height="20" /></div></td>
                  <td width="54" height="22" valign="middle"><div align="right"><img src="n_page.gif" width="46" height="20" /></div></td>
                  <td width="49" height="22" valign="middle"><div align="right"><img src="l_page.gif" width="46" height="20" /></div></td>
                  <td width="59" height="22" valign="middle"><div align="right">转到</div></td>
                  <td width="25" height="22" valign="middle"><span class="STYLE7">
                    <input name="textfield" type="text" class="STYLE1" style="height:10px; width:25px;" size="5" />
                  </span></td>
                  <td width="23" height="22" valign="middle"></td>
                  <td width="30" height="22" valign="middle"><img src="g_page.gif" width="14" height="14" /></td>
                </tr>
              </table>
            </div></td>
          </tr>
        </table></td>
        <td width="14"><img src="images/tab_22.gif" width="20" height="29" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
