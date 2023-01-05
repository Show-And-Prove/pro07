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
	<title>KT&G 소식</title>
    <jsp:include page="../include/head.jsp" />
</head>
<body>
<header class="">
	<jsp:include page="../include/header.jsp" />
</header>
    <div class="row column text-center">
      <h2>KT&G 소식</h2>
      <hr>
      <table>
      	<tbody>

      		<tr>
      			<th>글 번호</th>
      			<td>${dto.fno }</td>
      		</tr>	
      		<tr>
      			<th>글 제목</th>
      			<td>${dto.title }</td>
      		</tr>
      		<tr>
      			<th>글 내용</th>
      			<td><p>${dto.content }</p></td>
      		</tr>
      		<tr>
      			<th>작성자</th>
      			<td>${dto.id }</td>
      		</tr>
      		<tr>
      			<th>작성일시</th>
      			<td>${dto.regdate }</td>
      		</tr>
      		<tr>
      			<th>읽은 횟수</th>
      			<td>${dto.visited }</td>
      		</tr>
      	</tbody>
      </table>
      	<div class="button-group">
			<a class="button" href="${path1 }/free/list.do">글 목록</a>
			<a class="button" href="${path1 }/free/delete.do?fno=${dto.fno}">글 삭제</a>
			<a class="button" href="${path1 }/free/edit.do?fno=${dto.fno}">글 수정</a>
		</div>
    </div>
	
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
    <script>
      $(document).foundation();
    </script>
    <footer>
    <jsp:include page="../include/footer.jsp"></jsp:include>
    </footer>
</body>
</html>