<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="Resources/css/base.css" rel="stylesheet">
<title>Main</title>
<style>
#popup {
	position: fixed;
	width: 372px;
	height: 300px;
	background: url('Resources/img/plus_background.png');
	top: 50%;
	left: 50%;
	margin-left: -186px;
	margin-top: -150px;
	padding: 15px 25px 15px 25px;
	background-repeat: no-repeat;
	z-index: 9999;
}

#mask{
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background:#000;
  opacity:.8; 
  filter:alpha(opacity:30);
  z-index: 1;
}

.popup_content {
	display: flex;
	align-items: center;
	padding-bottom: 10px;
}

input[name=checkbox] {
	 vertical-align: middle;
	 float: right;
}

input[name=closebox] {
	width: 54px;
	height: 26px;
	background: url('Resources/img/cancle_button.png');
	border: none;
}

input[name=text] {
	width: 214px;
	height: 25px;
	background: #F9F9F9;
	background-image: url('Resources/img/id_box.png');
	background-size: 214px 25px;
	background-repeat: no-repeat;
	border: none;
}
.language {
	width: 380px;
	height: 150px;
	margin-bottom: 15px;
	flex-basis: 380px;
	float: left;
}

.license {
	width: 380px;
	height: 150px;
	background-image: url('Resources/img/english_table.png');
	background-size: 380px 150px;
	margin-bottom: 15px;
	flex-basis: 380px;
	float: right;
}

.table_title {
	width:348px;
	height: 50px;
	background-image: url('Resources/img/top_table.png');
	background-size: 380px 50px;
	float: left;
	display: flex;
	align-items: center;
	padding : 0px 16px 0px 16px;
}

input[name=openbox] {
	background: url('Resources/img/plus.png');
	width: 18px;
	height: 19px;
	border: none;
}

input[name=editbox] {
	background: url('Resources/img/modify_button.png');
	width: 48px;
	height: 22px;
	border: none;
}

.pencil {
	flex-basis: 21px;
}
.title_name {
	flex-basis: 341px;
	padding-left: 16px;
}
.plus {
	flex-basis: 18px;
}

.table_content {
	width: 355px;
	height: 135px;
	background-image: url('Resources/img/body_table.png');
	background-size: 380px 150px;
	flex-basis: 380px;
	float: left;
	padding : 15px 0px 0px 25px;
	overflow: scroll;
	overflow-x: hidden;
	line-height: 150%;
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
							취업신상정보
							<img src="Resources/img/question.png" title="설명을 작성해주세요." />
						</h1>
					</div>
					<div class="article">
						<div>
							<div class="language">
								<div class="table_title">
									<div class="pencil"><img src="Resources/img/pencil.png"></div>
									<div class="title_name"><h3>어학능력</h3></div>
									<div class="plus"><input name="openbox" type="button" onclick="popup_open()">
										<div id="mask" style="display: none"></div>
										<div id="popup" style="display: none">
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
													<div class="popup_right"><input type="text" size="40" name="text"/></div>
												</div>
												<div class="popup_content">
													<div style="width: 141px; padding: 15px 20px 0px 0px"><input type="image" name="checkbox" src="Resources/img/check_button.png"/></div>
													<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close()"></div>
												</div>
											</form>
										</div>
									</div>
								</div>
								<div class="table_content">공인시험명 / 등급 / 점수 / 인증날짜			<input name="editbox" type="button" onclick="popup_open()" /></div>
							</div>
							<div class="license">
								<div id="mask" style="display: none"></div>
								<div id="popup" style="display: none">
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
											<div class="popup_right"><input type="text" size="40" name="text"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px"><input type="image" name="checkbox" src="Resources/img/check_button.png"/></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close()"></div>
										</div>
									</form>
								</div>
								<div class="table_title">
									<div class="pencil"><img src="Resources/img/pencil.png"></div>
									<div class="title_name"><h3>자격증 취득</h3></div>
									<div class="plus"><input name="openbox" type="button" onclick="popup_open()"></div>
								</div>
								<div class="table_content">aaaa<br>aaaa<br>aaaa<br>aaaa<br>aaaa<br>aaaa<br>aaaa<br>aaaa<br>aaaa<br></div>
							</div>
						</div>
						<%--<div>
							<span class="award"><img src="Resources/img/english_table.png" style="width:380px;margin-bottom:15px"></span>
							<span class="career" style="float:right"><img src="Resources/img/english_table.png" style="width:380px;margin-bottom:15px"></span>
						</div>
						<div>
							<span class="service"><img src="Resources/img/english_table.png" style="width:380px"></span>
							<span class="etc" style="float:right"><img src="Resources/img/english_table.png" style="width:380px"></span>
						</div> --%>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
function popup_open() {
	var layer,layer2;
	layer = document.getElementById("popup");
	layer2 = document.getElementById("mask");
	if(layer.style.display=="none"){
		layer.style.display="inline";
		layer2.style.display="inline";
	}
}
function popup_close() {
	var layer,layer2;
	layer = document.getElementById("popup");
	layer2 = document.getElementById("mask");
	if(layer.style.display=="inline"){
		layer.style.display="none";
		layer2.style.display="none";
	}
}
</script>
</body>
</html>