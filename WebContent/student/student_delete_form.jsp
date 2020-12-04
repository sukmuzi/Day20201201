<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
	background-image: url("../images/back.jpg");
}

#studentDelete {
	color: white;
	border: 1px solid white;
	border-radius: 20px;
	width: 400px;
}
.kh01{
	padding-left: 200px;
	width: 50px;
	height: 30px;
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
<title>학생삭제</title>
</head>
<body>
	<div id="studentDelete">
		<h1>학생 삭제</h1>
		<form action="student_delete.jsp" method="get">
			<ul>
				<li><label for="삭제이름">삭제이름</label> <input type="text"
					name="name"></li>
				<li><input type="image" src="../images/delete.png" class="kh01"></li>
			</ul>


		</form>
	</div>

</body>
</html>