<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!-- 1. 회원가입후 공지사항 글 열람, 비회원은 볼 수 없음 -->
<!-- 2. 관리자로 로그인하여 .. -->
<!-- 3. 일반회원은 자유게시판, qna게시판에 글을 작성하고 삭제할 수 있다. -->
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
	<!-- 하단 로고 슬라이더 CDN -->
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>
  	
  	
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
  	
  	<!-- header -->
  	<style>
  	.logo-img { width: 180px; height: 27px;}
  	.navbar-inverse { background-color: #fff; border-color: #fff; }
  	.navbar-inverse .navbar-nav>li>a:focus, .navbar-inverse .navbar-nav>li>a:hover { color: #222; }
  	.navbar-inverse .navbar-nav>li>a { color: #222; }
  	.nav>li>a:focus, .nav>li>a:hover { color: #222; }
  	.navbar-inverse .navbar-nav>li>a { color: #222; }
  	</style>
  	
  	<!-- 메인 슬라이더 이미지 크기 조절 -->
  	<style>
  	.carousel-inner>.item>a>img, .carousel-inner>.item>img, .img-responsive, .thumbnail a>img, .thumbnail>img { height: 312px; }
  	</style>
  	
	<!-- 하단 로고 슬라이더 -->
	<style>
	h2{
	  text-align:center;
	  padding: 20px;
	}
	/* Slider */
	
	.slick-slide {
	    margin: 0px 20px;
	}
	
	.slick-slide img {
	    width: 100%;
	}
	
	.slick-slider
	{
	    position: relative;
	    display: block;
	    box-sizing: border-box;
	    -webkit-user-select: none;
	    -moz-user-select: none;
	    -ms-user-select: none;
	            user-select: none;
	    -webkit-touch-callout: none;
	    -khtml-user-select: none;
	    -ms-touch-action: pan-y;
	        touch-action: pan-y;
	    -webkit-tap-highlight-color: transparent;
	}
	
	.slick-list
	{
	    position: relative;
	    display: block;
	    overflow: hidden;
	    margin: 0;
	    padding: 0;
	}
	.slick-list:focus
	{
	    outline: none;
	}
	.slick-list.dragging
	{
	    cursor: pointer;
	    cursor: hand;
	}
	
	.slick-slider .slick-track,
	.slick-slider .slick-list
	{
	    -webkit-transform: translate3d(0, 0, 0);
	       -moz-transform: translate3d(0, 0, 0);
	        -ms-transform: translate3d(0, 0, 0);
	         -o-transform: translate3d(0, 0, 0);
	            transform: translate3d(0, 0, 0);
	}
	
	.slick-track
	{
	    position: relative;
	    top: 0;
	    left: 0;
	    display: block;
	}
	.slick-track:before,
	.slick-track:after
	{
	    display: table;
	    content: '';
	}
	.slick-track:after
	{
	    clear: both;
	}
	.slick-loading .slick-track
	{
	    visibility: hidden;
	}
	
	.slick-slide
	{
	    display: none;
	    float: left;
	    height: 100%;
	    min-height: 1px;
	}
	[dir='rtl'] .slick-slide
	{
	    float: right;
	}
	.slick-slide img
	{
	    display: block;
	}
	.slick-slide.slick-loading img
	{
	    display: none;
	}
	.slick-slide.dragging img
	{
	    pointer-events: none;
	}
	.slick-initialized .slick-slide
	{
	    display: block;
	}
	.slick-loading .slick-slide
	{
	    visibility: hidden;
	}
	.slick-vertical .slick-slide
	{
	    display: block;
	    height: auto;
	    border: 1px solid transparent;
	}
	.slick-arrow.slick-hidden {
	    display: none;
	}	
	</style>
	
	<style>
	.footer-logo { width: 200px; height: 40px; }
	</style>

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
		<!-- 주소 -->
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav">
	        <li class="dropdown">
        		<a class="dropdown-toggle" data-toggle="dropdown" href="#">민주평통소개
        		<span class="caret"></span></a>
        		<ul class="dropdown-menu">
          			<li><a href="${path1 }/intro/page1">설치근거 및 연혁</a></li><!-- 연혁 -->
          			<li><a href="${path1 }/intro/page2">사무처</a></li><!-- 사무처장 소개 -->
          			<li><a href="${path1 }/intro/page3">찾아오시는길</a></li><!-- 지도 -->
        		</ul>
      		</li>
	        <li class="dropdown">
        		<a class="dropdown-toggle" data-toggle="dropdown" href="#">뉴스·공지
        		<span class="caret"></span></a>
        		<ul class="dropdown-menu">
          			<li><a href="${path1 }/board/new">새소식</a></li><!-- 게시판 -->
          			<li><a href="${path1 }/board/list">공지사항</a></li><!-- 게시판 -->
          			<li><a href="${path1 }/board/coverage">보도자료</a></li><!-- 게시판 -->
        		</ul>
      		</li>
	        <li class="dropdown">
        		<a class="dropdown-toggle" data-toggle="dropdown" href="#">국민참여
        		<span class="caret"></span></a>
        		<ul class="dropdown-menu">
          			<li><a href="${path1 }/board/list">평화통일정책제안</a></li><!-- 게시판 or 자유게시판 -->
          			<li><a href="${path1 }/qna/list">민원신청</a></li><!-- QnA -->
          			<li><a href="${path1 }/free/list">자유게시판</a></li><!-- 자유게시판 -->
        		</ul>
      		</li>      		
	      </ul>
	      <!-- 회원 비회원 구분 + 관리자 구분 -->
	      <ul class="nav navbar-nav navbar-right">
			<c:if test="${empty sid }">
	        	<li><a href="${path1 }/member/loginForm"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
          		<li><a href="${path1 }/member/agree">회원가입</a></li>
        	</c:if>
        	<c:if test="${not empty sid }">  
          		<li><a href="${path1 }/member/logout">로그아웃</a></li>
          		<li><a href="${path1 }/member/read">회원정보</a></li>
        	</c:if>  
        	<c:if test='${sid eq "admin"}'>
          		<li><a href="${path1 }/admin/main">관리자 페이지</a></li>
          		<li><a href="${path1 }/member/list">회원목록</a></li>
        	</c:if>  
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
          <img src="${path1 }/resources/image/main/slider1.jpg" alt="메인슬라이더1">
        </div>

        <div class="item">
          <img src="${path1 }/resources/image/main/slider2.jpg" alt="메인슬라이더2"> 
        </div>
      </div>

      <!-- slider 좌, 우 컨트롤 버튼 -->
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
      <p>새소식<br><a href="${path1 }/board/detail.do?bid=2">·2022 정부포상 수여식 개최</a>
      </p>
    </div>
    <div class="well">
       <p>공지사항<br><a href="${path1 }/board/detail.do?bid=1">·사무처 공무직 근로자(비서) 채용 공고
</a></p>
    </div>
    <div class="well">
       <p>보도자료<br><a href="${path1 }/free/detail.do?fid=1">·고위공무원 전보(2022.12.26.자)
</a></p>
    </div>
  </div>
</div>
<hr>
</div>

<div class="container text-center">    
  <br>
  <div class="row">
    <div class="col-sm-4">
      <img src="${path1 }/resources/image/main/banner1.jpg" class="img-responsive" style="width:100%" alt="배너1">
    </div>
    <div class="col-sm-4"> 
      <img src="${path1 }/resources/image/main/banner2.jpg" class="img-responsive" style="width:100%" alt="배너2">
    </div>
    <div class="col-sm-4">
      <img src="${path1 }/resources/image/main/banner3.jpg" class="img-responsive" style="width:100%" alt="배너3">
    </div>
  </div>
  <hr>
</div>

<div class="container">
   <section class="customer-logos slider">
      <div class="slide"><img src="${path1 }/resources/image/main/logo1.gif" alt="하단로고1"></div>
      <div class="slide"><img src="${path1 }/resources/image/main/logo1.gif"></div>
      <div class="slide"><img src="${path1 }/resources/image/main/logo1.gif"></div>
      <div class="slide"><img src="${path1 }/resources/image/main/logo1.gif"></div>
      <div class="slide"><img src="${path1 }/resources/image/main/logo1.gif"></div>
      <div class="slide"><img src="${path1 }/resources/image/main/logo1.gif"></div>
      <div class="slide"><img src="${path1 }/resources/image/main/logo1.gif"></div>
      <div class="slide"><img src="${path1 }/resources/image/main/logo1.gif"></div>
      <div class="slide"><img src="${path1 }/resources/image/main/logo1.gif"></div>
      <div class="slide"><img src="${path1 }/resources/image/main/logo1.gif"></div>
      <div class="slide"><img src="${path1 }/resources/image/main/logo1.gif"></div>
      <div class="slide"><img src="${path1 }/resources/image/main/logo1.gif"></div>
      <div class="slide"><img src="${path1 }/resources/image/main/logo1.gif"></div>
   </section>
</div>
<script>
$(document).ready(function(){
    $('.customer-logos').slick({
        slidesToShow: 6,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 1500,
        arrows: false,
        dots: false,
        pauseOnHover: false,
        responsive: [{
            breakpoint: 768,
            settings: {
                slidesToShow: 4
            }
        }, {
            breakpoint: 520,
            settings: {
                slidesToShow: 3
            }
        }]
    });
});
</script>

<footer class="container-fluid text-left">
	<p class="footer_logo"><img class="footer-logo" src="${path1 }/resources/image/footer_logo.png" alt="하단로고"/></p>
	<p class="address">04605 서울특별시 중구 장충단로 84 민주평화통일자문회의사무처 ㅣ 전화번호 (주간) 02-2250-2300 / (야간) 02-2250-2280<br/>Copyright© THE PEACEFUL UNIFICATION ADVISORY COUNCIL. All Rights Reserved.</p>
</footer>

</body>
</html>