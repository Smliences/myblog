<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Smliences</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="${pageContext.request.contextPath }/js/jquery-1.4.2.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <style type="text/css">
  	*{
  		margin:0px; 
  		padding:0px;
  	}
  	body>header{
  		position: fixed;
    	height: 100%;
  	}
  	div{
  		display:block;
  	}
  	#div-left{
  		width:600px;
  		height:100%;
  		float:left;
  		background:url(images/1.jpg) no-repeat;
  		background-size:cover;
  	}
  	#div-left #img{
  		width:40%;
  		height:100%
  		background-image: no-repeat;
  	}
  	#div-left .text{
  		padding-top:100px;
  		text-align:center;
  		margin:0 auto;
  		width: 100%;
  		height:86.75%;
        left:0; 
        font-size:20;
        background-color: rgba(0,0,0,0.3); 
        color:  rgba(255, 255, 255, 0.8);
        
  	}
  	a{
  	text-decoration:none;
  	}
  	#div-left a{
  		color:rgba(255, 255, 255, 0.8);
  	}
  	body {
  		background-color:  #f3f5f8;
  	}
  	
  	#div-right{
  		float:left;
  		padding-top: 100px;
  		padding-left:650px;
    	background-color: #f3f5f8;
    	height: 100%;
    	width: 50%;
  	}
  	
  	
  	#div-right a{
  		padding-left:100px;
  	}
  	#div-right .article{
  		padding-left:100px;
  		line-height:22px;
  		display:block;
  	}
  	#div-right p{
  		width: 100%;
   	 	word-wrap: break-word;
  	}
  	
  	#div-right .time{
  		font-size: 6;
  		color:grey;
  	} 
  	
  	#div-right>article{
  		margin-bottom:30px;
  	}
  	
  	#div-rigth>h2{
  		margin-bottom:60px;
  	}
  	
  	.fixed_img{
    bottom:450px;
    display:block;
    position:fixed;
    right:10px;
    height:60px;
    width:60px;
}
	.fixed {
	bottom:450px;
    display:block;
    position:fixed;
    right:10px;
    height:60px;
    width:60px;
    background-color: rgba(0,0,0,0.01); 
	}
  </style>
  <body>
  		<header>
  		<div id="div-left">
  			<div class="text">
  			<div>
  			<hgroup>
  				<span id="blog"></span><a href="">博客</a><br>
  				<span>smliences</span>
  			</hgroup>
  			</div>
  			</div>
  		</div>
  		</header>
		
		<div id="div-right">
  			<article>
  				<header>
  					<h2 ><a href="">${article.title }</a></h2><br>
  					<div class="article">
  					<p>${article.content}</p><br>
  					<span class="time">
  					<time datetime="2017-03-23">${article.wtime }</time>
  					</span>
  					</div>
  				</header>
  			</article><br><br><br>
		</div>
  </body>
  <script type="text/javascript">
  	 	$(function(){
			function change(){
			var i=parseInt(Math.random()*(4)+1); 
			$('#div-left').css("background","url(images/"+i+".jpg) no-repeat");
			$('#div-left').css("background-size","cover");
			}
			t = setInterval(change,20000);
		});
  	 	
  </script>
</html>