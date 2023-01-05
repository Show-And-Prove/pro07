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
	<title>자유게시판</title>
    <jsp:include page="../include/head.jsp" />
    <!-- datatables -->
	<link rel="stylesheet" href="${path1 }/resources/datatables/datatables.min.css">
	<script src="${path1 }/resources/datatables/datatables.min.js"></script>
	<script>
	$(document).ready( function () {
	    $('#tb1').DataTable({
	    	  aaSorting: []
	    	  //, order : [[ 0, "asc" ]]
	   	});
	});
	</script>  
	<!-- datatables -->  
</head>
<body>
	<jsp:include page="../include/header.jsp" />
    <div>
      <h2>자유게시판</h2>
      <hr>
      <table class="table" id="tb1">
      		<thead>
				<tr>
					<th>번호</th><th>제목</th><th>작성자</th><th>작성일</th><th>조회수</th>
				</tr>
			</thead>
      	<tbody>
      	<c:forEach items="${freeList }" var="free" varStatus="status">
      		<tr>
      			<td>${status.count }</td>
      			<td><a href="/free/detail.do?fno=${free.fno }">${free.title }</a></td>
      			<td>${free.id }</td>
      			<td>${free.regdate }</td>
      			<td>${free.visited }</td>
      		</tr>
      	</c:forEach>	
      	</tbody>
      </table>
		<div class="button-group">
			<a class="button" href="${path1 }/free/insert.do">글쓰기</a>
		</div>
    </div>
	
    	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>