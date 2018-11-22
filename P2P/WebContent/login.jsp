<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
#center {
	position:absolute;
	top:0;right:0;bottom:0;left:0;
	display:-webkit-box;
	display:-moz-box;
	display:-ms-flexbox;
	display:-webkit-flex;
	display:flex;
	
	align-items:center;
	justify-content:center;
	-webkit-align-items:center;
	-webkit-justify-content:center;
	
	-webkit-box-pack:center;
	-webkit-box-align:center;
	-moz-box-pack:center;
	-moz-box-align:center;
	-ms-box-pack:center;
	-ms-box-align:center;
}
</style>
</head>
<body bgcolor="#e0e3da">
	<div id="center" align=center>
		<div style="line-height:300%">
		<img src="img/logo.png" />
		<br>
			<img src="img/line.png" />
			<br>
			<table width="540px">
				<tr>
					<td>
						<div style="line-height:250%">
							<input name=id size=40 placeholder="ID" style="border:none; width:380px; height:31px; background:transparent; background-image: url('img/id_box.png'); padding:0px 0px 0px 10px" />
							<br>
							<input name=pw size=40 placeholder="Password" style="border:none; width:380px; height:31px; background:transparent; background-image: url('img/id_box.png'); padding:0px 0px 0px 10px" />
						</div>
					</td>
					<td>
						<img src="img/login_button.png" style="vertical-align:middle" />
					</td>
				</tr>
			</table>
			<img src="img/line.png" />
		<br>
		<font color="#566270" style="font-size:10pt">© Kyonggi University, P2P</font>
		</div>
		<p><br></p>
	</div>
</body>
</html>