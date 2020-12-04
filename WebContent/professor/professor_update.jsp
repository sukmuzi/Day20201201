<%@page import="java.sql.Statement"%>
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
		Statement stmt = conn.createStatement();

		String sql = "update professorsuk set age = " + age + ", name = '" + name + "', subject = '" + subject
				+ "' where name = '" + updateName + "'";

		int cnt = stmt.executeUpdate(sql);
	%>
	<%=cnt%>명 교수가 수정되었습니다.
	<br>
	<a href="../haksaInfo.jsp">학사관리</a>
	<a href="professorList.jsp">교수전체출력</a>
	<%
		stmt.close();
		conn.close();
	%>
</body>
</html>