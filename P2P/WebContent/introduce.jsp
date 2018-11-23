<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="Resources/css/bootstrap-iso.css" rel="stylesheet">
<link href="Resources/css/base.css" rel="stylesheet">
<title>Main</title>
<style>
#page_number a{
	font-size: 10pt;
	color: #566270;
	text-decoration: none;
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
						<a href="http://www.kyonggi.ac.kr/KyonggiUp.kgu" target="_blank">·&nbsp;&nbsp;경기대학교</a>&nbsp;&nbsp;&nbsp;<img src="img/link_m.png" /><br>
						<a href="http://kutis.kyonggi.ac.kr/webkutis/" target="_blank">·&nbsp;&nbsp;KUTIS</a>&nbsp;&nbsp;&nbsp;<img src="img/link_m.png" /><br>
						<a href="http://cs.kyonggi.ac.kr" target="_blank">·&nbsp;&nbsp;컴퓨터과학과</a>&nbsp;&nbsp;&nbsp;<img src="img/link_m.png" />
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
							자기소개서
							<img src="Resources/img/question.png" title="설명을 작성해주세요." />
						</h1>
					</div>
					<div class="article" style="text-align:center">
						<div class="bootstrap-iso">
							<table class="table table-striped" style="text-align:center;border:1px;solid: #dddddd;margin-bottom:10px;font-size:10pt">
			 					<thead style="background-color:#f9f9f9">
									<tr>
										<th style="text-align: center">상태</th>
										<th style="text-align: center">회사명</th>
										<th style="text-align: center">직무</th>
										<th style="text-align: center">형태</th>
										<th style="text-align: center">작성일</th>
									</tr>		 		
						 		</thead>
						 		<tbody>
						 			<%--
						 			<%
						 				BbsDAO bbsDAO = new BbsDAO();
						 				ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
						 				for(int i=0; i < list.size(); i++){
						 			%>
						 			 --%>
						 			<%
						 				for(int i = 0; i < 15; i++) {
						 			%>
						 			<tr style="background-color:#ffffff">
						 				<td>test</td>
						 				<td>test</td>
						 				<td>test</td>
						 				<td>test</td>
						 				<td>test</td>
						 				<%--
						 				<td><%= list.get(i).getBbsID() %></td>
						 				<td><a href="view.jsp?bbsID=<%= list.get(i).getBbsID() %>"><%= list.get(i).getBbsTitle() %></a></td>
						 				<td><%= list.get(i).getUserID() %></td>
						 				<td><%=list.get(i).getBbsDate().substring(0,11) + list.get(i).getBbsDate().substring(11, 13) + "시" + list.get(i).getBbsDate().substring(14, 16) +  "분" %></td>
						 				 --%>
						 			</tr>
						 			<%		
						 				}
						 			%>
						 		</tbody>
						 	</table>
						</div>
						<div id="write_button" style="height:22.28px;margin-bottom:20px">
							<img src="Resources/img/write_button.png" style="width:60px;height:auto;float:right"/>
						</div>
						<div id="page_number" style="margin-bottom:30px">
							<%
								int count = 250;
								int pageSize = 15;
								String pageNum = request.getParameter("page");
								if(pageNum == null) {
									pageNum = "1";
								}
								int currentPage = Integer.parseInt(pageNum);
								int startRow = (currentPage - 1) * pageSize + 1;
								int endRow = currentPage * pageSize;
								if(count > 0) {
									int pageCount = count / pageSize + (count % pageSize == 0?0:1);
									int pageBlock = 10;
									int startPage = ((int)(currentPage / pageBlock) - (currentPage % pageBlock == 0?1:0)) * pageBlock + 1;
									int endPage = startPage + pageBlock - 1;
									if(endPage > pageCount) {
										endPage = pageCount;
									}
									if(startPage > pageBlock) {
										%><a href="review.jsp?page=<%=startPage - pageBlock%>">◀ 이전&nbsp;&nbsp;</a><%
									}
									for(int i = startPage; i<= endPage; i++) {
										if(i == currentPage) {
											%>&nbsp;<a href="review.jsp?page=<%=i%>" style="color:#9686cc;text-decoration:underline"><%=i%></a>&nbsp;<%
										}
										else {
											%>&nbsp;<a href="review.jsp?page=<%=i%>"><%=i%></a>&nbsp;<%
										}
									}
									if(endPage < pageCount) {
										%><a href="review.jsp?page=<%=startPage + pageBlock%>">&nbsp;&nbsp;다음 ▶</a><%		
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
							<input name="searchInput">
							<img src="Resources/img/search_button.png" style="height:22px;width:auto;vertical-align:middle"/>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>