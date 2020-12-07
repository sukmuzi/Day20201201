<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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

a {
	color: white;
}
</style>

<meta charset="UTF-8">
<title>관리자찾기</title>
</head>
<body>
	<%
		String searchName = request.getParameter("name");
	%>
	<h1>
		관리자
		<%=searchName%>님의 검색 결과입니다.
	</h1>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://bbr123.cafe24.com:3306/bbr123", "bbr123",
				"alstjr95!");

		String sql = "select age, name, part from managersuk where name = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, searchName);

		ResultSet rs = pstmt.executeQuery();

		int age = 0;
		String name = null;
		String part = null;

		while (rs.next()) {
			age = rs.getInt("age");
			name = rs.getString("name");
			part = rs.getString("part");
			out.println(age + "  " + name + "  " + part + "<br>");
		}
	%>
	<br>
	<a href="../haksaInfo.jsp">학사관리</a>
	<a href="managerList.jsp">관리자전체출력</a>
	<%
		pstmt.close();
		rs.close();
		conn.close();
	%>
</body>
</html>