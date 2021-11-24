<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="../resources/css/css.css" rel="stylesheet" type="text/css"/>
	<link href="../resources/css/나의훈련.css" rel="stylesheet" type="text/css"/>
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
		<div class="tableArea03 ty3 myCardArea">
			<ul class="card-history">
				<li>
				<div class="commentBox">
					<h3 class="content-ex">수강신청이력</h3>
				</div>
					<div class="cardTgcrlistTr2" >
						<div class="divTableArea06 ty2 tablet" id="card">
							<ul class="divTable">
								<li>
									<strong class="tit">과정명</strong>
									<span class="txt" style="color:#4171df;">
									</span>
								</li>
								<li>
									<strong class="tit">과정코드</strong>
									<span class="txt"></span>
								</li>
								<li>
									<strong class="tit">회차</strong>
									<span class="txt"></span>
								</li>
								<li>
									<strong class="tit">훈련기간</strong>
									<span class="txt"></span>
								</li>
							</ul>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
<!-- 오른쪽 영역 끝 -->
<!-- 하단영역 -->
	<jsp:include page="footer.jsp"></jsp:include>
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
</script>
</body>
</html>
