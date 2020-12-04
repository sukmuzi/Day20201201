<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
	background-image: url("images/back.jpg");
}

ul {
	list-style-type: none;
}

img {
	width: 800px;
	height: 800px;
}

#div1 {
	position: absolute;
	top: 300px;
	left: 500px;
	width: 1000px;
	heiht: 500px;
	/*border: 1px solid red;*/
}

.khlogo {
	width: 200px;
	height: 100px;
}

.main1 {
	width: 500px;
	height: 500px
}

#news1>ul>li>a {
	text-decoration: none;
	color: white;
}

#news1>ul>li>a:hover {
	text-decoration: underline;
	color: orange;
}

#maintitle>ul>li>a:hover {
	text-decoration: underline;
	color: orange;
}

hr {
	border: 2px solid skyblue;
}

#maintitle {
	position: absolute;
	top: 50px;
	left: 300px;
	height: 100px;
	width: 1000px;
}

ul {
	list-style-type: none;
}

li {
	float: left;
	margin: 20px;
}

#maintitle>ul>li>a {
	text-decoration: none;
	color: white;
	/* 	background-color: white; */
	font-size: 2em;
}

/* a:hover { */
/* 	text-decoration: underline; */
/* } */
#news1 {
	position: absolute;
	top: 70px;
	left: 1400px;
	width: 400px;
	height: 100px;
	/*border: 1px solid black;*/
}

#homeregister {
	position: absolute;
	top: 100px;
	left: 800;
	right: 0px;
	top: 0px;
	width: 300px;
	hegith: 100px;
	/*border:1px solid red;*/
	font-size: 15px;
}
</style>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery.innerfade.js"></script>
<meta charset="UTF-8">
<title>KH정보교육원</title>
</head>



<body>
	<!-- 로고 -->
	<h1>
		<img src="images/kh.png" class="khlogo">
	</h1>
	<!-- 구분선 -->
	<hr>
	<!-- 홈회원가입로그인 -->
	<div id="homeregister">
		<a href="#">홈</a> <a href="#">회원가입</a> <a href="#">로그인</a>
	</div>
	<!-- 메뉴 -->
	<div id="maintitle">
		<ul>
			<li><a href="haksaInfo.jsp">학사관리</a></li>
			<li><a href="#">커뮤니티</a></li>
			<li><a href="#">모집과정</a></li>
			<li><a href="#">클래스</a></li>
		</ul>
	</div>
	<!-- 변하는그림 -->
	<div id="div1">
		<ul id="portfolio">
			<li><a href="#"> <img src="images/11.jpg" title="고양이"
					class="main1" />
			</a></li>
			<li><a href="#"> <img src="images/22.jpg" title="야옹이"
					class="main1" />
			</a></li>
			<li><a href="#"> <img src="images/33.jpg" title="야옹야옹"
					class="main1" />
			</a></li>
			<li><a href="#"> <img src="images/44.jpg" title="고양고양"
					class="main1" />
			</a></li>
		</ul>
	</div>
	<!-- 실시간 검색어 -->
	<div id="news1">
		<ul id="news">
			<li><a href="#n1">1 손흥민 </a></li>
			<li><a href="#n2">2 박지성</a></li>
			<li><a href="#n3">3 김태양</a></li>
			<li><a href="#n4">4 월드컵</a></li>
			<li><a href="#n5">5 축구</a></li>


		</ul>
	</div>
	<!-- 자바스크립트 -->
	<script>
		$('#portfolio').innerfade({
			speed : 'slow',
			timeout : 4000,
			type : 'sequence',
			containerheight : '220px'
		});
		$('#news').innerfade({
			animationtype : 'slide',
			speed : 750,
			timeout : 2000,
			type : 'sequence',
			containerheight : '1em'
		});
	</script>



</body>
</html>