<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ include file="layout/db_connect.jsp" %>
<%
String sql ="SELECT SNO, SNAME, "
		+ " SUBSTR(SNO,1,1) SNO1, SUBSTR(SNO,2,3) SNO2, SUBSTR(SNO,4,2) SNO3, DECODE(SGENDER,'M','남','F','여') SGENDER, "
		+ " SPHONE, SADRESS "
		+ " FROM STUDENT_TBL_03"
		+ " ORDER BY SNO";

PreparedStatement pstmt = conn.prepareStatement(sql);
ResultSet rs = pstmt.executeQuery();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학사관리 프로그램</title>
<link rel="stylesheet" href="css/style.css?ver1.1.2">
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
</footer>
</body>
</html>