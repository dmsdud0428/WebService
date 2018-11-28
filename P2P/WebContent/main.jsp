<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="myinfo.LoginBean" scope="session" />
<!DOCTYPE html>
<html>
<head>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.min.js"></script>
 <script language="JavaScript"><!--
 		function displayLineChart(){
			var data={
				labels:["1-1","1-2","2- 1","2-2","3-1","3- 2","4-1","4-2"],
				datasets:[
					{	
							label:"우리학과 평균",
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
 
		--></script>
<meta charset="UTF-8">
<link href="Resources/css/base.css" rel="stylesheet">
<title>Main</title>
<style>
	#all_score_average_graph{
		
		background-image:url('./Resources/img/basic_table.png');
		width: 545px;
		height:400px;
		background-repeat: no-repeat;
		background-size:545px 400px; 
		margin-right:10px;
		margin-bottom:10px;
		
	}
	#new_information{
		background-image:url('./Resources/img/basic_table.png');
		width: 223px;
		height:400px;
		background-repeat: no-repeat;
		background-size:223px 400px; 
		margin-bottom:10px;
		
	}
	#interview_review_border{
		background-image:url('./Resources/img/basic_table.png');
		width: 785px;
		height:350px;
		background-repeat: no-repeat;
		background-size:785px 350px; 
		margin-right:10px;
	}
	
	
	#graph_subject{
		font-weight:bold; 
		font-size:18px;
		width:785px;
		height:40px;
		padding:18px 0px 0px 16px;
		overflow:hidden;
	}
	#new_information_subject{
		font-weight:bold; 
		font-size:18px;
		width:210px;
		height:40px;
		padding:18px 0px 0px 16px;
		overflow:hidden;
	}
	#interview_subject{
		font-weight:bold; 
		font-size:18px;
		width:785px;
		height:40px;
		padding:15px 0px 0px 16px;
		overflow:hidden;
	}
	#all_average_graph{
		width: 480px;
		height:300px;
		padding:14px 10px 14px 18px;
	
	}
	#information_view{
		
		width: 210px;
		height:350px;
		word-spacing:2px;
		padding:17px 10px 5px 5px;
		font-color:#666666;
	
	}
	#interview_table{
		width: 770px;
		height:320px;
		word-spacing:2px;
		padding:0px 10px 5px 13px;
	}
	
