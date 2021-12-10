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
		margin: 0 auto;
		padding: 0;
		width: 100%;
	 }
	#c_category{
		margin: 6.5em auto;
	   width: 60%;
	   height: 5em;
	   margin-bottom: 0em;
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
		height: 40em;
		border: 1px solid blue;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="wrap">
		<div id="c_category">
			<div><span>기업정보</span></div>
			<div><span>정보변경</span></div>
			<div><span>수강신청인원</span></div>
			<div><span>제휴문의</span></div>
		</div>
		<div id="content">
			<div id="con_name">기업정보</div>
			<div id="c_name">
				<span>기업이름</span>
			</div>
			<div id="c_addr">
				<span>기업주소</span>
			</div>
			<div id="c_num">
				<span>사업자등록번호</span>
			</div>
			<div id="c_addr">
				<span>담당자이메일</span>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>	
<script>
</script>
</body>
</html>
