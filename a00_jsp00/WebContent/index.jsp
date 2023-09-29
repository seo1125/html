<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp00</title>
</head>
<body>
<ol>
		<li><a href="ex01.jsp">ex01.jsp 스크립트릿 태그</a></li>
		<li><a href="exe2.jsp">ex02.jsp 스크립트릿+표현식 태그</a></li>
		<li><a href="ex03.jsp">ex03.jsp 웹 정보 get.* </a></li>
		<li><a href="ex04.jsp">ex04.jsp input 입력 / 결과</a></li>
		<li><a href="<%= request.getContextPath() %> /ex05.jsp">ex05.jsp 변수(글로벌 및 로컬)</a></li>
		<li><a href="<%= request.getContextPath() %>/ex06.jsp">ex06.jsp input 점수</a></li>
		<li><a href="ex07.jsp">ex07.jsp 유효성 검사 / 입력 데이터 유무</a></li>
		<li><a href="ex08.jsp">ex08.jsp 기본 유효성 검사 / 입력데이터 유무 및 길이</a></li>
	</ol>
</body>
</html>