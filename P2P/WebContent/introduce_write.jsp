<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="myinfo.UserBean" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="Resources/img/p2p.ico">
<link href="Resources/css/bootstrap-iso.css" rel="stylesheet">
<link href="Resources/css/base.css" rel="stylesheet">
<link href="Resources/css/introduce_write.css" rel="stylesheet">
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
									<td class="td_body">
										<input type="radio" name="state" value="writing" checked="checked" /> 작성중&nbsp;&nbsp;&nbsp;
										<input type="radio" name="state" value="writed" /> 작성완료
									</td>
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
										<input type="radio" name="job_type" value="신입" checked="checked" /> 신입&nbsp;&nbsp;&nbsp;
										<input type="radio" name="job_type" value="경력" /> 경력&nbsp;&nbsp;&nbsp;
										<input type="radio" name="job_type" value="신입/경력" /> 신입/경력&nbsp;&nbsp;&nbsp;
										<input type="radio" name="job_type" value="인턴" /> 인턴&nbsp;&nbsp;&nbsp;
										<input type="radio" name="job_type" value="계약직" /> 계약직
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
							<input type="hidden" id="now_date" name="day" />
							<img src="Resources/img/check_button.png" onclick="move()" style="cursor:pointer" />
							<a href="Introduce"><img src="Resources/img/cancle_button.png"/></a>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>
<% session.setAttribute("id", user.getSchoolID()); %>
<script type="text/javascript" src="Resources/js/moment.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
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
	
	function move() {
		var form = document.createElement("form");
        form.setAttribute("charset", "UTF-8");
        form.setAttribute("method", "Post");
        form.setAttribute("action", "Introduce");
        var state = $(":input:radio[name=state]:checked").val();
        var enterprise = $('input[name=enterprise]').val();
        var job = $('input[name=job]').val();
        var job_type = $(":input:radio[name=job_type]:checked").val();
		
        var hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "action");
        hiddenField.setAttribute("value", "add");
        form.appendChild(hiddenField);
        
        var day = new Date();
        var formattedDate = moment(day).format('YYYYMMDD');
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "day");
        hiddenField.setAttribute("value", formattedDate);
        form.appendChild(hiddenField);
        
        var input = document.createElement('input');
		input.type = 'hidden';
		input.name = 'state';
		input.value = state;
		form.appendChild(input);
		
		input = document.createElement('input');
		input.type = 'hidden';
		input.name = 'enterprise';
		input.value = enterprise;
		form.appendChild(input);
		
		input = document.createElement('input');
		input.type = 'hidden';
		input.name = 'job';
		input.value = job;
		form.appendChild(input);
		
		input = document.createElement('input');
		input.type = 'hidden';
		input.name = 'job_type';
		input.value = job_type;
		form.appendChild(input);
		
		for(var i = 1; i < 6; i++) {
			input = document.createElement('input');
			input.type = 'hidden';
			input.name = 'q' + i;
			if(typeof $('input[name=q'+ i +']').val() != "undefined")
				input.value = $('input[name=q'+ i +']').val();
			form.appendChild(input);
			
			input = document.createElement('input');
			input.type = 'hidden';
			input.name = 'a' + i;
			if(typeof $('textarea[name=a'+ i +']').val() != "undefined")
				input.value = $('textarea[name=a'+ i +']').val();
			form.appendChild(input);
		}
		
        document.body.appendChild(form);
        form.submit();
	}
</script>
</body>
</html>