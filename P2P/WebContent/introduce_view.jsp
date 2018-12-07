<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="myinfo.UserBean" scope="session" />
<jsp:useBean id="intro" class="myinfo.IntroBean" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="Resources/img/p2p.ico">
<link href="Resources/css/bootstrap-iso.css" rel="stylesheet">
<link href="Resources/css/base.css" rel="stylesheet">
<link href="Resources/css/introduce_view.css" rel="stylesheet">
<title>자기소개서</title>
<%
	if(user.getName() == null)
		out.println("<script>alert('로그인하지 않았거나 세션이 만료되었습니다.\\n다시 로그인해주세요.'); location.href='login.jsp';</script>");
%>
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
							자기소개서
							<img src="Resources/img/question.png" title="자기소개서 작성이 가능한 페이지입니다." />
						</h1>
					</div>
					<div class="article" style="text-align:center">
						<div class="view_table">
							<table id="_table">
								<tr style="border-bottom: 1px solid #dddddd;">
									<td class="td_head">상태</td>
									<td class="td_body"><span id="state"></span></td>
								</tr>
								<tr style="border-bottom: 1px solid #dddddd;">
									<td class="td_head">작성일</td>
									<td class="td_body"><jsp:getProperty name="intro" property="day" /></td>
								</tr>
								<tr style="border-bottom: 1px solid #dddddd;">
									<td class="td_head">회사명</td>
									<td class="td_body"><jsp:getProperty name="intro" property="company" /></td>
								</tr>
								<tr style="border-bottom: 1px solid #dddddd;">
									<td class="td_head">직무</td>
									<td class="td_body"><jsp:getProperty name="intro" property="business" /></td>
								</tr>
								<tr style="border-bottom: 1px solid #dddddd;">
									<td class="td_head">형태</td>
									<td class="td_body"><jsp:getProperty name="intro" property="kind" /></td>
								</tr>
								<% 
									int q_num = 0; int a_num = 0; int max;
						
									if(intro.getQuestion_5().length() != 0) q_num = 5;
									else if(intro.getQuestion_4().length() != 0) q_num = 4;
									else if(intro.getQuestion_3().length() != 0) q_num = 3;
									else if(intro.getQuestion_2().length() != 0) q_num = 2;
									else if(intro.getQuestion_1().length() != 0) q_num = 1;
									
									if(intro.getAnswer_5().length() != 0) a_num = 5;
									else if(intro.getAnswer_4().length() != 0) a_num = 4;
									else if(intro.getAnswer_3().length() != 0) a_num = 3;
									else if(intro.getAnswer_2().length() != 0) a_num = 2;
									else if(intro.getAnswer_1().length() != 0) a_num = 1;
									if(q_num > a_num) max = q_num; else max = a_num;
								%>
								<tr class="_q1" style="border-bottom: 1px solid #dddddd;">
									<td class="td_head">질문 1</td>
									<td class="td_body">
										<div id="q1" style="line-height:1.3em"></div>
									</td>
								</tr>
								<tr class="_a1" style="border-bottom: 1px solid #dddddd;">
									<td class="td_head">답변 1</td>
									<td class="td_body" valign="top" style="height:200px">
										<div id="a1" style="line-height:1.3em"></div>
									</td>
								</tr>
							</table>
						</div>
						<div class="buttons" style="height:22.28px;float:right;margin-bottom:80px">
							<img src="Resources/img/modify_button.png" onclick="move('modify')" style="cursor:pointer" />
							<img src="Resources/img/delete_button.png" onclick="move('delete')" style="cursor:pointer" />
							<a href="Introduce"><img src="Resources/img/list_button.png"/></a>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>
<% session.setAttribute("id", user.getSchoolID()); %>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
	if(<%=intro.isState() %>)
		$('#state').html("작성완료");
	else
		$('#state').html("작성중");

	var ni;
	for(num = 2; num <= <%=max %>; num++) {
		ni = "<tr class='_q" + num;
		ni += "' style='border-bottom: 1px solid #dddddd;'>";
		ni += "<td class='td_head'>질문 " + num + "</td>";
		ni += "<td class='td_body'><div id='q" + num + "' style='line-height:1.3em'></div></td>";
		ni += "</tr>";
		ni += "<tr class='_a" + num;
		ni += "' style='border-bottom: 1px solid #dddddd;'>";
		ni += "<td class='td_head'>답변 " + num + "</td>";
		ni += "<td class='td_body' valign='top' style='height:200px'>";
		ni += "<div id='a" + num + "' style='line-height:1.3em'></div>";
		ni += "</td>";
		ni += "</tr>";
		$("#_table").append(ni);
	}
	
	$("#q1").html("<%=intro.getQuestion_1()%>");
	$("#a1").html("<%=intro.getAnswer_1()%>");
	$("#q2").html("<%=intro.getQuestion_2()%>");
	$("#a2").html("<%=intro.getAnswer_2()%>");
	$("#q3").html("<%=intro.getQuestion_3()%>");
	$("#a3").html("<%=intro.getAnswer_3()%>");
	$("#q4").html("<%=intro.getQuestion_4()%>");
	$("#a4").html("<%=intro.getAnswer_4()%>");
	$("#q5").html("<%=intro.getQuestion_5()%>");
	$("#a5").html("<%=intro.getAnswer_5()%>");
	
	function move(value) {
		var form = document.createElement("form");
        form.setAttribute("charset", "UTF-8");
        form.setAttribute("method", "Post");
        form.setAttribute("action", "Introduce");
        var hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "num");
        hiddenField.setAttribute("value", <%=intro.getNum() %>);
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