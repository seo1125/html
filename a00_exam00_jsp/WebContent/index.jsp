<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" type="text/css" href="./css/style.css?ver1.0">
</head>
<body>
<header>
	<jsp:include page="layout/header.jsp"></jsp:include>
</header>
	<nav>
	<jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>
	<footer>
	<jsp:include page="layout/footer.jsp"></jsp:include>
	<section>
	<jsp:include page="layout/section.jsp"></jsp:include>
	</section>>
</footer>
</body>
</html>