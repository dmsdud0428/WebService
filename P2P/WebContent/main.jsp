<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<%@page import="java.util.ArrayList"%>

<jsp:useBean id="score" class="myinfo.ScoreInfo" scope="session" />
<jsp:useBean id="count" class="java.util.ArrayList" scope="request" />
<jsp:useBean id="user" class="myinfo.UserBean" scope="session" />

<!DOCTYPE html>
<html>
<head>
<%
	if(user.getName() == null)
		out.println("<script>alert('로그인하지 않았거나 세션이 만료되었습니다.\\n다시 로그인해주세요.'); location.href='login.jsp';</script>");
%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script language="JavaScript">
 		function displayLineChart(){
	 
	 		var ctx=document.getElementById("average_chart").getContext("2d");
	 		
	 		var datas = new Array();
	 		var index = 0;
	 		
	 		<%
	 			ArrayList<Double> average_array = score.getAverage();
	 			float buf;
	 			if(average_array.size() == 0) { %>
	 				datas = [1.42,2.42,3.42,4.42,4.1,4.2,4.3,4.4];
	 		<%	}
	 			for(int i = 0; i < average_array.size(); i++) { %>
	 				datas[index++] = <%= average_array.get(i) %>;
	 		<%	} %>
	 		
	 		var average_chart=new Chart(ctx, {
	 			
	 			type:'line',
	 			data:{
	 				labels:["1-1","1-2","2- 1","2-2","3-1","3- 2","4-1","4-2"],
	 				datasets:[{
	 					
						label:"우리학과 평균",
						backgroundColor:"#ffffff",
						borderColor:"#fbc658",
						fill:false,
						pointBackgroundColor:"#fbc658",
						pointBorderColor:"#fbc658",
						pointRadius:5,
						data:[2.92,2.92,2.92,2.92,2.92,2.92,2.92,2.92]
						
	 				},{
	 					
						label:"나의 총 평점 평균",
						backgroundColor:"#ffffff",
						borderColor:"#51cacf",
						pointBackgroundColor:"#51cacf",
						pointBorderColor:"#51cacf",
						pointRadius:5,
						fill:false,			
						data:datas
						//data:[1.42,2.42,3.42,4.42,4.1,4.2,4.3,4.4]	
	 				}]	
	 			}
	 		});
	
 		}		
</script>
<meta charset="UTF-8">
<link rel="shortcut icon" href="Resources/img/p2p.ico">
<link href="Resources/css/bootstrap-iso.css" rel="stylesheet">
<link href="Resources/css/base.css" rel="stylesheet">
<link href="Resources/css/main.css" rel="stylesheet">
<title>대시보드</title>

<link href="Resources/css/main.css" rel="stylesheet">

<%
	request.setCharacterEncoding("utf-8");
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost:3306/project?characterEncoding=utf8&&serverTimezone=UTC";
	Class.forName(jdbc_driver);
	Connection conn = DriverManager.getConnection(jdbc_url, "user_id", "p2pproject");
	
	String sql = "SELECT * FROM interview ORDER BY num DESC LIMIT 5";
	PreparedStatement stmt = conn.prepareStatement(sql);
	ResultSet rs = stmt.executeQuery(sql);
