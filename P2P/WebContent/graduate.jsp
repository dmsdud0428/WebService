<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="Resources/img/p2p.ico">
<link href="Resources/css/base.css" rel="stylesheet">
<title>졸업요건진단</title>
<style>
.pw {
	margin-top: 30px;
	background-image: url('Resources/img/curriculum.png');
	background-repeat: no-repeat;
	background-position: center center;
	height: 50px;
	display: flex;
	align-items: center;
    justify-content: center;
}
input[name=pwbox] {
	border: none;
	width: 130px;
	height: 26px;
	background-repeat: no-repeat;
	background: #F9F9F9;
	background-image: url('Resources/img/pw_box.png');
	background-size: 140px 26px;
	padding: 0px 0px 0px 10px;
}

.table {
	display: flex;
	align-items: center;
    justify-content: center;
}

table.content {
    border-collapse: separate;
    border-spacing: 1px;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    margin-top: 30px;
}
table.content th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #efefef;
}
table.content td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}

</style>
</head>
<body>
	<div class="layout">
		<div class="left-box">
		</div>
		<div class="layout2">
			<div class="center-box">
				<div id="logo" style="margin-top:30px">
					<a href="main.jsp"><img src="Resources/img/logo.png" style="width:152px;height:80px"/></a>
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
						<a href="http://www.kyonggi.ac.kr/KyonggiUp.kgu" target="_blank">·&nbsp;&nbsp;경기대학교</a>&nbsp;&nbsp;&nbsp;<img src="Resources/img/link_m.png" /><br>
						<a href="http://kutis.kyonggi.ac.kr/webkutis/" target="_blank">·&nbsp;&nbsp;KUTIS</a>&nbsp;&nbsp;&nbsp;<img src="Resources/img/link_m.png" /><br>
						<a href="http://cs.kyonggi.ac.kr" target="_blank">·&nbsp;&nbsp;컴퓨터과학과</a>&nbsp;&nbsp;&nbsp;<img src="Resources/img/link_m.png" />
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
						<img src="Resources/img/logout_button.png" style="width:60px;height:auto;vertical-align:middle"/>
					</div>
				</div>
				<img src="Resources/img/line.png" style="width:100%;height:4px" />
				<div id="content" style="width:785px;padding:15px 15px 15px 15px">
					<div class="title">
						<h1>
							졸업요건진단
							<img src="Resources/img/question.png" title="설명을 작성해주세요." />
						</h1>
					</div>
					<div class="article">
						<div class="pw">
							<form action="graduate.jsp" method="post">
								<span style="margin-right:15px;"><input type="password" name=pwbox size=40 placeholder="Password"/></span>
								<span><input type="image" name=checkbox src="Resources/img/check_button.png" style="vertical-align:middle"/></span>
							</form>
						</div>
						<div class="table">
							<table class="content">
								<%! int num; %>
								<%
									if (request.getParameter("pwbox") != null) {
										if (Integer.parseInt(request.getParameter("pwbox")) < 2016) num=10;
										else if (Integer.parseInt(request.getParameter("pwbox")) == 2016) num=6;
										else if (Integer.parseInt(request.getParameter("pwbox")) == 2017) num=8;
										else if (Integer.parseInt(request.getParameter("pwbox")) >= 2018) num=4;
										else num=5;
										
										for(int i=1;i<num;i++) { %>
										<tr>
											<th>예제제목</th>
											<td>예제내용</td>
										</tr>
										<%
										}
									}
								%>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>