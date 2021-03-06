<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<%@page import="java.util.ArrayList"%>
<%@page import="myinfo.*"%>

<jsp:useBean id="user" class="myinfo.UserBean" scope="session" />
<jsp:useBean id="score" class="myinfo.ScoreInfo" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="Resources/img/p2p.ico">
<link href="Resources/css/base.css" rel="stylesheet">
<link href="Resources/css/average.css" rel="stylesheet">
<title>총 평점 평균</title>

<%
	if(user.getName() == null)
		out.println("<script>alert('로그인하지 않았거나 세션이 만료되었습니다.\\n다시 로그인해주세요.'); location.href='login.jsp';</script>");
%>

<%
	request.setCharacterEncoding("utf-8");
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = 
			"jdbc:mysql://localhost:3306/project?characterEncoding=utf8&&serverTimezone=UTC";
	Class.forName(jdbc_driver);
	Connection conn = DriverManager.getConnection(jdbc_url, "user_id", "p2pproject");
	
	Statement stmt = conn.createStatement();
	int tmp = 0;
	if(user.getYear()<=2016)
		tmp = 2016;
	if(user.getYear()==2017)
		tmp = 2017;
	if(user.getYear()>=2018)
		tmp = 2018;
	
	String sql = "SELECT score FROM graduate where year='" + tmp + "' and requirement='총 학점'";
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
%>
</head>
<body onload="displayLineChart();displayLineChart2();">
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
						<a href="Average">·&nbsp;&nbsp;총/전공평점평균</a><br>
						<a href="Graduate">·&nbsp;&nbsp;졸업요건진단</a><br>
						<a href="Information">·&nbsp;&nbsp;취업신상정보</a><br>
						<a href="Introduce">·&nbsp;&nbsp;자기소개서</a><br>
						<a href="Calendar">·&nbsp;&nbsp;자격정보/시험일정</a><br>
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
							총 / 전공 평점평균
							<img src="Resources/img/question.png" title="총 평점 평균과 전공 평점 평균을 그래프로 확인할 수 있으며, 목표 평점 평균에 따른 필요 학점을 계산합니다." />
						</h1>
					</div>
					<div class="article">
						<div id="all_average_graph_table">
								<div id="graph_subject">	
									<img src="Resources/img/pencil.png" /> 총 평점 평균 그래프
								</div>
								<div id="average_graph">
									<canvas id="average_chart" width="740px" height="240px"></canvas>
								</div>
						</div>
						<div id="major_average_graph_table">
								<div id="graph_subject">
									<img src="Resources/img/pencil.png" /> 전공 평점 평균 그래프
								</div>
								<div id="major_graph">
									<canvas id="major_chart" width="740px" height="240px"></canvas>
								</div>
						</div>
						<table>
							<tr>
								<td>
									<div id="goal_average_number">
										<div id="number_subject">
											<img src="Resources/img/pencil.png" /> 목표 평점 평균
										</div>
										<div id="goal_number">
											<font color="#ff4e4e" style="font-weight:bold;font-size:60px;">
												<jsp:getProperty property="goal" name="score" />
											</font>
										</div>
									</div>
								</td>
								<td>
									<div id="allSocre_average_number">						
										<div id="number_subject">
											<img src="Resources/img/pencil.png" />  총 평점 평균
										</div>
										<div id="goal_number">
											<font color="#51cacf" style="font-weight:bold;font-size:60px;">
												<jsp:getProperty property="total_ave" name="score" />
											</font>
										</div>
									</div>
								</td>
								<td>
									<div id="major_average_number">
										<div id="number_subject">
												<img src="Resources/img/pencil.png" /> 전공 평점 평균
										</div>
										<div id="goal_number">
											<font color="#fbc658" style="font-weight:bold;font-size:60px;">
												<jsp:getProperty property="major_ave" name="score" />
											</font>
										</div>
									</div>
								</td>
								<td>
									<div id="mask" style="display: none"></div>
									<div id="popup1" style="display: none">
										<form method="post" action="goal_check.jsp">
											<div style="padding-bottom: 15px"><h1>목표 평점 평균 설정</h1></div>
											<div class="popup_content" style="margin:30px 0px 40px 0px">
												· 목표 점수 : 
												<input name="input_goal" type="number" max="4.5" min="0" step="0.01" style="width:100px" />
											</div>
											<div class="popup_content">
												<input type="submit" id="checkbox" value="" />
												<img id="closebox" onclick="popup_close(1)" />
											</div>
										</form>
									</div>
									<div id="goal_average">
										<div id="goal_sentence">
												목표 학점까지 남은 학기동안<br>
												<%=rs.getInt("score") %> 이수학점 기준<br>
												평균 <span id="goal_score">00</span>학점 필요<br>
												<%
													rs.close();
													stmt.close();
													conn.close();
												%>
												<input id="goal_button" type="button" onclick="popup_open(1,0)" />
										</div>
									</div>
								
								</td>
								
							</tr>
						</table>
				</div>
			</div>	
			</div>
		</div>
	</div>
