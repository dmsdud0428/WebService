<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="info" class="myinfo.InfoBean" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="Resources/img/p2p.ico">
<link href="Resources/css/base.css" rel="stylesheet">
<link href="Resources/css/information.css" rel="stylesheet">
<title>취업신상정보</title>
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
							취업신상정보
							<img src="Resources/img/question.png" title="설명을 작성해주세요." />
						</h1>
					</div>
					<div class="article">
						<div>
							<div class="language">
								<div id="mask" style="display: none"></div>
								<div id="popup1" style="display: none">
									<div style="padding-bottom: 15px"><h1>어학능력</h1></div>
									<%--확인버튼때문에 폼처리--%>
									<form>
										<div class="popup_content">
											<div style="width: 108px">· 공인시험명</div>
											<div><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 등급</div>
											<div><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 점수</div>
											<div><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 인증날짜</div>
											<div><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px"><input type="image" name="checkbox" src="Resources/img/check_button.png"/></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close(1)"></div>
										</div>
									</form>
								</div>
								<div class="table_title">
									<div class="pencil"><img src="Resources/img/pencil.png"></div>
									<div class="title_name"><h3>어학능력</h3></div>
									<div class="plus"><input name="openbox" type="button" onclick="popup_open(1)"></div>
								</div>
								<div class="table_content">공인시험명 / 등급 / 점수 / 인증날짜			<input name="editbox" type="button" onclick="popup_open(1)" /></div>
							</div>
							<div class="license">
								<div id="mask" style="display: none"></div>
								<div id="popup2" style="display: none">
									<div style="padding-bottom: 15px"><h1>자격증 취득</h1></div>
										<%--확인버튼때문에 폼처리--%>
									<form>
										<div class="popup_content">
											<div style="width: 108px">· 자격증명</div>
											<div><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 발급기관</div>
											<div><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 등급</div>
											<div><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 날짜</div>
											<div><input type="date" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px"><input type="image" name="checkbox" src="Resources/img/check_button.png"/></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close(2)"></div>
										</div>
									</form>
								</div>
								<div class="table_title">
									<div class="pencil"><img src="Resources/img/pencil.png"></div>
									<div class="title_name"><h3>자격증 취득</h3></div>
									<div class="plus"><input name="openbox" type="button" onclick="popup_open(2)"></div>
								</div>
								<div class="table_content">aaaa<br>aaaa<br>aaaa<br>aaaa<br>aaaa<br>aaaa<br>aaaa<br>aaaa<br>aaaa<br></div>
							</div>
						</div>
						<div>
							<div class="award">
								<div id="mask" style="display: none"></div>
								<div id="popup3" style="display: none">
									<div style="padding-bottom: 15px"><h1>수상실적</h1></div>
									<%--확인버튼때문에 폼처리--%>
									<form>
										<div class="popup_content">
											<div style="width: 108px">· 수상명</div>
											<div><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 수여기관</div>
											<div><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 등급</div>
											<div><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 수여일</div>
											<div><input type="date" name="date"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px"><input type="image" name="checkbox" src="Resources/img/check_button.png"/></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close(3)"></div>
										</div>
									</form>
								</div>
								<div class="table_title">
									<div class="pencil"><img src="Resources/img/pencil.png"></div>
									<div class="title_name"><h3>수상실적</h3></div>
									<div class="plus"><input name="openbox" type="button" onclick="popup_open(3)"></div>
								</div>
								<div class="table_content">수상명 / 수여기관 / 등급 / 수여일			<input name="editbox" type="button" onclick="popup_open(3)" /></div>
							</div>
							<div class="career">
								<div id="mask" style="display: none"></div>
								<div id="popup4" style="display: none">
									<div style="padding-bottom: 15px"><h1>재직 및 경력사항</h1></div>
										<%--확인버튼때문에 폼처리--%>
									<form>
										<div class="popup_content">
											<div style="width: 108px">· 구분</div>
											<div><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 근무지</div>
											<div><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 담당업무</div>
											<div><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 근무 시작일</div>
											<div><input type="date" name="date"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 근무 종료일</div>
											<div><input type="date" name="date"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px"><input type="image" name="checkbox" src="Resources/img/check_button.png"/></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close(4)"></div>
										</div>
									</form>
								</div>
								<div class="table_title">
									<div class="pencil"><img src="Resources/img/pencil.png"></div>
									<div class="title_name"><h3>재직 및 경력사항</h3></div>
									<div class="plus"><input name="openbox" type="button" onclick="popup_open(4)"></div>
								</div>
								<div class="table_content">구분 / 근무지 / 담당업무 / 근무 시작일 / 근무 종료일		<input name="editbox" type="button" onclick="popup_open(4)" /></div>
							</div>
						</div>
						<div>
							<div class="service">
								<div id="mask" style="display: none"></div>
								<div id="popup5" style="display: none">
									<div style="padding-bottom: 15px"><h1>봉사활동</h1></div>
									<%--확인버튼때문에 폼처리--%>
									<form>
										<div class="popup_content">
											<div style="width: 108px">· 활동명</div>
											<div><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 활동기관</div>
											<div><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 봉사구분</div>
											<div><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 활동 시작일</div>
											<div><input type="date" name="date"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 활동 종료일</div>
											<div><input type="date" name="date"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px"><input type="image" name="checkbox" src="Resources/img/check_button.png"/></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close(5)"></div>
										</div>
									</form>
								</div>
								<div class="table_title">
									<div class="pencil"><img src="Resources/img/pencil.png"></div>
									<div class="title_name"><h3>봉사활동</h3></div>
									<div class="plus"><input name="openbox" type="button" onclick="popup_open(5)"></div>
								</div>
								<div class="table_content">활동명 / 활동기관 / 봉사구분 / 활동 시작일 / 활동 종료일			<input name="editbox" type="button" onclick="popup_open(5)" /></div>
							</div>
							<div class="etc">
								<div id="mask" style="display: none"></div>
								<div id="popup6" style="display: none">
									<div style="padding-bottom: 15px"><h1>기타</h1></div>
										<%--확인버튼때문에 폼처리--%>
									<form>
										<div class="popup_content">
											<div style="width: 108px">· 활동명</div>
											<div><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 활동기관</div>
											<div><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 활동 시작일</div>
											<div><input type="date" name="date"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 활동 종료일</div>
											<div><input type="date" name="date"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px"><input type="image" name="checkbox" src="Resources/img/check_button.png"/></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close(6)"></div>
										</div>
									</form>
								</div>
								<div class="table_title">
									<div class="pencil"><img src="Resources/img/pencil.png"></div>
									<div class="title_name"><h3>기타</h3></div>
									<div class="plus"><input name="openbox" type="button" onclick="popup_open(6)"></div>
								</div>
								<div class="table_content">활동명 / 활동기관 / 활동 시작일 / 활동 종료일		<input name="editbox" type="button" onclick="popup_open(6)" /></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript" src="Resources/js/popup.js"></script>
</body>
</html>