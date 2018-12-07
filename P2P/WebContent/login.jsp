<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="Resources/img/p2p.ico">
<link href="Resources/css/login.css" rel="stylesheet">
<title>P2P</title>
</head>
<body bgcolor="#e0e3da">
	<div id="center" align=center>
		<div style="line-height:300%">
		<img src="Resources/img/logo.png" />
		<br>
			<img src="Resources/img/line.png" />
			<br>
			<form method="post" action="login_check.jsp">
				<table style="width:540px">
					<tr>
						<td>
							<div style="line-height:250%">
								<input type="text" name="userid" size=40 placeholder="ID" />
								<br>
								<input type="password" name="passwd" size=40 placeholder="Password" />
							</div>
						</td>
						<td>
							<input type="submit" name="Submit" value="" />
						</td>
					</tr>
				</table>
			</form>
			<img src="Resources/img/line.png" />
		<br>
		<font color="#566270" style="font-size:10pt">© Kyonggi University, P2P</font>
		</div>
		<p><br></p>
	</div>
</body>
</html>