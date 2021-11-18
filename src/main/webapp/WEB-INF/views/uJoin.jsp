<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
		margin: 0 auto;
		padding: 0 auto;
	}	
    #join_panel{
    	margin: 0 auto;
    	width: 960px;
    	border: 1px solid red;
    }
    #join_form{
		margin-top: 190px;
		width: 100%;
    	height: 1800px;
		border: 1px solid black;
    }
    
    #join_text_box{
	    margin: 46px 503px 70px 200px;
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
		margin: 0 auto;
		width: 500px;
		left: 230px;
		top: 208px;
		border: 1px solid red;
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
	#text_area input[type="text"],
	#text_area input[type="password"],
	#text_area input[type="email"]{
		margin-bottom: 30px;
		width: 100%;
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
</style>
</head>
<body>
<%--헤더 --%>
		<jsp:include page="header.jsp"/>
		<%--헤더 --%>
			<div id="join_panel">
				<div id="join_form">
					<div id="join_text_box">
						<span>개인회원</span><br/><br/><br/>
						<span>국삐 서비스를 사용하기 위해 회원가입을 해주세요.</span>
					</div>
					<div id="text_area">
						<span class="info">개인정보</span>
						<form action="#"method="POST">
							<input type="text" name="id" id="id" placeholder="아이디를 입력해주세요." maxlength="20">
							<input type="password" name="pw" id="pw" placeholder="비밀번호를 입력해주세요." maxlength="20">
							<input type="password" name="rPw" id="rPw" placeholder="비밀번호 재확인" maxlength="20">
							<span class="infoTo">이름</span>
							<input type="text" name="name" id="name" placeholder="이름을 입력해주세요." maxlength="10">
							<span class="infoTo">이메일</span>
							<input type="email" name="email" id="email" placeholder="이메일을 입력해주세요." maxlength="40">
							<input type="button" name="email_chk" id="email_chk" value="인증코드 보내기" onclick="sends()"/>
							<input type="text" name="email_chkOk" id="email_chkOk" style="display: none;" placeholder="인증코드를 입력해주세요.">
							<span id="test"></span>
							<span class="infoTo">전화번호</span>
							<input type="number" name="phone" id="phone" placeholder="휴대폰번호를 입력해주세요." >
						</form>
						<form action="email" method="post" name="ff">
							
						</form>
						<span class="info">간단로그인</span>
						<div id="elogin_box">
							<a id="eL_a" href="/">
								<div id="k_login" class="el_login">
									<div id="k_login_img"></div>
									<span>카카오 로그인</span>
								</div>
								<div id="g_login" class="el_login">
									<div id="k_login_img"></div>
									<span>구글 로그인</span>
								</div>
							</a>
						</div>
						<span  class="info">간단인증</span>
						<div id="email_box"></div>
						<span  class="info">약관동의</span>
						<div id="consent_box"></div>
						<div id="btn_area">
							<input type="submit" id="join_btn" name="join_btn" value="회원가입">
						</div>
					</div>
				</div>
			</div>
		<%-- 푸터에용~ --%>
		<jsp:include page="footer.jsp"/>
		<%-- 푸터에용~ --%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	
	 $(function(){
		var mail = $("#email").val();
		 $("#email_chkOk").bind("input",function(){
		 var value = $("#email_chkOk").val();
				$.ajax({
					url:"check",
					data:{"value":value,"userMail":mail},
					type:"post",
					dataType:"json",
				}).done(function(data){
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
	
	function sends(){
		var mail = $("#email").val();
		$("#email_chkOk").slideDown(500);
		$.ajax({
			url:"email",
			data:{"userMail":mail},
			type:"post",
			dataType:"json",
		}).done(function(data){
			
		});
	}
	
	
</script>
</body>

</html>