%>
</head>
<body onload="displayLineChart();">
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
							대시보드
							<img src="Resources/img/question.png" title="총 평점 평균 그래프와 취업 신상 정보, 면접/후기 게시판의 최근글을 한눈에 볼 수 있도록 요약한 페이지입니다." />
						</h1>
					</div>
					<div class="article">
						<table>
							<tr>
								<td>
									<div id="all_score_average_graph">
										<div id="graph_subject">
												<img src="Resources/img/pencil.png" /> 총 평점 평균 그래프
										</div>
										<div id="all_average_graph">
												<canvas id="average_chart" width="500px" height="300px"></canvas>
										</div>
									</div>
								</td>
								<td>
									<div id="new_information">
										<div id="new_information_subject">
												<img src="Resources/img/pencil.png" /> 취업 신상 정보
										</div>
										<div id="information_view">
											<table style="border-collapse:collapse;">
												<tr style="height:63px;border-bottom:1px solid #F2F2F2;">
													<td style="text-align:left; font-size:15px;width:200px">
														&nbsp;· 어학능력
													</td>
													<td style="text-align:right;width:30px;">
														<font style="font-weight:bold;font-size:30px;font-color:#000000;"><%= count.get(0) %></font>&nbsp;건
													</td>
													
												</tr>
												<tr style="height:63px;border-bottom:1px solid #F2F2F2;">
													<td style="text-align:left; font-size:15px;width:200px">
														&nbsp;· 자격증취득
													</td>
													<td style="text-align:right;width:30px;">
														<font style="font-weight:bold;font-size:30px;font-color:#000000;"><%= count.get(1) %></font>&nbsp;건
													</td>
												</tr>
												<tr style="height:63px;border-bottom:1px solid #F2F2F2;">
													<td style="text-align:left; font-size:15px;width:200px">
														&nbsp;· 수상실적
													</td>
													<td style="text-align:right;width:30px;">
														<font style="font-weight:bold;font-size:30px;font-color:#000000;"><%= count.get(2) %></font>&nbsp;건
													</td>
												</tr>
												<tr style="height:63px;border-bottom:1px solid #F2F2F2;">
													<td style="text-align:left; font-size:15px;width:200px">
														&nbsp;· 재직및경력사항
													</td>
													<td style="text-align:right;width:30px;">
														<font style="font-weight:bold;font-size:30px;font-color:#000000;"><%= count.get(3) %></font>&nbsp;건
													</td>
												</tr>
												<tr style="height:63px">
													<td style="text-align:left; font-size:15px;width:200px">
														 &nbsp;· 봉사활동
													</td>
													<td style="text-align:right;width:30px;">
														<font style="font-weight:bold;font-size:30px;font-color:#000000;"><%= count.get(4) %></font>&nbsp;건
													</td>
												</tr>
											</table>
										</div>
									</div>
								</td>
							</tr>
						</table>
						<div id="interview_review_border">
							<div id="interview_subject">
								<img src="Resources/img/pencil.png" /> 면접/후기 게시판
							</div>
							<div id="interview_table">			
								<div class="bootstrap-iso">
									<table class="table table-striped" style="text-align:center;height:200px;border:1px;solid:#dddddd;margin:0px 0px 0px 10px;font-size:10pt">
			 							<thead style="background-color:#f9f9f9">		 		
									 	</thead>
						 				<tbody>
										<%
											while(rs.next()) {
										%>
						 				<tr id="_tr" onClick="move2('view', '<%= rs.getInt("num") %>')">
											<td style="text-align:center;width:155px"><%=rs.getString("year") %></td>
											<td style="text-align:center;width:230px"><%=rs.getString("company") %></td>
											<td style="text-align:center;width:400px"><%=rs.getString("spec") %></td>
								 		</tr>
								 		<%		
									 		}
										 	rs.close();
										 	stmt.close();
											conn.close();
									 	%>
								 		</tbody>
								 	</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
	function move2(value, num) {
		var form = document.createElement("form");
		form.setAttribute("charset", "UTF-8");
		form.setAttribute("method", "Post");
		form.setAttribute("action", "Review");
		var hiddenField = document.createElement("input");
		hiddenField.setAttribute("type", "hidden");
		hiddenField.setAttribute("name", "num");
		hiddenField.setAttribute("value", num);
		form.appendChild(hiddenField);
		hiddenField = document.createElement("input");
		hiddenField.setAttribute("type", "hidden");
		hiddenField.setAttribute("name", "action");
		hiddenField.setAttribute("value", value);
		form.appendChild(hiddenField);
		document.body.appendChild(form);
		form.submit();
	}
</script>
</body>
</html>