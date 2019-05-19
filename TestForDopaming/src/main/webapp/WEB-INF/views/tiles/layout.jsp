<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page session="false" %>
<!-- 웹페이지언어 설정 -->
<html lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
 <link rel="icon" href="../../favicon.ico">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<meta charset="utf-8">
<title>도파밍 프로젝트</title>

    <!-- Bootstrap core CSS -->
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="./resources/css/style2.css" rel="stylesheet">
	<!-- <link href="./resources/css/sb-admin-2.min.css" rel="stylesheet"> -->
    <!-- Custom styles for this template -->    
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="./resources/fontawesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="./resources/js/ie-emulation-modes-warning.js"></script>        
	<style>

		.m_col{		
			margin: 0px auto 0px auto;
			float:right;					
		}
		.first_col{
			margin: 0px auto;
		}
		
		.jumbotron{
			clear:both;
			margin: 0px auto 0px auto;
			background-image: url(./resources/images/logo2.jpg);
			background-size: 100px;
		}
 		@media (min-width: 768px) {
  		.container .jumbotron {  			
	    		width: 100%;	    		
  		}	
		}

		@media (min-width: 992px) {
 		 .container .jumbotron{ 		 	
    			width: 100%;
  		}
		}	 
		.carousel-caption{
			position:absolute;
			right:15%;
			left:15%;
			z-index:10;
			padding-top:20px;
			padding-bottom: 20px;
		}
		.carousel-inner{
			display:block;
			max-width:100%;
			height:300px;
		}
		.navbar{
			margin: 0px auto 0px auto;
			width:100%;
		}
		.genre_rank{
			max-width:100%;
			height:82px;
		}
		div.footer{
			clear: both;
			width: 98%;
			float: left;
			background-color: #1f2022;
			text-align: center;
			padding-top: 15px;
			padding-bottom: 15px;
			margin-left: 10px;
			color: #E0E0E0;
		}
	</style>
</head>
<body>
	<div class="container">
			<tiles:insertAttribute name="header" />
			<tiles:insertAttribute name="content" />
			<tiles:insertAttribute name="footer" />
			<tiles:insertAttribute name="modal" />
	</div>
</body>
</html>