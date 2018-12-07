<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="myinfo.*"%>
<jsp:useBean id="language" class="myinfo.LanguageBean" scope="request"/>
<jsp:useBean id="Languagelist" class="java.util.ArrayList" scope="request" />
<jsp:useBean id="License" class="myinfo.LicenseBean" scope="request"/>
<jsp:useBean id="Licenselist" class="java.util.ArrayList" scope="request" />
<jsp:useBean id="Award" class="myinfo.AwardBean" scope="request"/>
<jsp:useBean id="Awardlist" class="java.util.ArrayList" scope="request" />
<jsp:useBean id="Career" class="myinfo.CareerBean" scope="request"/>
<jsp:useBean id="Careerlist" class="java.util.ArrayList" scope="request" />
<jsp:useBean id="Service" class="myinfo.ServiceBean" scope="request"/>
<jsp:useBean id="Servicelist" class="java.util.ArrayList" scope="request" />
<jsp:useBean id="Etc" class="myinfo.EtcBean" scope="request"/>
<jsp:useBean id="Etclist" class="java.util.ArrayList" scope="request" />
<jsp:useBean id="user" class="myinfo.UserBean" scope="session" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="Resources/img/p2p.ico">
<link href="Resources/css/base.css" rel="stylesheet">
<link href="Resources/css/information.css" rel="stylesheet">
<title>취업신상정보</title>
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
										<div class="popup_content">
											<div style="width: 108px">· 공인시험명</div>
											<div><input type="text" size="40" name="title" value="" style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 등급</div>
											<div><input type="text" size="40" name="rating" value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 점수</div>
											<div><input type="text" size="40" name="score" value="" style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 인증날짜</div>
											<div><input type="date" size="40" name="day" value="" style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px">
												<input type="image" name="checkbox" src="Resources/img/check_button.png" onclick="languagepage('languagewrite')"/></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close(1)"></div>
										</div>
								</div>
								<div id="mask" style="display: none"></div>
								<div id="popup7" style="display: none">
									<div style="padding-bottom: 15px"><h1>어학능력 수정</h1></div>
									<%--확인버튼때문에 폼처리--%>
										<div class="popup_content">
											<div style="width: 108px">· 공인시험명</div>
											<div><input type="text" size="40" name="Mtitle" value="" style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 등급</div>
											<div><input type="text" size="40" name="Mrating" value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 점수</div>
											<div><input type="text" size="40" name="Mscore" value="" style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 인증날짜</div>
											<div><input type="date" size="40" name="Mday" value="" style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px">
												<input name="Lnum" type="hidden" value="" />
												<input type="image" name="checkbox" src="Resources/img/check_button.png" onclick="Mlanguagepage('languagedmodify')"/></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close(7)"></div>
										</div>
								</div>
								<div class="table_title">
									<div class="pencil"><img src="Resources/img/pencil.png"></div>
									<div class="title_name"><h3>어학능력</h3></div>
									<div class="plus"><input name="openbox" type="button" onclick="popup_open(1,0)"></div>
								</div>
								<div class="table_content">
									<table>
											<thead style="background-color:#f9f9f9">
											<tr>
												<th style="font-size:8px;text-align: center;width:60px;height:8px">이름</th>
												<th style="font-size:8px;text-align: center;width:60px;height:8px">등급</th>
												<th style="font-size:8px;text-align: center;width:60px;height:8px">점수</th>
												<th style="font-size:8px;text-align: center;width:60px;height:8px">인증날짜</th>
												<th style="font-size:8px;text-align: center;width:60px;height:8px">수정</th>
											</tr>		 		
								 		</thead>
								 		<tbody>
										
											<%
								 				for(int i = 0; i < Languagelist.size(); i++) {
								 					LanguageBean lag = (LanguageBean)Languagelist.get(i);
												%>
													<tr>
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getTitle() %></td> 
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getRating() %></td> 
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getScore() %></td>  
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getDay() %>	</td>		
													 
													 <td>
													 <input name="editbox" type="button" style="padding-left:5px;" onclick="popup_open(7,<%=lag.getNum() %>)" /></td>	
													 </tr>	 
													<%
								 				} %>
								 
									</table>
								</div>
							</div>
							<div>
							<div class="license">
								<div id="mask" style="display: none"></div>
								<div id="popup2" style="display: none">
									<div style="padding-bottom: 15px"><h1>자격증 취득</h1></div>
										<%--확인버튼때문에 폼처리--%>
										<div class="popup_content">
											<div style="width: 108px">· 자격증명</div>
											<div><input type="text" size="40" name="Ltitle"  value="" style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 발급기관</div>
											<div><input type="text" size="40" name="Lcompany"  value="" style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 등급</div>
											<div><input type="text" size="40" name="Lrating"  value="" style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 날짜</div>
											<div><input type="date" name="Lday" value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px">
											<input type="image" name="checkbox" src="Resources/img/check_button.png" onclick="licensepage('licensewrite')"/></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close(2)"></div>
										</div>	
								</div>
								<div id="mask" style="display: none"></div>
								<div id="popup8" style="display: none">
									<div style="padding-bottom: 15px"><h1>자격증 취득 수정</h1></div>
										<%--확인버튼때문에 폼처리--%>
										<div class="popup_content">
											<div style="width: 108px">· 자격증명</div>
											<div><input type="text" size="40" name="LMtitle" value=""  style="width:150px;" /></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 발급기관</div>
											<div><input type="text" size="40" name="LMcompany" value=""  style="width:150px;" /></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 등급</div>
											<div><input type="text" size="40" name="LMrating" value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 날짜</div>
											<div><input type="date" name="LMday" value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px">
											<input name="Lnum" type="hidden" value="" />
											<input type="image" name="checkbox" src="Resources/img/check_button.png" onclick="Mlicensepage('licensemodify')"/></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close(8)"></div>
										</div>	
								</div>
								<div class="table_title">
									<div class="pencil"><img src="Resources/img/pencil.png"></div>
									<div class="title_name"><h3>자격증 취득</h3></div>
									<div class="plus"><input name="openbox" type="button" onclick="popup_open(2,0)"></div>
								</div>
								<div class="table_content">
								<table>
											<thead style="background-color:#f9f9f9">
											<tr>
												<th style="font-size:8px;text-align: center;width:60px;height:8px">이름</th>
												<th style="font-size:8px;text-align: center;width:60px;height:8px">기관</th>
												<th style="font-size:8px;text-align: center;width:60px;height:8px">등급</th>
												<th style="font-size:8px;text-align: center;width:60px;height:8px">날짜</th>
												<th style="font-size:8px;text-align: center;width:60px;height:8px">수정</th>
											</tr>		 		
								 		</thead>
								 		<tbody>

											<%
								 				for(int i = 0; i < Licenselist.size(); i++) {
								 					LicenseBean lag = (LicenseBean)Licenselist.get(i);
												%>
													<tr>
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getTitle() %></td> 
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getCompany() %></td> 
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getRating() %></td>  
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getDay() %>	</td>		
													 
													 <td>
													 <input name="editbox" type="button" style="padding-left:5px;" onclick="popup_open(8,<%= lag.getNum() %>)" /></td>	
													 </tr>	 
													<%
								 				} %>
									</table>
								
								</div>
							</div>
						<div>
							<div class="award">
								<div id="mask" style="display: none"></div>
								<div id="popup3" style="display: none">
									<div style="padding-bottom: 15px"><h1>수상실적</h1></div>
									<%--확인버튼때문에 폼처리--%>
										<div class="popup_content">
											<div style="width: 108px">· 수상명</div>
											<div><input type="text" size="40" name="Atitle"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 수여기관</div>
											<div><input type="text" size="40" name="Acompany"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 등급</div>
											<div><input type="text" size="40" name="Arating"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 수여일</div>
											<div><input type="date" name="Aday"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px">
											<input type="image" name="checkbox" src="Resources/img/check_button.png" onclick="Awardpage('Awardwirter')" /></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close(3)"></div>
										</div>
								</div>
								<div id="mask" style="display: none"></div>
								<div id="popup9" style="display: none">
									<div style="padding-bottom: 15px"><h1>수상실적 수정</h1></div>
									<%--확인버튼때문에 폼처리--%>
										<div class="popup_content">
											<div style="width: 108px">· 수상명</div>
											<div><input type="text" name="AMtitle"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 수여기관</div>
											<div><input type="text" size="40" name="AMcompany"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 등급</div>
											<div><input type="text" size="40"  name="AMrating"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 수여일</div>
											<div><input type="date"name="AMday"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px">
											<input name="Lnum" type="hidden" value="" />
											<input type="image" name="checkbox" src="Resources/img/check_button.png"  onclick="MAwardpage('Awardmodify')"/></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close(9)"></div>
										</div>
								</div>
								<div class="table_title">
									<div class="pencil"><img src="Resources/img/pencil.png"></div>
									<div class="title_name"><h3>수상실적</h3></div>
									<div class="plus"><input name="openbox" type="button" onclick="popup_open(3,0)"></div>
								</div>
								<div class="table_content">
								<table>
											<thead style="background-color:#f9f9f9">
											<tr>
												<th style="font-size:8px;text-align: center;width:60px;height:8px">이름</th>
												<th style="font-size:8px;text-align: center;width:60px;height:8px">기관</th>
												<th style="font-size:8px;text-align: center;width:60px;height:8px">등급</th>
												<th style="font-size:8px;text-align: center;width:60px;height:8px">날짜</th>
												<th style="font-size:8px;text-align: center;width:60px;height:8px">수정</th>
											</tr>		 		
								 		</thead>
								 		<tbody>

											<%
								 				for(int i = 0; i < Awardlist.size(); i++) {
								 					AwardBean lag = (AwardBean)Awardlist.get(i);
												%>
													<tr>
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getTitle() %></td> 
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getCompany() %></td> 
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getRating() %></td>  
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getDay() %>	</td>		
													 
													 <td>
													 <input name="editbox" type="button" style="padding-left:5px;" onclick="popup_open(9,<%= lag.getNum() %>)" /></td>	
													 </tr>	 
													<%
								 				} %>
									</table>
									</div>
							</div>
							<div>
							<div class="career">
								<div id="mask" style="display: none"></div>
								<div id="popup4" style="display: none">
									<div style="padding-bottom: 15px"><h1>재직 및 경력사항</h1></div>
										<div class="popup_content">
											<div style="width: 108px">· 구분</div>
											<div><input type="text" size="40"  name="Ckind"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 근무지</div>
											<div><input type="text" size="40"  name="Ccompany"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 담당업무</div>
											<div><input type="text" size="40"  name="Cbusiness"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 근무 시작일</div>
											<div><input type="date"  name="CstartD"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 근무 종료일</div>
											<div><input type="date" name="CendD"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px">
											<input type="image" name="checkbox" src="Resources/img/check_button.png" onclick="Careerpage('Careerwirter');" /></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close(4)"></div>
										</div>
								</div>
								<div id="mask" style="display: none"></div>
								<div id="popup10" style="display: none">
									<div style="padding-bottom: 15px"><h1>재직 및 경력사항 수정</h1></div>
										<%--확인버튼때문에 폼처리--%>
										<div class="popup_content">
											<div style="width: 108px">· 구분</div>
											<div><input type="text" size="40"  name="CMkind"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 근무지</div>
											<div><input type="text" size="40"  name="CMcompany"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 담당업무</div>
											<div><input type="text" size="40"  name="CMbusiness"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 근무 시작일</div>
											<div><input type="date" name="CMstartD"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 근무 종료일</div>
											<div><input type="date" name="CMendD"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px">
											<input name="Lnum" type="hidden" value="" />
											<input type="image" name="checkbox" src="Resources/img/check_button.png" onclick="MCareerpage('Careermodify')" /></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close(10)"></div>
										</div>
								</div>
								<div class="table_title">
									<div class="pencil"><img src="Resources/img/pencil.png"></div>
									<div class="title_name"><h3>재직 및 경력사항</h3></div>
									<div class="plus"><input name="openbox" type="button" onclick="popup_open(4,0)"></div>
								</div>
								<div class="table_content">
										<table>
											<thead style="background-color:#f9f9f9">
											<tr>
												<th style="font-size:8px;text-align: center;width:50px;height:8px">구분</th>
												<th style="font-size:8px;text-align: center;width:50px;height:8px">회사</th>
												<th style="font-size:8px;text-align: center;width:50px;height:8px">업무</th>
												<th style="font-size:8px;text-align: center;width:50px;height:8px">시작일</th>
												<th style="font-size:8px;text-align: center;width:50px;height:8px">종료일</th>
												<th style="font-size:8px;text-align: center;width:50px;height:8px">수정</th>
											</tr>		 		
								 		</thead>
								 		<tbody>

											<%
								 				for(int i = 0; i < Careerlist.size(); i++) {
								 					CareerBean lag = (CareerBean)Careerlist.get(i);
												%>
													<tr>
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getKind() %></td> 
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getCompany() %></td> 
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getBusiness() %></td>  
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getS_day() %>	</td>	
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getE_day() %>	</td>	
													 
													 <td>
													 <input name="editbox" type="button" style="padding-left:5px;" onclick="popup_open(10,<%= lag.getNum() %>)" /></td>	
													 </tr>	 
													<%
								 				} %>
									</table>
								</div>
						</div>
						<div>
							<div class="service">
								<div id="mask" style="display: none"></div>
								<div id="popup5" style="display: none">
									<div style="padding-bottom: 15px"><h1>봉사활동</h1></div>
										<div class="popup_content">
											<div style="width: 108px">· 활동명</div>
											<div><input type="text" size="40" name="Stitle"   value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 활동기관</div>
											<div><input type="text" size="40" name="Scompany"   value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 봉사구분</div>
											<div><input type="text" size="40" name="Skind"   value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 활동 시작일</div>
											<div><input type="date" name="Ssday"   value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 활동 종료일</div>
											<div><input type="date" name="Seday"   value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px">
											<input type="image" name="checkbox" src="Resources/img/check_button.png" onclick="Servicepage('Servicewrite')" /></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close(5)"></div>
										</div>
								</div>
																<div id="mask" style="display: none"></div>
								<div id="popup11" style="display: none">
									<div style="padding-bottom: 15px"><h1>봉사활동수정</h1></div>
										<div class="popup_content">
											<div style="width: 108px">· 활동명</div>
											<div><input type="text" size="40" name="SMtitle"   value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 활동기관</div>
											<div><input type="text" size="40" name="SMcompany"   value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 봉사구분</div>
											<div><input type="text" size="40" name="SMkind"   value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 활동 시작일</div>
											<div><input type="date" name="SMsday"   value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 활동 종료일</div>
											<div><input type="date" name="SMeday"   value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px">
											<input name="Lnum" type="hidden" value="" />
											<input type="image" name="checkbox" src="Resources/img/check_button.png" onclick="MServicepage('servicemodify')"/></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close(5)"></div>
										</div>
								</div>
								<div class="table_title">
									<div class="pencil"><img src="Resources/img/pencil.png"></div>
									<div class="title_name"><h3>봉사활동</h3></div>
									<div class="plus"><input name="openbox" type="button" onclick="popup_open(5,0)"></div>
								</div>
								<div class="table_content" style="margin-bottom:60px">	
								<table>
										<thead style="background-color:#f9f9f9">
											<tr>
												<th style="font-size:8px;text-align: center;width:50px;height:8px">활동</th>
												<th style="font-size:8px;text-align: center;width:50px;height:8px">기관</th>
												<th style="font-size:8px;text-align: center;width:50px;height:8px">구분</th>
												<th style="font-size:8px;text-align: center;width:50px;height:8px">시작일</th>
												<th style="font-size:8px;text-align: center;width:50px;height:8px">종료일</th>
												<th style="font-size:8px;text-align: center;width:50px;height:8px">수정</th>
											</tr>		 		
								 		</thead>
								 		<tbody>

											<%
								 				for(int i = 0; i < Servicelist.size(); i++) {
								 					 ServiceBean lag = ( ServiceBean) Servicelist.get(i);
												%>
													<tr>
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getTitle() %></td> 
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getCompany() %></td> 
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getKind() %></td>  
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getS_day() %>	</td>	
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getE_day() %>	</td>	
													 
													 <td>
													 <input name="editbox" type="button" style="padding-left:5px;" onclick="popup_open(11,<%= lag.getNum() %>)" /></td>	
													 </tr>	 
													<%
								 				} %>
									</table>
							</div>
							</div>
							<div class="etc">
								<div id="mask" style="display: none"></div>
								<div id="popup6" style="display: none">
									<div style="padding-bottom: 15px"><h1>기타</h1></div>
										<%--확인버튼때문에 폼처리--%>
										<div class="popup_content">
											<div style="width: 108px">· 활동명</div>
											<div><input type="text" size="40" name="Etitle"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 활동기관</div>
											<div><input type="text" size="40" name="Ecompany"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 활동 시작일</div>
											<div><input type="date" name="Esday"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 활동 종료일</div>
											<div><input type="date" name="Eeday"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px">
											<input type="image" name="checkbox" src="Resources/img/check_button.png" onclick="Etcpage('etcwriter')"/></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close(6)"></div>
										</div>
								</div>
								<div id="mask" style="display: none"></div>
								<div id="popup12" style="display: none">
									<div style="padding-bottom: 15px"><h1>기타 수정 페이지</h1></div>
										<%--확인버튼때문에 폼처리--%>
										<div class="popup_content">
											<div style="width: 108px">· 활동명</div>
											<div><input type="text" size="40" name="EMtitle"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 활동기관</div>
											<div><input type="text" size="40" name="EMcompany"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 활동 시작일</div>
											<div><input type="date" name="EMsday"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 108px">· 활동 종료일</div>
											<div><input type="date" name="EMeday"  value=""  style="width:150px;"/></div>
										</div>
										<div class="popup_content">
											<div style="width: 141px; padding: 15px 20px 0px 0px">
											<input name="Lnum" type="hidden" value="" />
											<input type="image" name="checkbox" src="Resources/img/check_button.png" onclick="MEtcpage('etcmodify')"/></div>
											<div style="padding: 15px 0px 0px 20px"><input name="closebox" type="button" onclick="popup_close(12)"></div>
										</div>
								</div>
								<div class="table_title">
									<div class="pencil"><img src="Resources/img/pencil.png"></div>
									<div class="title_name"><h3>기타</h3></div>
									<div class="plus"><input name="openbox" type="button" onclick="popup_open(6,0)"></div>
								</div>
								<div class="table_content">
								<table>
										<thead style="background-color:#f9f9f9">
											<tr>
												<th style="font-size:8px;text-align: center;width:50px;height:8px">활동</th>
												<th style="font-size:8px;text-align: center;width:50px;height:8px">기관</th>
												<th style="font-size:8px;text-align: center;width:50px;height:8px">시작일</th>
												<th style="font-size:8px;text-align: center;width:50px;height:8px">종료일</th>
												<th style="font-size:8px;text-align: center;width:50px;height:8px">수정</th>
											</tr>		 		
								 		</thead>
								 		<tbody>

											<%
								 				for(int i = 0; i < Etclist.size(); i++) {
								 					 EtcBean lag = (EtcBean) Etclist.get(i);
												%>
													<tr>
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getTitle() %></td> 
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getCompany() %></td>   
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getS_day() %>	</td>	
													 <td style="text-align:center;font-size:8px;width:60px;"><%=lag.getE_day() %>	</td>	
													 
													 <td>
													 <input name="editbox" type="button" style="padding-left:5px;" onclick="popup_open(12,<%= lag.getNum() %>)" /></td>	
													 </tr>	 
													<%
								 				} %>
									</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<% session.setAttribute("id", user.getSchoolID()); %>
<script type="text/javascript" src="Resources/js/information.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</body>
</html>