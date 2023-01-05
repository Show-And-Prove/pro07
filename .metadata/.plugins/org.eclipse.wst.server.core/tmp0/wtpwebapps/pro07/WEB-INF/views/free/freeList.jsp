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
      	<thead>
      		<tr>
      			<th width="80">번호</th>
      			<th>제목</th>
      			<th>작성자</th>
      			<th width="150">작성일</th>
      			<th>조회수</th>
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
<%-- <c:if test='${sid eq "admin"}'>  --%> 
		<div class="button-group">
			<a class="button" href="${path1 }/free/insert.do">글쓰기</a>
		</div>
<%-- </c:if> --%>
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