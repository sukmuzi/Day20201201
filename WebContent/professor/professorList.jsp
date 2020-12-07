<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
}

#box {
	font-size: 17px;
	color: white;
	border: 1px solid white;
	border-radius: 20px;
	width: 300px;
	padding-left: 30px;
	padding-bottom: 30px;
	padding-right: 30px;
}
a{
	color: white;
}

h1 {
	font-size: 30px;
	text-align: center;
}
</style>
<meta charset="UTF-8">
<title>교수전체출력</title>
</head>
<body>
	<div id="box">
		<h1>교수 전체 출력</h1>
		나이 이름 과목<br>
		<%
			Class.forName("com.mysql.jdbc.Driver");
			//배포할때는 [bbr123.cafe24.com:3306]-> [127.0.0.1]로 바꿔
			Connection conn = DriverManager.getConnection("jdbc:mysql://bbr123.cafe24.com:3306/bbr123", "bbr123",
					"alstjr95!");
			
			String sql = "select age, name, subject from professorsuk";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				String age = rs.getString("age");
				String name = rs.getString("name");
				String subject = rs.getString("subject");
				out.print(age + "&nbsp;&nbsp;&nbsp;" + name + "&nbsp;&nbsp;&nbsp;" + subject
						+ "<br>");
			}
			pstmt.close();
			conn.close();
		%>
	</div>
	<a href="professor.jsp">교수등록</a>
	<a href="professor_delete_form.jsp">교수삭제</a>
	<a href="../haksaInfo.jsp">학사관리</a>
</body>
</html>