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
	<title>회원 약관 동의</title>
	<!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
<style>
.title { padding-top:36px; padding-bottom:20px; }
.agree_fr { width: 900px; white-space:pre-wrap; margin: 10px auto; 
padding: 24px; border:2px solid #eee; height:600px; overflow-y:auto; }
</style>
</head>
<body>
<header id="header">
	<!-- 헤더 부분 인클루드 -->
 	<jsp:include page="../include/header.jsp"></jsp:include>
</header>
<div class="content container" id="content">
	<h2 class="title">회원 약관 동의</h2>
	<article class="agree_fr">
<h2>제1장 총칙</h2>
제1조(목적) 이 약관은 회사가 온라인으로 제공하는 디지털콘텐츠(이하 "콘텐츠"라고 한다) 및 제반서비스의 이용과 관련하여 회사와 이용자와의 권리, 의무 및 책임사항 등을 규정함을 목적으로 합니다. 
제2조(정의) 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.   
1. "회사"라 함은 "콘텐츠" 산업과 관련된 경제활동을 영위하는 자로서 콘텐츠 및 제반서비스를 제공하는 자를 말합니다. 

2. "이용자"라 함은 "회사"의 사이트에 접속하여 이 약관에 따라 "회사"가 제공하는 "콘텐츠" 및 제반서비스를 이용하는 회원 및 비회원을 말합니다. 
...중략
	</article>
	<div class="form-check">
		<input type="checkbox" id="ck_item1" name="ck_item" class="form-check-input">
		<label for="ck_item1" class="form-check-label">약관에 동의</label><br><br>
	</div>
	<article class="agree_fr">
	 제1장 총칙
	  제1조(목적) 이 지침은 「개인정보 보호법」(이하 "법"이라 한다) 제12조제1항에 따른 개인정보의 처리에 관한 기준, 개인정보 침해의 유형 및 예방조치 등에 관한 세부적인 사항을 규정함을 목적으로 한다. 
 제2조(용어의 정의) 이 지침에서 사용하는 용어의 뜻은 다음과 같다.   
1. "개인정보 처리"란 개인정보를 수집, 생성, 연계, 연동, 기록, 저장, 보유, 가공, 편집, 검색, 출력, 정정(訂正), 복구, 이용, 제공, 공개, 파기(破棄), 그 밖에 이와 유사한 행위를 말한다. 

2. "개인정보처리자"란 업무를 목적으로 법 제2조제4호에 따른 개인정보파일을 운용하기 위하여 개인정보를 처리하는 모든 공공기관, 영리목적의 사업자, 협회·동창회 등 비영리기관·단체, 개인 등을 말한다. 

3. "공공기관"이란 법 제2조제6호 및 「개인정보 보호법 시행령」(이하 "영"이라 한다) 제2조에 따른 기관을 말한다. 
...중략
	</article>
	<div class="form-check">
		<input type="checkbox" id="ck_item2" name="ck_item2" class="form-check-input">
		<label for="ck_item2" class="form-check-label">개인정보처리방침에 동의</label><br><br>
	</div><br><hr><br>
	<div class="form-check">
		<label for="ck_item3" onclick="protocol()" class="form-check-label"><strong>전체 약관에 동의</strong></label>
	</div>
	<br><hr><br>	
	<div class="btn-group">
		<button type="button" id="in_btn1" class="button is-info">다음 단계</button>
	</div>
	<script>
	var ck_item1 = document.getElementById("ck_item1");
	var ck_item2 = document.getElementById("ck_item2");
	var in_btn1 = document.getElementById("in_btn1");
	in_btn1.addEventListener("click", function(){
		if(ck_item1.checked && ck_item2.checked){
			location.href = "${path1}/member/join.do";
		} else {
			alert("약관 및 개인정보처리 방침에 동의하지 않으셨습니다.");
			return;
		}
	});
	function protocol(){
		ck_item1.checked = true;
		ck_item2.checked = true;
	}
	</script>
</div>
<footer id="footer" class="footer-nav row expanded collapse">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../include/footer.jsp"></jsp:include>
</footer>
</body>
</html>