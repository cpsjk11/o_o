<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="../resources/css/header.css" rel="stylesheet" type="text/css"/>
	<link href="../resources/css/css.css" rel="stylesheet" type="text/css"/>
	<link href="../resources/css/관심훈련.css" rel="stylesheet" type="text/css"/>
	<link rel="shortcut icon" href="../resources/ico/Frame.png">  
	<style>

		.m-unit-body3 li:hover > a, .m-unit-body3 li.mul2 > a {
    	font-weight: 700;
    	color: #0598e0;
}

	</style>
</head>
	<!-- 상단영역 -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 상단영역끝 -->
<body>
	<!-- 왼쪽 메뉴 영역 -->
	<jsp:include page="menubar.jsp"></jsp:include>
	<!-- 오른쪽 영역 -->
	<div id="bbb_right">
		<div class="tableArea03">
			<ul class="card-history">
				<li>
				<div class="commentBox">
					<h3 class="content-ex3">수강 신청 이력</h3>
				</div>
					<div class="cardTgcrlistTr2" >
					<c:forEach var="vo" items="${vo }">
						<div class="divTableArea06 ty2 tablet" id="card">
							<span>
							</span>
						
							<ul class="divTable">
								<li>
									<strong class="tit">과정명</strong>
									<a href="javaScript:click('http://localhost:9090/view?TRPR_ID=${vo.e_trid}&TRPR_DEGR=${vo.e_trdegr}&u_id=${sessionScope.userName.id}&imageCode=${vo.imageCode }')" onclick="sendre" id="getClick" class="txt" style="color:#4171df;">${vo.e_company }</a>
								</li>
								<li>
									<strong class="tit">과정코드</strong>
									<span class="txt">${vo.e_trid }
									</span>
								</li>
								<li>
									<strong class="tit">과정설명</strong>
									<span class="txt">${vo.e_trname }</span>
								</li>
								<li>
									<strong class="tit">담당자 e-mail</strong>
									<span class="txt">${vo.e_email }</span>
								</li>
							</ul>
						
						</div>
						</c:forEach>
					<jsp:include page="footer.jsp"/>
					</div>
					</li>
					</ul>
					</div>
					</div>
<!-- 오른쪽 영역 끝 -->
<!-- 하단영역 -->
	<!-- 하단영역끝 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>	
<script>

$(function() {
	$("#u_btn1").click(function() {
		$('.m-unit-body1').toggle(); 
	})
})
$(function() {
	$("#u_btn2").click(function() {
		$('.m-unit-body2').toggle(); 
	})
})
$(function() {
	$("#u_btn3").click(function() {
		$('.m-unit-body3').toggle(); 
	})
})
$(function() {
	$("#u_btn4").click(function() {
		$('.m-unit-body4').toggle(); 
	})
})

function click(as){
	location.href = ""+as+"";
}
</script>
</body>
</html>
