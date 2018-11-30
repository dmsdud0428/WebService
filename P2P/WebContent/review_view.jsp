<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="myinfo.UserBean" scope="session" />
<jsp:useBean id="review" class="myinfo.ReviewBean" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="Resources/img/p2p.ico">
<link href="Resources/css/bootstrap-iso.css" rel="stylesheet">
<link href="Resources/css/base.css" rel="stylesheet">
<title>면접/입사후기</title>
<style>
#page_number a {
	font-size: 10pt;
	color: #566270;
	text-decoration: none;
}

.view_table table {
	width: 785px;
	text-align: center;
	border-top: 5px solid #dddddd;
	border-bottom: 5px solid #dddddd;
	border-collapse: collapse;
	margin-bottom: 10px;
	font-size: 10pt;
}

.view_table .td_head {
	width: 100px;
	padding: 15px;
	background-color: #f9f9f9;
	text-align: center;
}

.view_table .td_body {
	padding: 15px;
	text-align:left;
}

.buttons img {
	height: 22px;
	width: auto;
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
				<div id="header" style="width:800px;text-align:right">
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
							면접 / 입사후기
							<img src="Resources/img/question.png" title="설명을 작성해주세요." />
						</h1>
					</div>
					<div class="article" style="text-align:center">
						<div class="view_table">
							<table>
								<tr style="border-bottom: 1px solid #dddddd;">
									<td class="td_head">응시년도</td>
									<td class="td_body"><jsp:getProperty name="review" property="year" /></td>
								</tr>
								<tr style="border-bottom: 1px solid #dddddd;">
									<td class="td_head">기업</td>
									<td class="td_body"><jsp:getProperty name="review" property="enterprise" /></td>
								</tr>
								<tr style="border-bottom: 1px solid #dddddd;">
									<td class="td_head">스펙</td>
									<td class="td_body"><jsp:getProperty name="review" property="spec" /></td>
								</tr>
								<tr>
									<td class="td_head">후기</td>
									<td class="td_body" valign="top" style="height:400px"><jsp:getProperty name="review" property="content" /></td>
								</tr>
							</table>
						</div>
						<div class="buttons" style="height:22.28px;float:right;margin-bottom:80px">
							<img src="Resources/img/modify_button.png" onclick="move('modify')" style="cursor:pointer" />
							<img src="Resources/img/delete_button.png" onclick="move('delete')" style="cursor:pointer" />
							<a href="Review"><img src="Resources/img/list_button.png"/></a>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>
<% session.setAttribute("id", user.getSchoolID()); %>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
	function move(value) {
		var form = document.createElement("form");
        form.setAttribute("charset", "UTF-8");
        form.setAttribute("method", "Post");
        form.setAttribute("action", "Review");
        var hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "num");
        hiddenField.setAttribute("value", <%=review.getNum() %>);
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