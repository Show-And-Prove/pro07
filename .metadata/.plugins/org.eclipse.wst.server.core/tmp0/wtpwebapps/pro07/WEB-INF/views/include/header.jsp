<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*"%>
<%@ page import="java.text.*, java.net.InetAddress"%>
<c:set var="path0" value="${pageContext.request.contextPath }"></c:set>
<header>
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>                        
	      </button>
	      <a class="navbar-brand" href="#">Logo</a>
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav">
	        <li class="dropdown">
        		<a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1
        		<span class="caret"></span></a>
        		<ul class="dropdown-menu">
          			<li><a href="#">Page 1-1</a></li>
          			<li><a href="#">Page 1-2</a></li>
          			<li><a href="#">Page 1-3</a></li>
        		</ul>
      		</li>
	        <li class="dropdown">
        		<a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 2
        		<span class="caret"></span></a>
        		<ul class="dropdown-menu">
          			<li><a href="#">Page 1-1</a></li>
          			<li><a href="#">Page 1-2</a></li>
          			<li><a href="#">Page 1-3</a></li>
        		</ul>
      		</li>
	        <li class="dropdown">
        		<a class="dropdown-toggle" data-toggle="dropdown" href="#">뉴스·공지
        		<span class="caret"></span></a>
        		<ul class="dropdown-menu">
          			<li><a href="${path1 }/board/list">공지사항</a></li>
          			<li><a href="#">Page 1-2</a></li>
          			<li><a href="#">Page 1-3</a></li>
        		</ul>
      		</li>      		
      		
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	      </ul>
	    </div>
	  </div>
	</nav>
</header>