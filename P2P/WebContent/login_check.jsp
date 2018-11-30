<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>

<jsp:useBean id="login" class="myinfo.LoginBean" scope="request" />
<jsp:setProperty name="login" property="*" />
<jsp:useBean id="user" class="myinfo.UserBean" scope="session" />
<jsp:useBean id="score" class="myinfo.ScoreInfo" scope="session" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Check</title>
</head>
<body>
	<%
		if (login.checkUser()) { 
			ArrayList<String> userInfo = new ArrayList<>();
			ArrayList<String> buf = new ArrayList<>();
			buf = login.setKutis();
			for(int i = 0; i < 4; i++) {
				userInfo.add(buf.get(0));
				buf.remove(0);
			}
			user.setInfo(userInfo);
			score.setScore(buf);
			out.println("<script>location.href='main.jsp';</script>");
		}
		else { 
			//session.invalidate();
			out.println("<script>alert('로그인을 실패하였습니다.\\nKutis 아이디와 비밀번호를 확인해주세요.'); location.href='login.jsp';</script>");
		}
	%>
</body>
</html>