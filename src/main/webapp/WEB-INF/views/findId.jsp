<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="resources/ico/Frame.png">
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/footer.css">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700' rel='stylesheet' type='text/css'>
<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap');
	span, p, pre, input{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
	}
	body{
		width : 530px;
		padding: 0 3px;
		height: 550px;
	}	
    #join_panel{
    	margin: 0 auto;
    	width: 500px;
    }
    #join_form{
		width: 100%;
    }
    
    #join_text_box{
	    margin: 46px 203px 0 0;
    }
    #join_text_box span{
    	color: #3A2F2F;
    }
    #join_text_box span:nth-child(1) {
		font-weight: bold;
		font-size: 40px;
	}
    #join_text_box span:nth-last-child(1) {
		font-weight: 500;
		font-size: 20px;
	}
	#text_area{
		width: 520px;
		left: 550px;	
		display: inline-block;
	}
	#text_area .info{
		font-size: 22px;
		font-weight: 600;
		color: #3A2F2F;
		margin-bottom: 21px;
	}
	#text_area form{
		margin-top: 30px;
	}
	
	#text_area input[type="password"],
	#text_area input[type="text"]{
		width: 100%;
		margin-bottom: 30px;
		height: 45px;
		border: 0.7px solid #ccc;
		border-radius: 10px;
		font-size: 15px;
	}
	#text_area input[type="number"]{
		margin-bottom: 30px;
		width: 100%;
		height: 45px;
		border: 0.7px solid #ccc;
		border-radius: 10px;
		font-size: 15px;
	}
	#email_box{
		width: 100%;
		height: 100px;
		border: 1px solid red;
	}
	#consent_box{
		width: 100%;
		height: 100px;
		border: 1px solid red;
	}
	input[type="submit"]{
		margin: 0 auto;
		margin-top: 59px;
		width: 30%;
		height: 60px;
		background: #3BB873;
		box-shadow: 1px 2px 15px rgba(0, 0, 0, 0.25);
		border: 0.5px solid #efefef;
		border-radius: 15px;
		font-size: 17px;
		font-weight: 600;
		color: white;
	}
	input[type="button"]{
		display: inline-block;
		width: 100%;
		height: 45px;
		border: 0.7px solid #ccc;
		border-radius: 10px;
		font-size: 15px;
			
	}
	#btn_area{
		margin: 0 auto;
		width: 100%;
		text-align: center;
	}
	input[type="submit"]:hover {
		background: #34AA69;
		box-shadow: 1px 2px 15px rgba(0, 0, 0, 0.25);
	}
	#elogin_box{
		width: 100%;
	}
	#eL_a{
		margin-top: 15px;
		display: flex;
		justify-content: space-around;
		line-height: 50px;
		height: 100%;
		text-align: center;
	}
	.el_login{
		border: 0.7px solid #efefef;
		border-radius: 10px;
		/* vertical-align: middle; */
		width:43%;
		height: 100%;
		box-shadow: 1px 2px 3px rgba(0, 0, 0, 0.25);
	}
	#eL_a span{
		font-weight: bold;
		font-size: 14px;
		line-height: 16px;
	}
	.infoTo{
		font-size: 19px;
		font-weight: 500;
		color: #3A2F2F;
		line-height: 2;
	}
	#email{
		display: inline-block;
	}
	#phone{
		width: 50%;
	}
	#mail{
		  background-position: 5px center;
		  padding-right: 40px;
		  width: 100%;
		  box-sizing: border-box;
		  outline: none;
		  border-radius: 3px;
		  background-position: 430px;
		  
		  
	}
	
	#imgbox{
		width : 42px;
		height : 42px;
		z-index: 10;
		display: inline-block;
		position: absolute;
		left: 498px;	
		padding-top: 2px;
		cursor: pointer;
	}
	#mail{
		width: 520px;
		height: 45px;
		border: 0.7px solid #ccc;
		border-radius: 10px;
		font-size: 15px;
		justify-content: space-around;
		float: left;
		z-index: -1;
		margin-bottom: 30px;
		
	}
	
