<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>기업정보보기</title>
<link href="../resources/css/header.css" rel="stylesheet" type="text/css"/>
<link href="../resources/css/foot.css" rel="stylesheet" type="text/css"/>
<link rel="shortcut icon" href="../resources/ico/Frame.png">
<style>
	@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap');
	
	span,p{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
	}
	#wrap{
		margin: 0 auto 5em;
		padding: 0;
		width: 100%;
	 }
	#c_category{
		margin: 6.5em auto;
	   width: 60%;
	   height: 5em;
	   margin-bottom: 5em;
	   display: flex;
	}
	#c_category div{
		width: 100%;
		height: 70%; 
		line-height: 3.5em;
		text-align: center;
		border: 0.6 solid #eee;
		background-color: #fff7f7;
		cursor: pointer; 
		transition-property:background-color;
		transition-duration:0.2s;
	}
	#c_category div:hover{
		background-color: #fbe9e9;
	}
	#c_category div span{
		color: #565656;
		font-size: 1.1em;
		font-weight: 500; 
	}
	#content{
		margin: 0 auto;
		width: 50%;
		border: 0.6px solid #eee;
		padding: 1em; 
	}
	#con_name{
		margin: 0 auto;
		width: 90%;
	}
	#con_name span{
		font-weight: 600;
	    font-size: 1.6em;
	    color: #4e4e4e;
	}
	#c_info{
		margin: 2em auto 0;
		width: 70%;
	}
	#c_info div{
		height: 10%;
		border-bottom: 0.6px solid #eee; 
		margin-bottom: 1em;
		line-height: 3.3em;
	}
	#c_info div span:nth-child(1){
		color: #5e5e5e;
		margin-left: 1em;
		width: 30%;
	    display: inline-block;
	}
	#c_info div span:nth-child(2){
		color: #5e5e5e;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="wrap">
		<jsp:include page="c_category.jsp"/>
		<div id="content">
			<div id="con_name"><span>기업정보</span></div>
			<div id="c_info">
				<div id="c_name">
					<span>기업명</span>
					<span>${sessionScope.userName.name }</span>
				</div>
				<div id="c_addr">
					<span>기업주소</span>
					<span>${sessionScope.userName.addr }</span>
				</div>
				<div id="c_num">
					<span>사업자등록번호</span>
					<span>${sessionScope.userName.c_num }</span>
				</div>
				<div id="c_addr">
					<span>담당자이메일</span>
					<span>${sessionScope.userName.email }</span>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>	
<script>
</script>
</body>
</html>
