<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>신청현황</title>
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
		width: 70%;
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
	#api_user{
	    margin: 2em auto 0;
	    width: 80%;
	    height: 1.5em;
	    border-bottom: 0.6px solid #eee;
	    display: flex;
   		justify-content: space-around;
	}
	#api_user div{
		font-weight: 400;
	    font-size: 0.9em; 
	}
	#con_name button{
	    width: 15%; 
	    height: 2em;
	    border: 1px solid #818181;
	    background-color: #fff8f8;
	    margin-left: 2em;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="wrap">
		<jsp:include page="c_category.jsp"/>
		<div id="content">
			<div id="con_name">
				<span>신청인원현황</span>
				<button onclick="javascript:poiExcel('3')">신청현황엑셀다운</button>
			</div>
			<form action="poiExcel" id="ExcelForm" name="ExcelForm">
			<c:forEach var="vo" items="${evo}" varStatus="st">
				<div id="api_user">
					<div id="user_name">${vo.e_uname }</div>
					<div id="user_name">${vo.e_ugen }</div>
					<div id="user_name">${vo.e_uphone }</div>
					<div id="user_name">${vo.e_trid }</div>
					<div id="user_name">${vo.e_trname }</div>
				</div>
			</c:forEach>
			<input type="hidden" name="Excel" id="resultType" value="" /> 
			<input type="hidden" name="companyName" value="${sessionScope.userName.c_name }">
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>	
<script>
function poiExcel(num) {
	
	if(num == 1)
		$("#resultType").val(num);
	if(num == 3)
		$("#resultType").val(num);
	
	var formObj = $('#ExcelForm');
	formObj.attr('action', '/mypage/poiExcel');
	formObj.attr('method', 'post');
	formObj.submit();
	
}
</script>
</body>
</html>
