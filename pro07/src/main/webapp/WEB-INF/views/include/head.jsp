<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
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
  	
  	<!-- footer -->
  	<style>
	.footer-logo { width: 200px; height: 40px; }
  	</style>
  	
	<style>
	/* footer 하단 고정 [S] */
	html, body {
		margin: 0;
		padding: 0;
		height: 100%;
	}
	
	#body-wrapper {
		min-height: 100%;
		position: relative;
	}
	
	#body-content {
		margin-top: 30px;
		padding-bottom: 150px; /* footer의 높이 */
	}
	
	footer {
		width: 100%;
		height: 150px; /* footer의 높이 */
		position: absolute;
		bottom: 0;
		left: 0;
	}
	/* footer 하단 고정 [E] */
	</style>  	
  	