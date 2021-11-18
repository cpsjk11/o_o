<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		margin: 0 auto;
	}
	#svg{
		width: 600px;
		height: 500px;
		display: inline-block;
		background: url("resources/img/21.svg") no-repeat;
		position: absolute;
		top: 300px;
		right: 400px;
		z-index: -1;
	}
	
	#main{
		margin: 200px 0;
		margin-left : 450px;
		width: 600px;
		height: 602px;
		display: inline-block;
		z-index: 3;
	}
	#head{
		width: 100%;
		height: 77px;
		font-weight: bold;
		font-size: 60px;
		color: #3A2F2F;
		display: inline-block;
		margin-bottom: 50px;
	}
	#head_1{
		display: inline-block;
		font-size: 24px;
		color: #3A2F2F;
		margin-bottom: 30px;
	}
	#head_2{
		font-size: 15px;
		color: #969696;
		display: inline-block;
		margin-bottom: 40px;
	}
	#id,#pw{
		width: 290px;
		height: 35px;
		border-radius: 15px;
		font-weight:bold;
		padding: 5px 10px;
		margin-bottom: 25px;
		border: 1px solid #2f2f2f;
	}
	#check{
		display: inline-block;
		width: 310px;
		font-size: 14px;
		color: #3A2F2F;
	}
	.button{
		width: 140px;
		height: 60px;
		border-radius: 15px;
		text-align: center;
		line-height: 60px;
	}
	#img{
		display: inline-block;
		width: 128px;
		height: 19px;
		float: right;
		margin-bottom: 40px;
	}
	#img img{
		width: 100%;
		height: 100%;
	}
	#member{
		background-color: #FF0000;
		float: left;
	}
	#logins{
		background-color: #3BB873;
		float: right;
	}
	#s{
		width: 310px;
	}
	.text{
		width: 100%;
		height: 100%;
		text-align: center;
		color: #FFF;
		text-decoration: none;
	}
</style>
</head>
<body>
<jsp:include page="header.jsp"/>
<div id="main">
	<div id="header">
		<span id="head">반가워요!</span>
		<span id="head_1">국삐서비스를 사용하기 위해  로그인을 해주세요!</span><br/>
		<span id="head_2">국비지원 학원을 연결해주는 사이트 입니다!!</span>
	</div>
	<div id="center">
		<input id="id" name="id" placeholder="아이디를 입력해주세요"  oninput="handleOnInput(this)"/><br/>
		<input type="password" id="pw" name="pw" placeholder="비밀번호를 입력해주세요"/><br/>
		<div id="check">
			<label for="save">
				<input type="checkbox" id="save" name="save"/> 
			아이디 저장하기
			</label>
			<a href="https://kauth.kakao.com/oauth/authorize?client_id=0c76b8606442452175ac2545632942ae&redirect_uri=http://localhost:9090/test/login&response_type=code">
				<div id="img">
					<img src="resources/img/kakao.png"/>
				</div>
			</a>
		</div><br/>
		<div id="s">
			<a href="/" class="text">
				<div id="member" class="button">
				회원가입
				</div>
			</a>
			<a href="/" class="text">
				<div id="logins" class="button" onclick="login()">		
					로그인
				</div>
			</a>
		</div>		
	</div>
	
</div>
<div id="svg">
</div>
<jsp:include page="footer.jsp"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</body>
<script>
	function handleOnInput(e)  {
	  e.value = e.value.replace(/[^A-Za-z0-9]/ig , '');
	}

	function login(){
		// 로그인 기능!! 아이디와 비밀번호 유효성 검사 후 로그인을 하자
		var id = $("#id").val();
		var pw = $("#pw").val();
		
		if(id.trim().length < 1){
			alert("아이디를 입력해주세요");
			$("#id").val("");
			$("#id").focus();
			return;
		}
		if(pw.trim().length < 1){
			alert("아이디를 입력해주세요");
			$("#pw").val("");
			$("#pw").focus();
			return;
		}
		
		// 비동기식 통신 시작
		$.ajax({
			url:"login",
			data:{"id":id,"pw":pw},
			type:"post",
			dataType:"json"
		}).done(function(data){
			if(data.value == 1){
				alert(${sessionScope.userName.name}+"환영합니다")
				location.href="/";
			}
				if(data.value == 2){
				alert(data.fail);
				$("#id").val(id);
				$("#pw").val("");
				
			}
		}).fail(function(err){
			alert("문제발생!!!");
		});
	}
</script>
</html>