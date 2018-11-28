<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean id="login" class="myinfo.LoginBean" scope="request" />
<jsp:setProperty name="login" property="*" />
<jsp:useBean id="info" class="myinfo.InfoBean" scope="session" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Check</title>
</head>
<body>
	<%
		if (login.checkUser()) { 
			info.setInfo(login.setKutis());
			out.println("<script>location.href='main.jsp';</script>");
		}
		else { 
			//session.invalidate();
			out.println("<script>alert('로그인을 실패하였습니다.\\nKutis 아이디와 비밀번호를 확인해주세요.'); location.href='login.jsp';</script>");
		}
	%>
</body>
</html>