<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
	background-image: url("../images/back.jpg");
}

.kh01 {
	width: 60px;
	height: 10;
}

#studentSearch {
	color: white;
	border: 1px solid white;
	border-radius: 20px;
	width: 400px;
}

#btn {
	padding-left: 190px;
}

h1 {
	font-size: 30px;
	text-align: center;
}

ul {
	list-style-type: none;
	padding: 0px;
}
</style>
<meta charset="UTF-8">
<title>학생검색</title>
</head>
<body>
	<div id="studentSearch">
		<form action="student_search.jsp" method="get">
			<h1 style="text-align: center;">학생 찾기</h1>
			<ul>
				<li><label for="찾을이름">찾을이름</label> <input type="text"
					name="name"></li>
			</ul>
			<div id="btn">
				<input type="image" src="../images/search.png" class="kh01">
			</div>
		</form>
	</div>
</body>
</html>