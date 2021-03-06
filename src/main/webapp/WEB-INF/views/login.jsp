<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- css링크구역!! --%>
<link rel="shortcut icon" href="resources/ico/Frame.png">
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/home.css">
<link rel="stylesheet" href="resources/css/foot.css">

<style>
	@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap');
	span, p, pre, input{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
	}
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
		height : 30px;
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
		width: 100%;
		box-shadow: 1px 2px 3px rgba(0, 0, 0, 0.25);
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
	.el_login{
		border: 0.7px solid #efefef;
		border-radius: 10px;
		/* vertical-align: middle; */
		width:43%;
		height: 100%;
		box-shadow: 1px 2px 3px rgba(0, 0, 0, 0.25);
	}
	
	#k_login{
		width: 150px;
		height: 30px;
	}
	#text_area{
		width: 317px;
		height: 75px;
	}
	#text_area .el_login{
		display: inline-block;
		width: 155px;
		height: 50px;
		border: 0.7px solid #efefef;
		
	}
	#eL_a {
    margin-top: 15px;
   /*  display: flex;
    justify-content: space-around;
    line-height: 50px; */
    height: 100%;
    text-align: center;
	}
	a {
	    text-decoration: none;
	    color: #3A2F2F;
	}
	user agent stylesheet
	a:-webkit-any-link {
	    color: -webkit-link;
	    cursor: pointer;
	}
	#search_id,
	#search_pw{
		cursor: pointer;
	}
	el_a a{
		display: inline-block;
	}
	#test{
		width: 350px;
		height: 70px;
	}
	#test a .lo_type{
		justify-content: space-between;
		text-align: center;
		width: 100px;
		height: 47px;
		display: inline-block;
		border: 1px solid;
		font-size: 14px;
		font-weight: 600;
		color: black;
		box-shadow: 1px 2px 3px rgba(0, 0, 0, 0.25);
		border-radius: 10px;
		border: none;
	}
	#test a .lo_type span{
		line-height: 47px;
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
		<input type="password" id="pw" name="pw" placeholder="비밀번호를 입력해주세요" onkeydown="enter()"/><br/>
		<div id="check">
			<label for="save">
				<input type="checkbox" id="save" name="save"/> 
			아이디 저장하기
			</label>
			<a href="https://kauth.kakao.com/oauth/authorize?client_id=0c76b8606442452175ac2545632942ae&redirect_uri=http://localhost:9090/test/login&response_type=code">
				<div id="img">
					<a onclick="idSearch()" id="search_id">ID찾기/</a>
					<a onclick="pwSearch()" id="search_pw">PW찾기</a>
				</div>
			</a>
		</div><br/>
		<!-- <div id="text_area">
			<div id="eL_a" href="/ex">
			<a href="/" class="text">
				<div id="k_login" class="el_login">
					<div id="k_login_img"></div>
					<span>카카오 로그인</span>
				</div>
			</a>
			<a href="/" class="text">
				<div id="g_login" class="el_login">
					<div id="k_login_img"></div>
					<span>구글 로그인</span>
				</div>
			</a>
			<a href="/" class="text">
				<div id="Member" class="el_login">
					<div id="k_login_img"></div>
					<span>회원가입</span>
				</div>
			</a>
			</div>
		</div> -->
		<div id="test">
			<a href="/join">
				<div class="lo_type">
					<span>회원가입</span>
				</div>
			</a>
			<a href="https://kauth.kakao.com/oauth/authorize?client_id=0c76b8606442452175ac2545632942ae&redirect_uri=http://localhost:9090/test/login&response_type=code">
				<div class="lo_type">
					<span>카카오로그인</span>
				</div>
			</a>
			<a href="naverLogin.inc">
				<div class="lo_type">
					<span>네이버로그인</span>
				</div>
			</a>
		</div>
	
		<div id="s">
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
	function enter(){
		if (window.event.keyCode == 13) {
			login();
	    }
	}
	function handleOnInput(e)  {
	  e.value = e.value.replace(/[^A-Za-z0-9]/ig , '');
	}
	
	function idSearch(){
		window.open('/findId', '아이디 찾기','width=560px,height=650px;,resizable=no');
	}
	
	function pwSearch(){
		window.open('/findPw', '비밀번호 찾기','width=560px,height=650px;,resizable=no');
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
				alert(data.name+"님 환영합니다!! ")
				location.href="/";
			}
				if(data.value == 2){
				alert("아아디 혹은 비밀번호가 틀렸습니다.");
				$("#id").val(id);
				$("#pw").val("");
				
			}
		}).fail(function(err){
			alert("문제발생!!!");
			location.href="/";
		});
	}
</script>
</html>