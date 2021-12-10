<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<style>
	div#wrap {
		position: absolute;
		left: 50%;
		margin-left: -600px;
	}
	div#header {
		width: 1200px;
		height: 100px;
		margin-left: 600px;
	}
	div#body {
		width: 1200px;
		height: 450px;
		margin-left: 150px;
	}
	div#footer {
		width: 1200px;
		height: 100px;
		margin-left: 600px;
	}
	.hidden {
		display: none;
	}
</style>
</head>
<body>
<div id="wrap">
	<div id="header">
		<h2>수강신청</h2>
	</div>
	
	<div id="body" name="body">
		<div id="body_div1">
			<h3>신청정보</h3>
			<span>성명, 생년월일, 전화번호, 이메일, 주소는 수강신청을 위한 필수 입력 정보입니다.</span><br/>
			<span>※해당 정보는 통계 및 수강신청의 목적으로 활용되며 훈련기관을 제외한 외부에 제공되지 않습니다.</span>
		</div>
		<div id="body_div2">
			<h3>신청절차</h3>
			<ol>
				<li>온라인 수강신청</li>
				<li>수강신청접수</li>
				<li>신청내용검토</li>
				<li>최종합격훈련생등록</li>
			</ol>
		</div>
		<div id="body_div3">
			<h3>유의사항</h3>
			<ul type = "circle" style="margin-bottom: 30px;">
				<li>1년에 5회를 초과하여 수강할 수 없습니다.</li>
				<li>동일한 NCS직종의 훈련과정에 대해 1년에 3회를 초과하여 수강 신청할 수 없습니다.</li>
				<li>동일한 훈련과정의 재수강은 허용되지 않습니다.</li>
			</ul>
			<input type="checkbox" id="check" name="check"/>
			<span>위의 사항을 모두 확인하였습니다.</span>
		</div>
		
		<div id="info" class="hidden">
			<form action="register" name="info_form" method="post">
				<h3>신청정보 확인</h3>
				<input type="hidden" id="u_id" name="u_id" value="${uvo.id}"/>
				<input type="hidden" id="TRPR_ID" name="TRPR_ID" value="${TRPR_ID}"/>
				<input type="hidden" id="company" name="company" value="${company}"/>
				<input type="hidden" id="TRPR_NM" name="TRPR_NM" value="${TRPR_NM}"/>
				<input type="hidden" id="mail" name="email" value="${email}"/>
				<label>이름</label><input id="name" name="u_name"readonly="readonly" value="${uvo.name}"/><br/>
				<label>생년월일</label><input id="birht" name="u_birth" value="${uvo.birth}"/><br/>
				<label>전화번호</label><input id="phone" name="u_phone" value="${uvo.phone}"/><br/>
				<label>이메일</label><input id="email" name="u_email" value="${uvo.email}"/><br/>
				<label>주소</label><input id="addr" name="u_addr" value="${uvo.addr}"/><br/><br/>
				<input type="button" id="ok_btn" value="확인" onclick="ok1()"/>
				<input type="button" id="cancel_btn" value="취소" onclick="cancel1()"/>
				
			</form>
		</div>
	</div>
	
	<div id="footer">
		<input type="button" id="register_btn" value="수강신청" onclick="register()"/>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script>
function register() {
	if($("#check").prop("checked")) {
		window.open("registers?u_id=${uvo.id}&TRPR_ID=${TRPR_ID}&u_name=${uvo.name}&u_birth=${uvo.birth}&u_phone=${uvo.phone}&u_email=${uvo.email}&u_addr=${uvo.addr}&company=${company}&TRPR_NM=${TRPR_NM}&email=${email}"
					,"수강신청","width=780px,height=650px;,resizable=no");
	}else {
			alert("위 내용을 확인하고 체크해주시기 바랍니다.")
	}
}
function cancel1() {
	$("#info").dialog("close");
	$("#info").css("display", "none");
}
function ok1() {
		if(confirm("정보를 정확히 확인하셨습니까?")) {
			$("#info").dialog("close");
			$("#info").css("display", "none");
			alert("수강신청이 완료되었습니다.");
			document.info_form.submit();
		}
}
</script>
</body>
</html>