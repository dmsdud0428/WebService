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
<%
	if(user.getName() == null)
		out.println("<script>alert('로그인하지 않았거나 세션이 만료되었습니다.\\n다시 로그인해주세요.'); location.href='login.jsp';</script>");
%>
</head>
<body onload="nomelChart();engineerChart();">
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
						<div id="normal_graph">
								<div id="subject">	
									<img src="Resources/img/pencil.png" /> 졸업 요건 그래프
								</div>
								<div id="graph">
									<table>
										<tr style="width:600px;height:300px;">
											<td style="width:350px;height:300px;padding:5px 10px 5px 5px;text-align:center;">
												<canvas id="nomel" width="390px" height="270px" ></canvas>
												<h3>일반 졸업 요건</h3>
											</td>
											<td style="width:350px;height:300px;padding:5px 5px 5px 10px;text-align:center;">
												<canvas id="engineer" width="350px" height="280px" ></canvas>
												<h3> 공학 인증 졸업 요건</h3>
											</td>
										</tr>
									</table>
								</div>
						</div>
						<table id="bottom_table">
							<tr style="width:600px;"><td style="width:380px;height:324px;">
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
										list.add(score.getMajorE_sco());
										
										if(user.getYear() <= 2016)
										{
											size = graduate2016.size();
											num = 2016;
											list.add(score.getCultureE_sco());
											list.add(score.getMsc_sco());
										}
										
										if(user.getYear() == 2017)
										{
											size = graduate2017.size();
											num = 2017;
											list.add(score.getJinseongae());
											list.add(score.getLan_sco());
											list.add(score.getMath_sco());
											list.add(score.getIdea_sco());
										}
										if(user.getYear() >= 2018)
										{
											size = graduate2018.size();
											num = 2018;
											list.add(score.getJinseongae());
											list.add(score.getLan_sco());
											list.add(score.getSW_sco());
											list.add(score.getMath_sco());
											list.add(score.getBarun_sco());
											
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
										</table>
									</div>
									</td>
									<td style="width:380px;height:232px;">
										<div class="table">
										<table class="content">
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
								</td></tr></table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script language="JavaScript">
 		function nomelChart(){
	 
	 		var ctx=document.getElementById("nomel").getContext("2d");
	 		
	 		var datas = new Array();
	 		var datas2= new Array();
	 		var labelA=new Array();
	 		var index = 0;
	 		
	 		<%for(int i = 0; i < size-4; i++) {
	 				if(num == 2016)
	 					graduate = (GraduateBean)graduate2016.get(i);
	 				else if(num == 2017)
	 					graduate = (GraduateBean)graduate2017.get(i);
	 				else if(num == 2018)
	 					graduate = (GraduateBean)graduate2018.get(i);
	 				int user_score = list.get(i);
	 				double temp=(double)user_score;
	 				double tmp=(double)graduate.getScore();
	 		%>
	 				labelA[index]=new String("<%=graduate.getRequirement() %>");
	 				datas[index]=<%= temp%>;
	 				datas2[index++]=<%=tmp%>;
	 		<%
	 			}
	 		%>
	 		
	 		var nomel=new Chart(ctx, {
	 			
	 			type:'bar',
	 			data:{
	 				labels:labelA,
	 				datasets:[{
	 					
						label:"나의 학점",
						backgroundColor:"#fbc658",
						borderColor:"#fbc658",
						data:datas
						
	 				},{
	 					
						label:"필수 학점",
						backgroundColor:"#51cacf",
						borderColor:"#51cacf",		
						data:datas2
	 				}]	
	 			}
	 		});
	
 		}		
 		
 		function engineerChart(){
 			 
	 		var ctx=document.getElementById("engineer").getContext("2d");
	 		
	 		var datas = new Array();
	 		var datas2= new Array();
	 		var labelA=new Array();
	 		var index = 0;
	 		
	 		<%for(int i = size-4; i < size; i++) {
					if(num == 2016)
		 				graduate = (GraduateBean)graduate2016.get(i);
		 			else if(num == 2017)
		 				graduate = (GraduateBean)graduate2017.get(i);
		 			else if(num == 2018)
		 				graduate = (GraduateBean)graduate2018.get(i);
		 			int user_score = list.get(i);
	 				double temp=(double)user_score;
	 				double tmp=(double)graduate.getScore();
		 		%>
					labelA[index]=new String("<%=graduate.getRequirement() %>");
	 				datas[index]=<%= temp%>;
	 				datas2[index++]=<%=tmp%>;
	 		<%
	 			}
	 		%>
	 		
	 		var engineer=new Chart(ctx, {
	 			
	 			type:'bar',
	 			data:{
	 				labels:labelA,
	 				datasets:[{
	 					
						label:"나의 학점",
						backgroundColor:"#fbc658",
						borderColor:"#fbc658",
						data:datas
						
	 				},{
	 					
						label:"필수 학점",
						backgroundColor:"#51cacf",
						borderColor:"#51cacf",		
						data:datas2
	 				}]	
	 			}
	 		});
	
 		}
</script>
</body>
</html>
