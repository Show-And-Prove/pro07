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
	<title>글 등록</title>
    <jsp:include page="../include/head.jsp" />
    <script type="text/javascript" src="${path1 }/resources/ckeditor/ckeditor.js"></script>
</head>
<body>
	<jsp:include page="../include/header.jsp" />
<div class="content1" id="content1">
	    <div>
	      <h2>글 등록</h2>
	      <hr>
	      <div class="container">
	      	<form action="${path1 }/free/insert.do" method="post">
			      <table id="table1">
			      	<tbody>
			      		<tr>
			      			<th>글 제목</th>
			      			<td>
			      				<input type="text" name="title" id="title" placeholder="제목 입력" maxlength="98" required>
			      			</td>
			      		</tr>
			      		<tr>
			      			<th style="background-color:#dcdcdc">글 내용</th>
			      			<td>
			      				<textarea name="content" id="content" placeholder="내용 입력" rows="8" cols="100" maxlength="800" required></textarea>
			      				<script>
			      				CKEDITOR.replace('content', {filebrowserUploadUrl:'/free/imageUpload.do'});
			      				</script>
			      			</td>
			      		</tr>
			      		<tr>
			      			<td colspan="2">
			      				<input type="submit" class="submit success button" value="글 등록" >
			      				<a class="button" href="${path1 }/free/list.do">글 목록</a>
			      			</td>
			      		</tr>
			      	</tbody>
			      </table>
			   </form>   
	      </div>
	    </div>
	</div>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>