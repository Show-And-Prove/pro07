<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- bootstrap CDN -->
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  	<!-- bootstrap CDN -->
  	<!-- template style -->
    <style>
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }

    .carousel-inner img {
      width: 100%; /* Set width to 100% */
      min-height: 200px;
    }

    /* Hide the carousel text when the screen is less than 600 pixels wide */
    @media (max-width: 600px) {
      .carousel-caption {
        display: none; 
      }
    }
  	</style>	
  	<!-- template style -->
  	
  	<!-- header custom style -->
  	<style>
  	.logo-img { width: 180px; height: 27px;}
  	.navbar-inverse { background-color: #fff; border-color: #fff; }
  	.navbar-inverse .navbar-nav>li>a:focus, .navbar-inverse .navbar-nav>li>a:hover { color: #222; }
  	.navbar-inverse .navbar-nav>li>a { color: #222; }
  	.nav>li>a:focus, .nav>li>a:hover { color: #222; }
  	.navbar-inverse .navbar-nav>li>a { color: #222; }
  	</style>
  	
  	<!-- slider custom style -->
  	<style>
  	.carousel-inner>.item>a>img, .carousel-inner>.item>img, .img-responsive, .thumbnail a>img, .thumbnail>img { height: 260px; }
  	</style>
  	
	<!-- header custom style -->
	<title>Insert title here</title>
</head>
<body>
<!-- header -->
<header>
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>                        
	      </button>
	      <a class="navbar-brand" href="/"><img class="logo-img" src="${path1 }/resources/image/logo.png" alt="로고"></a>
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav">
	        <li class="dropdown">
        		<a class="dropdown-toggle" data-toggle="dropdown" href="#">민주평통소개
        		<span class="caret"></span></a>
        		<ul class="dropdown-menu">
          			<li><a href="#">설치근거 및 연혁</a></li><!-- 연혁 -->
          			<li><a href="#">사무처</a></li><!-- 사무처장 소개 -->
          			<li><a href="#">찾아오시는길</a></li><!-- 지도 -->
        		</ul>
      		</li>
	        <li class="dropdown">
        		<a class="dropdown-toggle" data-toggle="dropdown" href="#">뉴스·공지
        		<span class="caret"></span></a>
        		<ul class="dropdown-menu">
          			<li><a href="#">새소식</a></li><!-- 게시판 -->
          			<li><a href="#">공지사항</a></li><!-- 게시판 -->
          			<li><a href="#">보도자료</a></li><!-- 게시판 -->
        		</ul>
      		</li>
	        <li class="dropdown">
        		<a class="dropdown-toggle" data-toggle="dropdown" href="#">국민참여
        		<span class="caret"></span></a>
        		<ul class="dropdown-menu">
          			<li><a href="${path1 }/board/list">평화통일정책제안</a></li><!-- 게시판 or 자유게시판 -->
          			<li><a href="#">민원신청</a></li><!-- QnA -->
          			<li><a href="#">자유게시판</a></li><!-- 자유게시판 -->
        		</ul>
      		</li>      		
	      </ul>
	      <!-- 회원 비회원 구분 + 관리자 구분 -->
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	      </ul>
	    </div>
	  </div>
	</nav>
</header>
<!-- header -->

<div class="container">
<div class="row">
  <div class="col-sm-8">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="https://placehold.it/800x400?text=IMAGE" alt="Image">
        </div>

        <div class="item">
          <img src="https://placehold.it/800x400?text=Another Image Maybe" alt="Image"> 
        </div>
      </div>

      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>
  <div class="col-sm-4">
    <div class="well">
      <p>새소식</p>
    </div>
    <div class="well">
       <p>공지사항</p>
    </div>
    <div class="well">
       <p>보도자료</p>
    </div>
  </div>
</div>
<hr>
</div>

<div class="container text-center">    
  <h3>What We Do</h3>
  <br>
  <div class="row">
    <div class="col-sm-3">
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Current Project</p>
    </div>
    <div class="col-sm-3"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Project 2</p>    
    </div>
    <div class="col-sm-3">
      <div class="well">
       <p>Some text..</p>
      </div>
      <div class="well">
       <p>Some text..</p>
      </div>
    </div>
    <div class="col-sm-3">
      <div class="well">
       <p>Some text..</p>
      </div>
      <div class="well">
       <p>Some text..</p>
      </div>
    </div>  
  </div>
  <hr>
</div>

<div class="container text-center">    
  <h3>Our Partners</h3>
  <br>
  <div class="row">
    <div class="col-sm-2">
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Partner 1</p>
    </div>
    <div class="col-sm-2"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Partner 2</p>    
    </div>
    <div class="col-sm-2"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Partner 3</p>
    </div>
    <div class="col-sm-2"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Partner 4</p>
    </div> 
    <div class="col-sm-2"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Partner 5</p>
    </div>     
    <div class="col-sm-2"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Partner 6</p>
    </div> 
  </div>
</div><br>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>