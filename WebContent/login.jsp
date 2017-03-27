<%@ page language="Java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>登录页面</title>        
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
  
  <script type="text/javascript">
  window.onload = function(){
	  var imgNode = document.getElementsByTagName("img")[0];
	  imgNode.src="createcode.action?a=" + Math.random();
	  imgNode.onclick = function(){
		  changeImage();
	  }
  }
  function changeImage(){
	  var imgNode = document.getElementsByTagName("img")[0];
	  imgNode.src = "createcode.action?a=" + Math.random();
  }
  </script>
 </head>
<body>
<form action="login.action" method="post">
用户名:<input type="text" id="empName"/><br><br>
密码：<input type="password" id="empPassword"/><br><br>
验证码:<input type="text" name="code" size="15px"/><img alt="验证码图片" src="createcode.action"><br><br>
<a href="javascript:changeImage()"><h5>看不清，换一张</h5></a>
<br><br>
<input type="submit" value="登录"/>
<input type="reset" value="重置"/>

</form>
</body>
</html>