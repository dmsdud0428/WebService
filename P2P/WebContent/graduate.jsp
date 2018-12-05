<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="myinfo.*"%>
<jsp:useBean id="user" class="myinfo.UserBean" scope="session" />
<jsp:useBean id="score" class="myinfo.ScoreInfo" scope="session" />
<jsp:useBean id="Graduate" class="myinfo.GraduateBean" scope="request"/>
<jsp:useBean id="graduate2016" class="java.util.ArrayList" scope="request" />
<jsp:useBean id="graduate2017" class="java.util.ArrayList" scope="request" />
<jsp:useBean id="graduate2018" class="java.util.ArrayList" scope="request" />
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
					<a href="Main"><img src="Resources/img/logo.png" style="width:152px;height:80px"/></a>
				</div>
				<div id="menu">
					<div class="side_text">
						<a href="average.jsp">·&nbsp;&nbsp;총/전공평점평균</a><br>
						<a href="Graduate">·&nbsp;&nbsp;졸업요건진단</a><br>

						<a href="Information">·&nbsp;&nbsp;취업신상정보</a><br>

						<a href="Introduce">·&nbsp;&nbsp;자기소개서</a><br>

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
						<b>· 소속 : </b><jsp:getProperty property="major" name="user" />&nbsp;&nbsp;&nbsp;
						<b>· 학번 : </b><jsp:getProperty property="schoolID" name="user" />&nbsp;&nbsp;&nbsp;
						<b>· 사용자 : </b><jsp:getProperty property="name" name="user" />&nbsp;&nbsp;&nbsp;
						<b>· 구분 : </b><jsp:getProperty property="type" name="user" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
									<th colspan=2 align="center" style="background-color:skyblue">일 반 졸 업 요 건</th>
								</tr>
							<%
							ArrayList<Integer> list = new ArrayList<Integer>();
							GraduateBean graduate = new GraduateBean();
							int size = 0; int num=0;
							list.add(score.getTotal_sco());
							list.add(score.getMajor_sco());
							list.add(score.getNecessary_sco());
							
							if(user.getYear() <= 2016)
							{
								size = graduate2016.size();
								num = 2016;
								list.add(score.getCultureE_sco());
								list.add(score.getMajorE_sco());
								list.add(score.getMsc_sco());
							}
							
							if(user.getYear() == 2017)
							{
								size = graduate2017.size();
								num = 2017;
									//2017 졸업요건
							}
							if(user.getYear() >= 2018)
							{
								size = graduate2018.size();
								num = 2018;
									//2018 졸업요건
							}
							list.add(score.getBsm_sco());
							list.add(score.getDesignC_sco());
							list.add(score.getDesign_sco());
							list.add(score.getDesignM_sco());
							%>
							<%
						 		for(int i = 0; i < size-4; i++) {
						 			if(num == 2016)
						 				graduate = (GraduateBean)graduate2016.get(i);
						 			else if(num == 2017)
						 				graduate = (GraduateBean)graduate2017.get(i);
						 			else if(num == 2018)
						 				graduate = (GraduateBean)graduate2018.get(i);
						 			int user_score = list.get(i);
							%>
							
								<tr>
									<th><%=graduate.getRequirement() %></th>
									<td class="score"><%=user_score %> / <%=graduate.getScore() %></td>
									<%
										if(user_score < graduate.getScore()) { %>
											<script>
												var x = document.getElementsByClassName("score");
												x[<%=i%>].style.color="red";
											</script>
									<%	
										}
									%>
								</tr>
							<%
						 		}
							%>
								<tr>
									<th colspan=2 align="center" style="background-color:skyblue">공 학 인 증 요 건</th>
								</tr>
							<%
								for(int i = size-4; i < size; i++) {
									if(num == 2016)
						 				graduate = (GraduateBean)graduate2016.get(i);
						 			else if(num == 2017)
						 				graduate = (GraduateBean)graduate2017.get(i);
						 			else if(num == 2018)
						 				graduate = (GraduateBean)graduate2018.get(i);
						 			int user_score = list.get(i);
							%>
							
								<tr>
									<th><%=graduate.getRequirement() %></th>
									<td class="score"><%=user_score %> / <%=graduate.getScore() %></td>
									<%
										if(user_score < graduate.getScore()) { %>
											<script>
												var x = document.getElementsByClassName("score");
												x[<%=i%>].style.color="red";
											</script>
									<%	
										}
									%>
								</tr>
							<%
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