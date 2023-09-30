<%@ page language ="java" contentType="text/html; charset=UTF-8"
    pageEncoding ="UTF-8"%>
<%@ page import = "java.sql.*" %>

<%@ include file = "layout/db_connect.jsp" %>
<%
    try{
    	request.setCharacterEncoding("UTF-8");
    	String sql = "Update member_tbl_02"
    			   +" set custname=?, phone=?, address=?, joindate=?, grade=?, city=?"
    			   +" where custno=" + request.getParameter("custno");
    			   
    	PreparedStatement pstmt = conn.prepareStatement(sql);
    	
    	
    	pstmt.setString(2,request.getParameter("custname"));
    	pstmt.setString(3,request.getParameter("phone"));
    	pstmt.setString(4,request.getParameter("address"));
    	pstmt.setString(5,request.getParameter("joindate"));
    	pstmt.setString(6,request.getParameter("grade"));
    	pstmt.setString(7,request.getParameter("city"));
    	
    	pstmt.executeUpdate();
    }catch(Exception e){
    	e.printStackTrace();
    }
%>
<!DOCTYPE html>
<html lang="ko">
<head>
		<meta charset="UTF-8">
		<title>header</title>
</head>
<body>
	<jsp:forward page="join.jsp"></jsp:forward>	
</body>
</html>