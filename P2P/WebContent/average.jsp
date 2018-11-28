<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="Resources/css/base.css" rel="stylesheet">
<title>Main</title>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.min.js"></script>
 <script language="JavaScript"><!--
 		function displayLineChart(){
			var data={
				labels:["1학년 1학기","1학년 2학기","2학년 1학기","2학년 2학기","3학년 1학기","3학년 2학기","4학년 1학기","4학년 2학기"],
				datasets:[
					{	
							label:"우리 학과 평균",
							fillColor: "rgba(220,220,220,0)",
							strockColor:"#fbc658",
							pointColor:"#fbc658",
							pointStrokeColor:"#fbc658",
							pointHighlightFill:"#fbc658",
							pointHighlightStroke:"#fbc658",
							data:[3.5,3.2,2.24,2.6,2.7,2.4,2.3,2.6]
													
					},
					{
							label:"나의 총 평점 평균",
							fillColor: "rgba(220,220,220,0)",
							strockColor:"#51cacf",
							pointColor:"#51cacf",
							pointStrokeColor:"#51cacf",
							pointHighlightFill:"#51cacf",
							pointHighlightStroke:"#51cacf",
							data:[1.42,2.42,3.42,4.42,4.1,4.2,4.3,4.4]
					}
												
				]
			};
			var ctx=document.getElementById("average_chart").getContext("2d");
			var options={};
			var average_chart=new Chart(ctx).Line(data,options);
 		}	
 
 		function displayLineChart2(){
			var data={
					labels:["1학년 1학기","1학년 2학기","2학년 1학기","2학년 2학기","3학년 1학기","3학년 2학기","4학년 1학기","4학년 2학기"],
					datasets:[
						{	
								label:"우리 학과 평균",
								fillColor: "rgba(220,220,220,0)",
								strockColor:"#fbc658",
								pointColor:"#fbc658",
								pointStrokeColor:"#fbc658",
								pointHighlightFill:"#fbc658",
								pointHighlightStroke:"#fbc658",
								data:[1.42,2.42,3.42,4.42,4.1,4.2,4.3,4.4]
														
						},
						{
								label:"나의 총 평점 평균",
								fillColor: "rgba(220,220,220,0)",
								strockColor:"#51cacf",
								pointColor:"#51cacf",
								pointStrokeColor:"#51cacf",
								pointHighlightFill:"#51cacf",
								pointHighlightStroke:"#51cacf",
								data:[3.5,3.2,2.24,2.6,2.7,2.4,2.3,2.6]
						}
													
					]
				};
				var ctx=document.getElementById("major_chart").getContext("2d");
				var options={};
				var major_chart=new Chart(ctx).Line(data,options);
	
 		}
		--></script>
<style>
	#all_average_graph_table{
		
		background-image:url('./Resources/img/graph_table.png');
		width:785px;
		height:330px;
		background-repeat: no-repeat;
		background-size:785px 330px; 
		margin-bottom:10px;
		
	}
	#average_graph{
		width: 735px;
		height:240px;
		padding:14px 10px 14px 10px;
	}
	#major_graph{
		width: 735px;
		height:240px;
		padding:14px 10px 14px 10px;
	}
	#goal_number{
		width: 140px;
		height:120px;
		padding:45px 10px 10px 24px;


	}
	#goal_sentence{
	
		width:230px;
		height:140px;
		padding:30px 15px 15px 15px;
		text-align:center;
		line-height:2.3em;
		letter-spacing:1px;
		
	
	}
	#major_average_graph_table{
		
		background-image:url('./Resources/img/graph_table.png');
		width:785px;
		height:330px;
		background-repeat: no-repeat;
		background-size:785px 330px; 
		margin-bottom:10px;
	}
	#goal_average_number{
		background-image:url('./Resources/img/average_table.png');
		width:160px;
		height:160px;
		background-size:160px 160px;
		margin-right:10px;
		
	}
	#allSocre_average_number{
		background-image:url('./Resources/img/average_table.png');
		width:160px;
		height:160px;
		background-size:160px 160px;
		margin-right:10px;
	}
	#major_average_number{
		background-image:url('./Resources/img/average_table.png');
		width:160px;
		height:160px;
		background-size:160px 160px;
		margin-right:10px;
	}
	#goal_average{
		
		background-image:url('./Resources/img/goal_background.png');
		width:260px;
		height:160px;
		background-size:260px 160px;
	}
	#graph_subject{
		font-weight:bold; 
		width:785px;
		height:40px;
		font-size:18px;
		padding:12px 0px 0px 16px;
		overflow:hidden;
	}	
	#number_subject{
		font-weight:bold; 
		width:160px;
		height:40px;
		font-size:18px;
		padding:17px 2px 0px 7px;
		overflow:hidden;	
	}

</style>
</head>
<body onload="displayLineChart();displayLineChart2();">
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
							총 / 전공 평점평균
							<img src="Resources/img/question.png" title="설명을 작성해주세요." />
						</h1>
					</div>
					<div class="article">
						<div id="all_average_graph_table">
								<div id="graph_subject">	
									<img src="Resources/img/pencil.png" /> 총 평점 평균 그래프
								</div>
								<div id="average_graph">
									<canvas id="average_chart" width="735px" height="220px"></canvas>
								</div>
						</div>
						<div id="major_average_graph_table">
								<div id="graph_subject">
									<img src="Resources/img/pencil.png" /> 전공 평점 평균 그래프
								</div>
								<div id="major_graph">
									<canvas id="major_chart" width="735px" height="220px"></canvas>
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
											<font color="#ff4e4e" style="font-weight:bold;font-size:80px;">4.5</font>
										</div>
									</div>
								</td>
								<td>
									<div id="allSocre_average_number">						
										<div id="number_subject">
											<img src="Resources/img/pencil.png" />  총 평점 평균
										</div>
										<div id="goal_number">
											<font color="#51cacf" style="font-weight:bold;font-size:80px;">4.5</font>
										</div>
									</div>
								</td>
								<td>
									<div id="major_average_number">
										<div id="number_subject">
												<img src="Resources/img/pencil.png" /> 전공 평점 평균
										</div>
										<div id="goal_number">
											<font color="#fbc658" style="font-weight:bold;font-size:80px;">4.5</font>
										</div>
									</div>
								</td>
								<td>
									<div id="goal_average">
										<div id="goal_sentence">
												목표 학점까지 남은 학기동안<br>
												OO 이수학점 기준<br>
												평균 OO학점 필요
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
</body>
</html>