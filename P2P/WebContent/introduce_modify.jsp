<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="Resources/img/p2p.ico">
<link href="Resources/css/bootstrap-iso.css" rel="stylesheet">
<link href="Resources/css/base.css" rel="stylesheet">
<title>자기소개서</title>
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
	padding: 5px;
	text-align:left;
}

.view_table input[type=text] {
	width: 645px;
}

.view_table textarea {
	width: 645px;
	height: 190px;
	resize: none;
}

.buttons img {
	height: 22px;
	width: auto;
}

#plus {
	width: 15px;
	height: auto;
}

#plus:hover {
	cursor: pointer;
}

.counter {
	color: #aaa;
	float: right;
	margin: 5px 0px 5px 0px;
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
						<div class="view_table">
							<table id="_table">
								<tr style="border-bottom: 1px solid #dddddd;">
									<td class="td_head">상태</td>
									<td class="td_body">
										<input type="radio" name="state" value="writing" checked="checked" /> 작성중&nbsp;&nbsp;&nbsp;
										<input type="radio" name="state" value="writed" /> 작성완료
									</td>
								</tr>
								<tr style="border-bottom: 1px solid #dddddd;">
									<td class="td_head">작성일</td>
									<td class="td_body"><input type="date" id="now_date"/></td>
								</tr>
								<tr style="border-bottom: 1px solid #dddddd;">
									<td class="td_head">회사명</td>
									<td class="td_body"><input type="text" name="enterprise" /></td>
								</tr>
								<tr style="border-bottom: 1px solid #dddddd;">
									<td class="td_head">직무</td>
									<td class="td_body"><input type="text" name="job" /></td>
								</tr>
								<tr style="border-bottom: 1px solid #dddddd;">
									<td class="td_head">형태</td>
									<td class="td_body">
										<input type="checkbox" name="job_type" value="신입" /> 신입&nbsp;&nbsp;&nbsp;
										<input type="checkbox" name="job_type" value="경력" /> 경력&nbsp;&nbsp;&nbsp;
										<input type="checkbox" name="job_type" value="인턴" /> 인턴&nbsp;&nbsp;&nbsp;
										<input type="checkbox" name="job_type" value="계약직" /> 계약직
									</td>
								</tr>
								<tr class="_q1" style="border-bottom: 1px solid #dddddd;">
									<td class="td_head">질문 1</td>
									<td class="td_body"><input type="text" name="q1" /></td>
								</tr>
								<tr class="_a1" style="border-bottom: 1px solid #dddddd;">
									<td class="td_head">답변 1</td>
									<td class="td_body" valign="top" style="height:200px">
										<textarea name="a1" id="answer1"></textarea>
										<span class="counter" id="cnt1">(0 / 1000)</span>
									</td>
								</tr>
								<tr>
									<td class="td_head"><img src="Resources/img/plus.png" id="plus" /></td>
									<td class="td_body"></td>
								</tr>
							</table>
						</div>
						<div class="buttons" style="height:22.28px;float:right;margin-bottom:80px">
							<img src="Resources/img/modify_button.png"/>
							<a href="introduce.jsp"><img src="Resources/img/cancle_button.png"/></a>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
	document.getElementById('now_date').valueAsDate = new Date();

	$(document).on('click', '#plus', function() {
		var table_len = $("#_table").find("tr").length;
		var last_a = table_len - 2;
		var lastItemNo = $("#_table tr").eq(last_a).attr("class").replace("_a", "");
            
		var plus_button = $("#_table tr:last").clone();
		plus_button.removeClass();
		$("#_table tr:last").remove();
            
		var num = parseInt(lastItemNo) + 1;
		var newitem = "<tr class='_q" + num;
		newitem += "' style='border-bottom: 1px solid #dddddd;'>";
		newitem += "<td class='td_head'>질문 " + num + "</td>";
		newitem += "<td class='td_body'><input type='text' name='q" + num + "' /></td>";
		newitem += "</tr>";
		newitem += "<tr class='_a" + num;
		newitem += "' style='border-bottom: 1px solid #dddddd;'>";
		newitem += "<td class='td_head'>답변 " + num + "</td>";
		newitem += "<td class='td_body' valign='top' style='height:200px'>";
		newitem += "<textarea name='a" + num + "' id='answer" + num + "'></textarea>";
		newitem += "<span class='counter' id='cnt" + num + "'>(0 / 1000)</span>";
		newitem += "</td>";
		newitem += "</tr>";
        $("#_table").append(newitem);
		            
        table_len = $("#_table").find("tr").length;
		if(table_len == 15) {
			return 0;
		}
		else {
			$("#_table").append(plus_button);
		}
	});
	
	$(document).on("keyup","#answer1",function(e) {
	    var content1 = $(this).val();
	    $('#cnt1').html("("+content1.length+" / 1000)");    //글자수 실시간 카운팅

	    if (content1.length > 1000){
	        alert("최대 1000자까지 입력 가능합니다.");
	        $(this).val(content1.substring(0, 1000));
	        $('#cnt1').html("(1000 / 1000자)");
	    }
	});
	
	$(document).on("keyup","#answer2",function(e) {
	    var content2 = $(this).val();
	    $('#cnt2').html("("+content2.length+" / 1000)");    //글자수 실시간 카운팅

	    if (content2.length > 1000){
	        alert("최대 1000자까지 입력 가능합니다.");
	        $(this).val(content2.substring(0, 1000));
	        $('#cnt2').html("(1000 / 1000자)");
	    }
	});
	
	$(document).on("keyup","#answer3",function(e) {
	    var content3 = $(this).val();
	    $('#cnt3').html("("+content3.length+" / 1000)");    //글자수 실시간 카운팅

	    if (content3.length > 1000){
	        alert("최대 1000자까지 입력 가능합니다.");
	        $(this).val(content3.substring(0, 1000));
	        $('#cnt3').html("(1000 / 1000자)");
	    }
	});
	
	$(document).on("keyup","#answer4",function(e) {
	    var content4 = $(this).val();
	    $('#cnt4').html("("+content4.length+" / 1000)");    //글자수 실시간 카운팅

	    if (content4.length > 1000){
	        alert("최대 1000자까지 입력 가능합니다.");
	        $(this).val(content4.substring(0, 1000));
	        $('#cnt4').html("(1000 / 1000자)");
	    }
	});
	
	$(document).on("keyup","#answer5",function(e) {
	    var content5 = $(this).val();
	    $('#cnt5').html("("+content5.length+" / 1000)");    //글자수 실시간 카운팅

	    if (content5.length > 1000){
	        alert("최대 1000자까지 입력 가능합니다.");
	        $(this).val(content5.substring(0, 1000));
	        $('#cnt5').html("(1000 / 1000자)");
	    }
	});
</script>
</body>
</html>