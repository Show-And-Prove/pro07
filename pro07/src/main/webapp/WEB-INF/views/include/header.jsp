<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*"%>
<%@ page import="java.text.*, java.net.InetAddress"%>
<c:set var="path1" value="${pageContext.request.contextPath }"></c:set>
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