<script type="text/javascript" src="Resources/js/popup.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script>
	var complete = <%=score.getAverage().size() %>;
	var empty = 8 - complete;
	var need = ((<%=score.getGoal() %> * 8 - <%=score.getTotal_ave() %> * complete) / empty).toFixed(2);;
	if(need > 4.5)
		need = "4.5+";
	else if(need < 0)
		need = "0-";
	document.getElementById("goal_score").textContent = need;


 		function displayLineChart(){
	 
			var ctx=document.getElementById("average_chart").getContext("2d");
			
			var datas = new Array();
	 		var index = 0;
	 		
	 		<%
	 			ArrayList<Double> average_array = score.getAverage();
	 			if(average_array.size() == 0) { %>
	 				datas = [1.42, 2.42, 3.42, 4.42, 4.1, 4.2, 4.3, 4.4];
	 		<%	}
	 			for(int i = 0; i < average_array.size(); i++) { %>
	 				datas[index++] = <%= average_array.get(i) %>;
	 		<%	} %>
	 		
			var average_chart=new Chart(ctx, {
				
				type:'line',
				data:{
					labels:["1학년 1학기","1학년 2학기","2학년 1학기","2학년 2학기","3학년 1학기","3학년 2학기","4학년 1학기","4학년 2학기"],
					datasets:[{
						
						label:"우리학과 평균",
						backgroundColor:"#ffffff",
						borderColor:"#fbc658",
						fill:false,
						pointBackgroundColor:"#fbc658",
						pointBorderColor:"#fbc658",
						pointRadius:5,
						data:[2.92, 2.92, 2.92, 2.92, 2.92, 2.92, 2.92, 2.92]
						
					},{
						
						label:"나의 총 평점 평균",
						backgroundColor:"#ffffff",
						borderColor:"#51cacf",
						fill:false,			
						pointBackgroundColor:"#51cacf",
						pointBorderColor:"#51cacf",
						pointRadius:5,
						data:datas
					}]	
				}
			});
	
		}

 		function displayLineChart2(){
 			
 			var ctx=document.getElementById("major_chart").getContext("2d");
 			
 			var datas = new Array();
 			var index = 0;
 			
 			<%
	 			ArrayList<Major> maverage_array = score.getMAverage();
	 			if(maverage_array.size() == 0) { %>
	 				datas = [3.5, 3.2, 2.24, 2.6, 2.7, 2.4, 2.3, 2.6];
	 		<%	}
	 			for(int i = 0; i < maverage_array.size(); i++) { %>
	 				datas[index++] = <%= maverage_array.get(i).getAverage() %>;
	 		<%	} %>
 			
			var major_chart=new Chart(ctx, {
				
				type:'line',
				data:{
					labels:["1학년 1학기","1학년 2학기","2학년 1학기","2학년 2학기","3학년 1학기","3학년 2학기","4학년 1학기","4학년 2학기"],
					datasets:[{
						
						label:"나의 총 평점 평균",
						backgroundColor:"#ffffff",
						borderColor:"#51cacf",
						fill:false,			
						pointBackgroundColor:"#51cacf",
						pointBorderColor:"#51cacf",
						pointRadius:5,
						data: datas
					}]	
				}
			});
 		}
</script>
</body>
</html>