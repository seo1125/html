<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="layout/db_connect.jsp" %>
<%
String sql="select "
			+"case a.grade "
			+"when 'A' then 'VIP' "
			+"when 'B' then '일반' "
			+"else '직원' end grade, "
 			+"b.city_name, count(*) count, grouping_id(a.grade, b.city_name) g_i "
			+"from member_tbl_02 a, city_code_tbl_02 b "
			+"where a.city=b.city "
			+"group by rollup(a.grade, b.city_name) "
			+"order by a.grade asc";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	String city_name;
	String grade;
	int g_i;
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>쇼핑몰 회원정보수정</title>
	<link rel="stylesheet" type="text/css" href="./css/style.css?ver1.0.2">
	<script type="text/javascript">
		function checkDel(custno) {
			msg="삭제하시겠습니까?"
			if(confirm(msg)!=0){
				location.href = "delete.jsp?custno="+custno;
				alert("삭제되었습니다.");
			}else{
				alert("취소되었습니다.");
				return;
			}
		}
	</script>
</head>
<body>
	<header>
		<jsp:include page="layout/header.jsp"></jsp:include>
	</header>
	<nav>
		<jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>
	<main id="section">
		<h3 class="title">회원GRADE별_지역인원수</h3>
		<div class="scroll">
		<table class="table_line">
                <colgroup>
                    <col width="20%">
                    <col width="20%">
                    <col width="20%">
                	
		<thead>
		<tr>
			<th>GRADE</th>
			<th>지역명</th>
			<th>인원수</th>
		</tr>
		</thead>
		<%
		while(rs.next()){
			g_i = rs.getInt("g_i");
			grade = rs.getString("grade");
			city_name =rs.getString("city_name");
			if(g_i==1){
				city_name = "***합계";
			}
			if(g_i==3){
				grade ="전체합계";
				city_name ="";
			}
		%>
		<tr align="center">
			<td><%= grade %></td>
			<td><%= city_name %></td>
			<td><%= rs.getString("count") %></td>
		<%
		}
		%>	
			
		</table> 
		</div>
	</main>
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>

</body>
</html>