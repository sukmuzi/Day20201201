<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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

a {
	color: white;
}
</style>
<meta charset="UTF-8">
<title>교수수정</title>
</head>
<body>
	<h1>교수 수정</h1>
	<%
		String age = request.getParameter("age");
		String name = request.getParameter("name");
		String subject = request.getParameter("subject");
		String updateName = request.getParameter("updateName");

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://bbr123.cafe24.com:3306/bbr123", "bbr123",
				"alstjr95!");

		String sql = "update professorsuk set age = ?, name = ?, subject = ? where name = ?";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, age);
		pstmt.setString(2, name);
		pstmt.setString(3, subject);
		pstmt.setString(4, updateName);

		int cnt = pstmt.executeUpdate();
	%>
	<%=cnt%>명 교수가 수정되었습니다.
	<br>
	<a href="../haksaInfo.jsp">학사관리</a>
	<a href="professorList.jsp">교수전체출력</a>
	<%
		pstmt.close();
		conn.close();
	%>
</body>
</html>