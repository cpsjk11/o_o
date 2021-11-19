<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
							<span class="infoTo">이메일</span>
							<div id="se">
								<input type="email" name="name" id="mail" placeholder="이메일을 입력해주세요."/>
							</div>
							<div id="imgbox">
								<img src="/resources/img/mail1.png" id="img" onclick="sendEmail()"/>
							</div><br/>
							<span class="infoTo">인증번호</span>
							<input type="text" name="email" id="email" placeholder="인증코드를 입력해주세요." maxlength="40">
							<input type="button" name="email_chk" id="find" value="인증확인" onclick="check()"/>
						</form>
					</div>
					
				</div>
			</div>
		<%-- 푸터에용~ --%>
		<%-- 푸터에용~ --%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

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
			url:"findID",
			data:{"mail":mail},
			type:"post",
			dataType:"json"
		}).done(function(data){
			if(data.value == 2){
				alert("등록된 메일이 아닙니다.");
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