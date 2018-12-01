<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<jsp:useBean id="score" class="myinfo.ScoreInfo" scope="session" />


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Goal Check</title>
</head>
<body>
	<%
		double goal = Double.parseDouble(request.getParameter("input_goal"));
		if(goal >= 0.0 && goal <= 4.5) { 
			score.setGoal(goal);
			out.println("<script>location.href='average.jsp';</script>");
		}
		else {
			out.println("<script>alert('잘못된 목표입니다.');</script>");
		}
	%>
</body>
</html>