<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
	<title>Insert title here</title>
</head>
<body>
	<div>
		<table>
			<thead>
				<tr>
					<th>순번</th>
					<th>제목</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${boardList }" var="board" varStatus="status">
				<tr>
					<td>${status.count }</td>
					<td><a href="${path1 }/board/detail?bid=${board.bid }">${board.title }</a></td>
					<td>${board.resdate }</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>