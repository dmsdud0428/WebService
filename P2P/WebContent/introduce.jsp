<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="myinfo.IntroBean" %>
<jsp:useBean id="user" class="myinfo.UserBean" scope="session" />
<jsp:useBean id="introlist" class="java.util.ArrayList" scope="request" />
<jsp:useBean id="in" class="myinfo.IntroBean" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="Resources/img/p2p.ico">
<link href="Resources/css/bootstrap-iso.css" rel="stylesheet">
<link href="Resources/css/base.css" rel="stylesheet">
<title>자기소개서</title>
<%
	if(user.getName() == null)
		out.println("<script>alert('로그인하지 않았거나 세션이 만료되었습니다.\\n다시 로그인해주세요.'); location.href='login.jsp';</script>");
%>
<style>
#page_number a{
	font-size: 10pt;
	color: #566270;
	text-decoration: none;
}

#_tr {
	background-color: #ffffff;
}

#_tr:hover {
	background-color: rgba(150,134,204,0.5);
	cursor: pointer;
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
							자기소개서
							<img src="Resources/img/question.png" title="설명을 작성해주세요." />
						</h1>
					</div>
					<div class="article" style="text-align:center">
						<div class="bootstrap-iso">
							<table class="table table-striped" style="text-align:center;border:1px;solid: #dddddd;margin-bottom:10px;font-size:10pt">
			 					<thead style="background-color:#f9f9f9">
									<tr>
										<th style="text-align: center;width:100px">상태</th>
										<th style="text-align: center">회사명</th>
										<th style="text-align: center;width:180px">직무</th>
										<th style="text-align: center;width:100px">형태</th>
										<th style="text-align: center;width:150px">작성일</th>
									</tr>		 		
						 		</thead>
						 		<tbody>
						 			<%
						 				for(int i = 0; i < introlist.size(); i++) {
						 					IntroBean intro = (IntroBean)introlist.get(i);
									%>
						 			<tr id="_tr" onClick="move2('view', '<%=intro.getNum() %>')">
						 				<td>
						 				<%
						 					if(intro.isState()) { %>
						 						작성완료
						 				<%	} else { %>
						 						작성중
						 				<%	}
						 				%>
						 				</td>
						 				<td><%=intro.getCompany() %></td>
						 				<td><%=intro.getBusiness() %></td>
						 				<td><%=intro.getKind() %></td>
						 				<td><%=intro.getDay() %></td>
						 			</tr>
						 			<%		
						 				}
						 			%>
						 		</tbody>
						 	</table>
						</div>
						<div id="write_button" style="height:22.28px;margin-bottom:20px">
							<img src="Resources/img/write_button.png" onclick="move1('write')" style="cursor:pointer;width:60px;height:auto;float:right"/>
						</div>
						<div id="page_number" style="margin-bottom:30px">
							<%
								int count = in.getCount();
								int pageSize = 15;
								String pageNum = request.getParameter("page");
								if(pageNum == null) {
									pageNum = "1";
								}
								int currentPage = Integer.parseInt(pageNum);
								
								if(count > 0) {
									int pageCount = count / pageSize + (count % pageSize == 0?0:1);
									int pageBlock = 10;
									int startPage = ((int)(currentPage / pageBlock) - (currentPage % pageBlock == 0?1:0)) * pageBlock + 1;
									int endPage = startPage + pageBlock - 1;
									if(endPage > pageCount) {
										endPage = pageCount;
									}
									if(startPage > pageBlock) {
										%><a onclick="move4(<%=startPage - pageBlock%>)" style="cursor:pointer">◀ 이전&nbsp;&nbsp;</a><%
									}
									for(int i = startPage; i<= endPage; i++) {
										if(i == currentPage) {
											%>&nbsp;<span style="color:#9686cc;text-decoration:underline"><%=i%></span>&nbsp;<%
										}
										else {
											%>&nbsp;<a onclick="move4(<%=i%>)" style="cursor:pointer"><%=i%></a>&nbsp;<%
										}
									}
									if(endPage < pageCount) {
										%><a onclick="move4(<%=startPage + pageBlock%>)" style="cursor:pointer">&nbsp;&nbsp;다음 ▶</a><%		
									}
								}
							%>
						</div>
						<div id="search_box" style="margin-bottom:80px">
							<select name="searchBy" style="height:22px">
								<option value="0">상태</option>
								<option value="1">회사명</option>
								<option value="2">직무</option>
								<option value="3">형태</option>
							</select>
							<input name="searchInput" />
							<img src="Resources/img/search_button.png" onclick="move3()" style="cursor:pointer;height:22px;width:auto;vertical-align:middle"/>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
	$("select[name=searchBy]").val("<%=in.getOption()%>");
	$("input[name=searchInput]").val("<%=in.getSearch()%>");

	function move1(value) {
		var form = document.createElement("form");
		form.setAttribute("charset", "UTF-8");
		form.setAttribute("method", "Post");
		form.setAttribute("action", "Introduce");
		var hiddenField = document.createElement("input");
		hiddenField.setAttribute("type", "hidden");
		hiddenField.setAttribute("name", "action");
		hiddenField.setAttribute("value", value);
		form.appendChild(hiddenField);
		document.body.appendChild(form);
		form.submit();
	}
	function move2(value, num) {
		var form = document.createElement("form");
		form.setAttribute("charset", "UTF-8");
		form.setAttribute("method", "Post");
		form.setAttribute("action", "Introduce");
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
	function move3() {
		var form = document.createElement("form");
		form.setAttribute("charset", "UTF-8");
		form.setAttribute("method", "Post");
		form.setAttribute("action", "Introduce");
		var hiddenField = document.createElement("input");
		hiddenField.setAttribute("type", "hidden");
		hiddenField.setAttribute("name", "action");
		hiddenField.setAttribute("value", "list");
		form.appendChild(hiddenField);
		
		var input = document.createElement('input');
		input.type = 'hidden';
		input.name = 'searchBy';
		input.value = $("select[name=searchBy]").val();
		form.appendChild(input);
		input = document.createElement('input');
		input.type = 'hidden';
		input.name = 'searchInput';
		input.value = $("input[name=searchInput]").val();
		form.appendChild(input);
		
		document.body.appendChild(form);
		form.submit();
	}
	function move4(page) {
		var form = document.createElement("form");
		form.setAttribute("charset", "UTF-8");
		form.setAttribute("method", "Post");
		form.setAttribute("action", "Introduce");
		var hiddenField = document.createElement("input");
		hiddenField.setAttribute("type", "hidden");
		hiddenField.setAttribute("name", "action");
		hiddenField.setAttribute("value", "list");
		form.appendChild(hiddenField);
		
		var input = document.createElement('input');
		input.type = 'hidden';
		input.name = 'page';
		input.value = page;
		form.appendChild(input);
		input = document.createElement('input');
		input.type = 'hidden';
		input.name = 'searchBy';
		input.value = $("select[name=searchBy]").val();
		form.appendChild(input);
		input = document.createElement('input');
		input.type = 'hidden';
		input.name = 'searchInput';
		input.value = $("input[name=searchInput]").val();
		form.appendChild(input);
		
		document.body.appendChild(form);
		form.submit();
	}
</script>
</body>
</html>