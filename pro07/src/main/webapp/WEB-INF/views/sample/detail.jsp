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
			<tbody>
				<tr>
					<th>아이디</th>
					<td>${sampleDetail.id }</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>${sampleDetail.pw }</td>
				</tr>
			</tbody>		
		</table>
	</div>
	<a href="${path1 }/sample/list">목록으로</a>
</body>
</html>