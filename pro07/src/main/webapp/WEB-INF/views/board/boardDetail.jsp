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
	<title>공지사항 글 보기</title>
    <jsp:include page="../include/head.jsp" />
</head>
<body>
	<jsp:include page="../include/header.jsp" />
<main class="mt-5 pt-5">
<div class="container-fluid px-4">
		<h1 class="mt-4">공지사항 상세</h1>
	<div class="container my-1">
		<div class="row">
			<table class="table">
				<thead>
					<tr class="table-active">
						<th scope="col" style="width: 60%">글 번호 : ${boardDetail.bid }<br>
							제목 : ${boardDetail.title }</th>
						<th scope="col" style="width: 40%" class="text-right">조회 : ${boardDetail.cnt }
							<br>작성일 : ${boardDetail.resdate }</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><pre>${boardDetail.content }</pre></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
      	<div>
			<a class="btn btn-outline-warning" href="${path1 }/board/list.do">글 목록</a>
			<c:if test='${sid eq "admin"}'>
				<a class="btn btn-outline-warning" href="${path1 }/board/delete.do?bid=${boardDetail.bid}">글 삭제</a>
				<a class="btn btn-outline-warning" href="${path1 }/board/edit.do?bid=${boardDetail.bid}">글 수정</a>
			</c:if>
		</div>

	</div>
	</main>
    <jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>