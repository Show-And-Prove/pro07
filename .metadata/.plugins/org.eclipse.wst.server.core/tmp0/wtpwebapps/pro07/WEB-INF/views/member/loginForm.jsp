<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>로그인</title>
	<!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
	<header id="header">
		<!-- 헤더 부분 인클루드 -->
	 	<jsp:include page="../include/header.jsp"></jsp:include>
    </header>
	
	<div class="content" id="con">
	    <div class="row column text-center">
	      <h2 class="h1">로그인</h2>
	      <hr>
	      <div class="container">
				<c:if test="${!empty msg }">
				<script>
				alert("로그인 실패");
				document.loginForm.userid.focus();
				</script>
				</c:if>
				<form class="form-horizontal" action="${path1 }/member/signin.do" method="post" name="loginForm">
				  <div class="form-group">
				    <label class="control-label col-sm-2" for="id">아이디</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="id" name="id" placeholder="아이디 입력">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="control-label col-sm-2" for="pw">비밀번호</label>
				    <div class="col-sm-10">
				      <input type="password" class="form-control" id="pw" name="pw" placeholder="비밀번호 입력">
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-default">로그인</button>
				    </div>
				  </div>
				</form>				
				<script>
				function loginFaiure() {
					alert("로그인 실패");
				}
				</script>
	      </div>
	    </div>
	</div>
    <footer id="footer" class="footer-nav row expanded collapse">
    	<!-- 푸터 부분 인클루드 -->
    	<jsp:include page="../include/footer.jsp"></jsp:include>
    </footer>
</body>
</html>