<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'narticle.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		body{
			 background-color:  #f3f5f8;
		}
		#form{
		padding-top:50px;
			text-align:center;
			margin:0 auto; 
		}
		#content{
			background-color:  #f3f5f8;
		}
		p{
			padding-right:680px;
		}
		#title{
		padding-left:90px;
		}
	</style>
  </head>
  
  <body>
  <div id="form">
  	<form action="${pageContext.request.contextPath }/article_save.action">
  	标题：<input id="title" type="text" name="title" required><br><br>
  	<div class="content">
				<p class="content_p">正文</p>
				<textarea id="content" cols="100" rows="40" name="content"></textarea>
			</div>
  		<input type="submit" value="提交">
  	</form>
  	</div>
  </body>
</html>
