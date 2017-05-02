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
  	
  	#div-right span{
  		padding-left:730px;
  		margin:0 auto;
  		color:black;
  	}
  	#div-right a{
  	padding-left:100px;
  	}
  	#div-right p{
  		padding-left:100px;
  		width:60%;
  		height:66px;
  		line-height:22px;
  		overflow:hidden;
  		text-overflow:clip;
  		display:block;
  	}
  	
  	#div-right .time{
  		padding-left:100px;
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
  		<c:forEach items="${articleList }" var="a">
  			<article>
  				<header>
  				
  					<h2 ><a href="${pageContext.request.contextPath }/article_show.action?title=${ a.title}">${a.title }</a></h2><br>
  					<p>${a.content }</p><br>
  					<span class="time"><time datetime="2017-03-23">${a.wtime }</time></span>
  				</header>
  			</article><br><br><br>
  			</c:forEach>
  		
  		<div class="fixed">
  			<a href="">留言</a>
  		</div>
  </body>
  	<div id="form" style="display:none;">
  		<div id="lj">
  			来说两句
  		</div>
  		<form action="" method="post">
  			<textarea rows="268px" cols="150px" name="comment" placeholder="评论内容"></textarea>
  			<div id="lxfs">
  				留个联系方式吧
  			</div>
  			<div id="form-name"><input id="name" name="name" type="text"></div>
  			<div id="form-email"><input id="email" name="email" type="text"></div>
  			<div id="form-buttom"><intput id="buttom" type="submit" value="保存评论"></div>
  			<input name="">
  		</form>
  	</div>
  <script type="text/javascript">
/*   window.onload=function(){
		
		var xhr = new XMLHttpRequest();
		console.log(xhr);
		// 2.设置监听
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if(xhr.status == 200){
				}
			}
		}
		// 3.打开连接
		xhr.open("GET","${pageContext.request.contextPath}/article_find.action?time="+new Date().getTime(),true);
		// 4.发送
		xhr.send(null);
		} */
		$(function(){
			$.get('${pageContex.request.contextPath}article_find.action');
		});
		$(function(){
			function change(){
			var i=parseInt(Math.random()*(4)+1); 
			$('#div-left').css("background","url(images/"+i+".jpg) no-repeat");
			$('#div-left').css("background-size","cover");
			}
			t = setInterval(change,20000);
		});
		$(function(){
		
		});
		             function blockDiv(){
               var div = document.getElementById("hiddenDiv").style.display;               if(div=='none'){
                  document.getElementById("hiddenDiv").style.display='block';
                 }else{
                    document.getElementById("hiddenDiv").style.display='none';
                }
  

  </script>
</html>