#logout {
	width: 60px;
	height: auto;
	vertical-align: middle;
	cursor: pointer;
}
</style>
</head>
<body onload="displayLineChart();">
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
						<b>· 소속 : </b><jsp:getProperty property="major" name="login" />&nbsp;&nbsp;&nbsp;
						<b>· 학번 : </b><jsp:getProperty property="schoolID" name="login" />&nbsp;&nbsp;&nbsp;
						<b>· 사용자 : </b><jsp:getProperty property="name" name="login" />&nbsp;&nbsp;&nbsp;
						<b>· 구분 : </b><jsp:getProperty property="type" name="login" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="logout.jsp"><img id="logout" src="Resources/img/logout_button.png"/></a>
					</div>
				</div>
				<img src="Resources/img/line.png" style="width:100%;height:4px" />
				<div id="content" style="width:785px;padding:15px 15px 15px 15px">
					<div class="title">
						<h1>
							대시보드
							<img src="Resources/img/question.png" title="설명을 작성해주세요." />
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
												<canvas id="average_chart" width="500px" height="250px"></canvas>
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
														<font style="font-weight:bold;font-size:30px;font-color:#000000;">0</font>&nbsp;건
													</td>
													
												</tr>
												<tr style="height:63px;border-bottom:1px solid #F2F2F2;">
													<td style="text-align:left; font-size:15px;width:200px">
														&nbsp;· 자격증취득
													</td>
													<td style="text-align:right;width:30px;">
														<font style="font-weight:bold;font-size:30px;font-color:#000000;">0</font>&nbsp;건
													</td>
												</tr>
												<tr style="height:63px;border-bottom:1px solid #F2F2F2;">
													<td style="text-align:left; font-size:15px;width:200px">
														&nbsp;· 수상실적
													</td>
													<td style="text-align:right;width:30px;">
														<font style="font-weight:bold;font-size:30px;font-color:#000000;">0</font>&nbsp;건
													</td>
												</tr>
												<tr style="height:63px;border-bottom:1px solid #F2F2F2;">
													<td style="text-align:left; font-size:15px;width:200px">
														&nbsp;· 재직및경력사항
													</td>
													<td style="text-align:right;width:30px;">
														<font style="font-weight:bold;font-size:30px;font-color:#000000;">0</font>&nbsp;건
													</td>
												</tr>
												<tr style="height:63px">
													<td style="text-align:left; font-size:15px;width:200px">
														 &nbsp;· 봉사활동
													</td>
													<td style="text-align:right;width:30px;">
														<font style="font-weight:bold;font-size:30px;font-color:#000000;">0</font>&nbsp;건
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
									<table style="border-collapse:collapse;">
										<tr style="height:41px;width:770px;border-bottom:1px solid #F2F2F2;">
											<td style="width:470px;"> 	
												&nbsp;· 톨비포탑 실사  
											</td>
											<td style="width:120px;">
												정형돈
											</td>
											<td style="text-align:center;">
												11:24
											</td>										
											<td style="text-align:right;width:70px;">
												246
											</td>										
										</tr>
										<tr style="height:41px;width:770px;border-bottom:1px solid #F2F2F2;">
											<td style="width:470px;"> 	
												&nbsp;· 오버워치 경기 일정  
											</td>
											<td style="width:120px;">
												검정 팬더
											</td>
											<td style="text-align:center;">
												09:44
											</td>									
											<td style="text-align:right;width:70px;">
												412
											</td>										
										</tr>
										<tr style="height:41px;width:770px;border-bottom:1px solid #F2F2F2;">
											<td style="width:470px;"> 	
												&nbsp;· 아 진짜 플미 너무 화나요  
											</td>
											<td  style="width:120px;">
												쏘울
											</td>
											<td style="text-align:center;">
												09:36
											</td>										
											<td style="text-align:right;width:70px;'">
												396
											</td>										
										</tr>
										<tr style="height:41px;width:770px;border-bottom:1px solid #F2F2F2;">
											<td  style="width:470px;"> 	
												&nbsp;· 자퇴각이다 
											</td>
											<td style="width:120px;">
												누군가
											</td>
											<td style="text-align:center;">
												1:39
											</td>										
											<td style="text-align:right;width:70px;">
												250
											</td>										
										</tr>
										<tr style="height:41px;width:770px;border-bottom:1px solid #F2F2F2;">
											<td  style="width:470px;"> 	
												&nbsp;· 너무 길어서 다른 제목 친다..  
											</td>
											<td style="width:120px;">
												페이니
											</td>
											<td style="text-align:center;">
												1:35
											</td>										
											<td style="text-align:right;width:70px;">
												250
											</td>										
										</tr>
										<tr style="height:41px;width:770px;border-bottom:1px solid #F2F2F2;">
											<td  style="width:470px;"> 	
												&nbsp;· 자고 싶다.   
											</td>
											<td style="width:120px;">
												이쁜 아이
											</td>
											<td style="text-align:center;">
												2018/11/19
											</td>										
											<td style="text-align:right;width:70px;">
												550
											</td>										
										</tr>
										<tr style="height:41px;width:770px;">
											<td  style="width:470px;"> 	
												&nbsp;· 피카츄 좋아
											</td>
											<td style="width:120px;">
												전기맨
											</td>
											<td style="text-align:center;">
												2018/11/19
											</td>										
											<td style="text-align:right;width:50px;">
												412
											</td>										
										</tr>
									</table>
								</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>