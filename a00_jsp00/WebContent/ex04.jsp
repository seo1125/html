<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 입력 폼</title>
</head>
<body>
<from action="ex04_result.jsp">
<input type="text" name="name" placeholder="멋진사람입력" requrired>
<input type="date" name="addr" required> 
<input type="submit"value="전송">
</from>
</body>
</html>