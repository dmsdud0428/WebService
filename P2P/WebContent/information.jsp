<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<style>
body {
	margin: 0%;
}

.container {
	display: flex;
}

.container .left-box {
	background-color: #9686cc;
	flex: 1;
	height: 100vh;
}

.container .center-box {
	background-color: #9686cc;
	flex-basis: 234px;
	text-align: center;
	height: 100vh;
}

.container .right-box {
	background-color: #ffffff;
	flex: 5;
}

#menu {
	margin-top: 40px;
	background-image: url('img/menu.png');
	width: 234px;
	height: 314px;
	background-repeat: no-repeat;
	background-position: center center;
}

#link {
	margin-top: 20px;
	background-image: url('img/link.png');
	width: 234px;
	height: 194px;
	background-repeat: no-repeat;
	background-position: center center;
}

.side_text {
	text-align: left;
	padding: 55px 0px 0px 40px;
	line-height: 40px;
	color: #566270;
	font-family: 나눔고딕;
}

.head_text {
	font-size: 10pt;
	color: #000000;
	font-family: 나눔고딕;
}

a:link {
	color: #566270;
	text-decoration: none;
}

a:visited {
	color: #566270;
	text-decoration: none;
}

a:hover {
	color: #ffffff;
	background: #9686cc;
	text-decoration: none;
}

.title {
	background-image: url('img/title_bar.png');
	background-size: 770px auto;
	height: 56px;
	padding: 0px 0px 0px 16px;
	overflow: hidden;
}

.article {
	margin-top: 15px;
	background-color: blue;
	width: 770px;
	height: 500px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="left-box">
		</div>
		<div class="center-box">
			<div id="logo" style="margin-top:30px">
				<a href="main.jsp"><img src="img/logo.png" style="width:152px;height:80px"/></a>
			</div>
			<div id="menu">
				<div class="side_text">
					<a href="average.jsp">·&nbsp;&nbsp;총/전공평점평균</a><br>
					<a href="graduate.jsp">·&nbsp;&nbsp;졸업요건진단</a><br>
					<a href="introduce.jsp">·&nbsp;&nbsp;자기소개서</a><br>
					<a href="information.jsp">·&nbsp;&nbsp;취업신상정보</a><br>
					<a href="calendar.jsp">·&nbsp;&nbsp;자격정보/시험일정</a><br>
					<a href="review.jsp">·&nbsp;&nbsp;면접/입사후기</a>
				</div>
			</div>
			<div id="link">
				<div class="side_text">
					<a href="http://www.kyonggi.ac.kr/KyonggiUp.kgu" target="_blank">·&nbsp;&nbsp;경기대학교</a>&nbsp;&nbsp;&nbsp;<img src="img/link_m.png" /><br>
					<a href="http://kutis.kyonggi.ac.kr/webkutis/" target="_blank">·&nbsp;&nbsp;KUTIS</a>&nbsp;&nbsp;&nbsp;<img src="img/link_m.png" /><br>
					<a href="http://cs.kyonggi.ac.kr" target="_blank">·&nbsp;&nbsp;컴퓨터과학과</a>&nbsp;&nbsp;&nbsp;<img src="img/link_m.png" />
				</div>
			</div>
			<p>
				<font color="#566270" style="font-size:8pt">© Kyonggi University, P2P</font>
			</p>
		</div>
		<div class="right-box" style="line-height:50%">
			<div id="header" style="width:800px;text-align:right;">
				<div class="head_text" style="margin-top:30px">
					<b>· 소속 : </b>컴퓨터과학과&nbsp;&nbsp;&nbsp;
					<b>· 학번 : </b>201800000&nbsp;&nbsp;&nbsp;
					<b>· 사용자 : </b>ㅇㅇㅇ&nbsp;&nbsp;&nbsp;
					<b>· 구분 : </b>학생&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<img src="img/logout_button.png" style="width:60px;height:auto;vertical-align:middle"/>
				</div>
			</div>
			<img src="img/line.png" style="width:100%;height:4px" />
			<div id="content" style="width:770px;padding:15px 15px 15px 15px">
				<div class="title">
					<h1>
						취업신상정보
						<img src="img/question.png" title="설명을 작성해주세요." />
					</h1>
				</div>
				<div class="article">
				</div>
			</div>
		</div>
	</div>
</body>
</html>