</style>
</head>
<body>
<%--헤더 --%>
		<%--헤더 --%>
			<div id="join_panel">
				<div id="join_form">
					<div id="join_text_box">
						<span>아이디 찾기</span><br/><br/><br/>
					</div>
					<div id="text_area">
						<form action="userAdd"method="POST">
							<span class="infoTo">이름</span>
							<input type="text" name="id" id="id" placeholder="이름을 입력해주세요." maxlength="20"  oninput="handleOnInput(this)">
							<span class="infoTo">이메일</span></span><span id="email_checkBox"></span>
							<div id="se">
								<input type="email" name="name" id="mail" placeholder="이메일을 입력해주세요."/>
							</div>
							<div id="imgbox">
								<img src="/resources/img/mail1.png" id="img" onclick="sendEmail()"/>
							</div><br/>
							<span class="infoTo">인증번호</span><span id="test"></span></span><span id="chkCertified"></span>
							<input type="text" name="email" id="email" placeholder="인증코드를 입력해주세요." maxlength="40">
							<input type="button" name="email_chk" id="find" value="확인" onclick="check()"/>
							<input type="hidden" id="chkEMAIL1"/>
						</form>
					</div>
					
				</div>
			</div>
		<%-- 푸터에용~ --%>
		<%-- 푸터에용~ --%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	var hi = "%*$&#&@*@^#@$%@#)!@#&*!@^$";
	$(function(){
		
		$("#mail").bind("input",function(){
			// 입력한 이메일 존재여부 확인
			var email = $("#mail").val(); 
			if(email.trim().length > 1){
				$.ajax({
					url:"checkEmail",
					data:"email="+encodeURIComponent(email),
					type:"post",
					dataType:"json",
				}).done(function(data){
					if(data.overlap == 1){
						$("#email_checkBox").html("이메일이 존재하지 않습니다.").css("color","#12b886");
						$("#chkEMAIL1").val("1");
					}
					else{
						$("#email_checkBox").html("");
						$("#chkEMAIL1").val("");
					}
				}).fail(function(err){
					
				});
		
			}else if(email.trim().length < 1){
				$("#email_checkBox").html("");
			}
		});
		
			// 사용자가 인증번호의 값이 바뀔때 마다 서버와 통신하여 인증코드가 올바른지 아닌지를 구분한다.
			$("#email").bind("input",function(){
			 // 메일 인증번호 확인 기능
		 	var value = $("#email").val();
				$.ajax({
					url:"check",
					data:{"value":value},
					type:"post",
					dataType:"json",
				}).done(function(data){
					if(data.result == 0){
						// 인증을 먼저 실행하지 않았을때
						alert("이메일 인증을 먼저 해주세요");
						$("#email").val("");
						return;
					}
					
					if(data.result == 1){
						// 인증 성공했을때.
						$("#test").text("");
						$("#test").text("인증성공");
					}
					else if(data.result == 2){
						$("#test").text("");
						$("#test").text("인증실패");
					}
				}).fail(function(err){
					
				});
			});
		
	});
	
	function sendEmail(){
		var mail = $("#mail").val();
		if(mail.trim().length < 1){
			alert("메일을 입력해주세요");
			$("#mail").val("");
			$("#mail").focus();
			return;
		}
		// 이메일 버튼을 클릭했을때 이메일을 전달해줘야한다.
		$.ajax({
			url:"email",
			data:{"userMail":mail},
			type:"post",
			dataType:"json"
		}).done(function(data){
			if(data.value == 2){
				alert("메일이 존재하지 않습니다");
			}
			if(data.value == 1){
				alert("인증코드를 메일로 보냈습니다");
				hi = data.as;
			}
		}).fail(function(err){alert("서버 오류입니다. 관리자한테 문의해주세요")});
	}
	
	function check(){
		var mail = $("#mail").val();
		if(mail.trim().length < 1){
			alert("메일을 입력해주세요");
			$("#mail").val("");
			$("#mail").focus();
			return;
		}
		if($("#chkCertified").val() == 1){
			alert("인증번호를 확인해주세요");
			return;
		}
		// 이메일 버튼을 클릭했을때 이메일을 전달해줘야한다.
		$.ajax({
			url:"findID",
			data:{"mail":mail},
			type:"post",
			dataType:"json"
		}).done(function(data){
			if(data.value == 1){
				alert("아이디를 이메일로 전송하였습니다");
			}
		}).fail(function(err){alert("서버 오류입니다. 관리자한테 문의해주세요")});
	}

</script>
</body>

</html>