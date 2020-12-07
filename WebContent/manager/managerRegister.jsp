<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
	background-image: url("../images/back.jpg");
	color: white;
}
</style>
<meta charset="UTF-8">
<title>관리자등록</title>
</head>
<body>
	<h1>관리자등록처리</h1>
	<%
		String age = request.getParameter("age");
		String name = request.getParameter("name");
		String part = request.getParameter("part");
	%>
	나이:
	<%=age%>
	이름:
	<%=name%>
	부서:
	<%=part%>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(
				"jdbc:mysql://bbr123.cafe24.com:3306/bbr123?characterEncoding=utf8", "bbr123", "alstjr95!");
		
		String sql = "insert into managersuk(age, name, part) values(?, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, age);
		pstmt.setString(2, name);
		pstmt.setString(3, part);
		
		int cnt = pstmt.executeUpdate();
	%><br>
	<%=cnt%>명 관리자가 등록되었습니다.
	<br>
	<input onClick="location.href='../index.jsp'" id="btnBack" type="button"
		name="back" value="메인으로">
	<%
		conn.close();
		pstmt.close();
		// 		response.sendRedirect("student.jsp");
	%>
</body>
</html>