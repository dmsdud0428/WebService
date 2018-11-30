<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="myinfo.*"%>
<jsp:useBean id="info" class="myinfo.InfoBean" scope="session" />
<jsp:useBean id="score" class="myinfo.ScoreBean" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="Resources/img/p2p.ico">
<link href="Resources/css/base.css" rel="stylesheet">
<link href="Resources/css/graduate.css" rel="stylesheet">
<title>졸업요건진단</title>
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
						<a href="Review">·&nbsp;&nbsp;면접/입사후기</a>
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
						<b>· 소속 : </b><jsp:getProperty property="major" name="info" />&nbsp;&nbsp;&nbsp;
						<b>· 학번 : </b><jsp:getProperty property="schoolID" name="info" />&nbsp;&nbsp;&nbsp;
						<b>· 사용자 : </b><jsp:getProperty property="name" name="info" />&nbsp;&nbsp;&nbsp;
						<b>· 구분 : </b><jsp:getProperty property="type" name="info" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="logout.jsp"><img id="logout" src="Resources/img/logout_button.png"/></a>
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
						<div class="table">
							<table class="content">
								<tr>
									<th>총 학점</th>
									<td><%=score.getTotal_sco()%> / 136</td>
								</tr>
								<tr>
									<th>전공 학점</th>
									<td><%=score.getMajor_sco()%> / 67</td>
								</tr>
								<tr>
									<th>교양 학점</th>
									<td><%=score.getNecessary_sco()%> / 46</td>
								</tr>
								<tr>
									<th>필수 교양</th>
									<td><%=score.getCultureE_sco()%> / 1</td>
								</tr>
								<tr>
									<th>필수 전공</th>
									<td><%=score.getMajorE_sco()%> / 4</td>
								</tr>
								<tr>
									<th>msc 교양</th>
									<td><%=score.getMsc_sco()%> / 24</td>
								</tr>
								<tr>
									<th>공학 인증</th>
									<td>공학 인증</td>
								</tr>
								<tr>
									<th>bsm 교양</th>
									<td><%=score.getBsm_sco() %> / 18</td>
								</tr>
								<tr>
									<th>전문 교양</th>
									<td><%=score.getDesignC_sco() %> / 3</td>
								</tr>
								<tr>
									<th>설계 학점</th>
									<td><%=score.getDesign_sco() %> / 12</td>
								</tr>
								<tr>
									<th>전공 학점</th>
									<td><%=score.getDesignM_sco() %> / 60</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>