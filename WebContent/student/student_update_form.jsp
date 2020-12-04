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

#studentUpdate {
	color: white;
	border: 1px solid white;
	border-radius: 20px;
	width: 400px;
}

#btn {
	padding-left: 200px;
}

h1 {
	font-size: 30px;
}

ul {
	list-style-type: none;
	padding: 0px;
}
</style>
<meta charset="UTF-8">
<title>학생수정</title>
</head>
<body>

	<div id="studentUpdate">
		<form action="student_updateConfirm.jsp" method="get">
			<h1 style="text-align: center;">학생수정</h1>
			<ul>
				<li><label for="수정할 이름">수정할 이름</label> <input type="text"
					name="name"></li>
			</ul>
			<div id="btn">
				<input type="image" src="../images/update.png" class="kh01">
			</div>
		</form>
	</div>
</body>
</html>