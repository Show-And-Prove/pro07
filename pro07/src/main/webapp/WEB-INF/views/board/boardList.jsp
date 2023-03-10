<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!-- footer 하단 고정 style -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공지사항 목록</title>
<jsp:include page="../include/head.jsp" />
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
</head>
<body>
	<jsp:include page="../include/header.jsp" />
	<div id="body-wrapper">
		<div id="body-content">
			<main class="mt-5 pt-5">
				<div class="container-fluid px-4">
					<h1 class="mt-4">공지사항</h1>

					<div class="card mb-4">
						<div class="card-header">
							<c:if test='${sid eq "admin"}'>
								<a class="btn btn-primary float-end"
									href="${path1 }/board/insert.do"> <!-- <i class="fas fa-table me-1"></i> -->
									<i class="fas fa-edit"></i> 글 작성
								</a>
							</c:if>
						</div>
						<div class="card-body">
							<table class="table table-hover table-striped">
								<thead>
									<tr>
										<th>글번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>조회수</th>
										<th>작성일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${boardList }" var="board" varStatus="status">
										<tr>
											<td>${status.count }</td>
											<c:if test="${empty sid }">
												<td><a href="/member/loginForm" class="not-member">${board.title }</a></td>
											</c:if>
											<c:if test="${not empty sid }">
												<td><a href="/board/detail.do?bid=${board.bid }">${board.title }</a></td>
											</c:if>
											<td>관리자</td>
											<td>${board.cnt }</td>
											<td>${board.resdate }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script>
		$(document).ready(function() {
			$(".not-member").click(function() {
				alert("공지사항 내용은 회원만 확인할 수 있습니다. 로그인 후 이용해주세요.");
			});
		});
	</script>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>