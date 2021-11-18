<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="../resources/css/css.css" rel="stylesheet" type="text/css"/>
	<link href="../resources/css/나의카드.css" rel="stylesheet" type="text/css"/>
	<style>
		.m-unit-body4 li:hover > a, .m-unit-body4 li.mul4 > a {
    	font-weight: 700;
    	color: #0598e0;
}
	</style>
</head>
<body>
	<!-- 왼쪽 메뉴 영역 -->
	<div id="bbb_left">
		<div id="menu_wrapper">
		<div class="m-unit">
				<div class="m-unit-title">
					<button id="u_btn3">나의훈련</button>
				</div>
				<div class="m-unit-body3">
					<ul>
						<li class="mul1_selected">
							<span class="m-bullet"></span>
							<a href="now">현재수강중인훈련</a>
						</li>
						<li class="mul2">
							<span class="m-bullet"></span>
							<a href="bestr">수강신청이력</a>
						</li>
						<li class="mul3">
							<span class="m-bullet"></span>
							<a href="clear">훈련완료이력</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="m-unit">
				<div class="m-unit-title">
					<button id="u_btn1">회원정보관리</button>
				</div>
				<div class="m-unit-body1">
					<ul>
						<li class="mul1">
							<span class="m-bullet"></span>
							<a href="change">정보변경</a>
						</li>
						<li class="mul2">
							<span class="m-bullet"></span>
							<a href="pwd">비밀번호변경</a>
						</li>
						<li class="mul4">
							<span class="m-bullet"></span>
							<a href="remove">회원탈퇴</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="m-unit">
				<div class="m-unit-title">
					<button id="u_btn2">관심훈련</button>
				</div>
				<div class="m-unit-body2">
					<ul>
						<li class="mul1">
							<span class="m-bullet"></span>
							<a href="inter">관심훈련정보</a>
						</li>
						<li class="mul2">
							<span class="m-bullet"></span>
							<a href="search">최근조회한훈련</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="m-unit">
				<div class="m-unit-title">
					<button id="u_btn4">나의카드</button>
				</div>
				<div class="m-unit-body4">
					<ul>
						<li class="mul1">
							<span class="m-bullet"></span>
							<a href="issue">발급신청</a>
						</li>
						<li class="mul2">
							<span class="m-bullet"></span>
							<a href="card">카드신청내역</a>
						</li>
						<li class="mul3">
							<span class="m-bullet"></span>
							<a href="refund">자비부담금 환급신청</a>
						</li>
						<li class="mul4">
							<span class="m-bullet"></span>
							<a href="inquire">자비부담금 환급조회</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 왼쪽 메뉴 영역 끝-->
	
	<!-- 오른쪽 영역 -->
	<div id="bbb_right">
		<div id="benetype1">
			<div class="content">
				<h2 class="content-title">
					<span class="content-title-bar"></span>
					카드 발급 신청
				</h2>
				<div class="commentBox">
					<h3 class="content-ex">해당 메뉴 서비스를 이용하기 위해서는 간편인증 또는 공동인증서, 모바일(통신사) PASS 인증서로 로그인 하셔야 합니다. </h3>
				</div>
				<div class="btnGroup mt60 verPC">
				<button type="button" class="btnType1" id="anysignLink4">간편인증 로그인</button>
				<button type="button" id="anysignLink5" class="btnType1">공동인증서 로그인</button>
				<button type="button" id="anysignLink6" class="btnType1">공동인증서 등록</button>
				<button type="button" class="btnType1" id="anysignLink7">PASS 인증서 로그인</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 오른쪽 영역 끝 -->
	
	
	
	
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>	
<script>
	$(function() {
		$("#u_btn1").click(function() {
			$(".m-unit-body1").toggle();
		})
	})
	$(function() {
		$("#u_btn2").click(function() {
			$(".m-unit-body2").toggle();
		})
	})
	$(function() {
		$("#u_btn3").click(function() {
			$(".m-unit-body3").toggle();
		})
	})
	$(function() {
		$("#u_btn4").click(function() {
			$(".m-unit-body4").toggle();
		})
	})
</script>
</body>
</html>
