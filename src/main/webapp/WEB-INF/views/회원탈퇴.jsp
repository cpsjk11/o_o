<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="resources/css/css.css" rel="stylesheet" type="text/css"/>
	<link href="resources/css/회원탈퇴.css" rel="stylesheet" type="text/css"/>
	<style>
		.m-unit-body1 li:hover > a, .m-unit-body1 li.mul4 > a {
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
					회원 탈퇴
				</h2>
				<div class="commentBox">
					<h1 class="content-ex">주의! </h1>
				</div>
				<div class="s_dot"></div>
				<div class="m_list">
					<ul>
						<li class="list1">회원 탈퇴를 하시게 되면 추후 동일한 아이디로는 재가입이 불가능합니다.</li>
						<li class="list2">직업훈련 관련 이력은 '회원탈퇴'를 하셔도 삭제되지 않습니다.</li>
						<li class="list3">회원 탈퇴를 하시게 되면 30일이내 가입이 불가능합니다.</li>
						<li class="list4">이용하는데 불편함이 있으셧다면 문의사항이나 고객센터로 문의 주시면 성심껏 답변 드리겠습니다.</li>
					</ul>
				</div>
				<div class="btnGroup mt60 verPC">
				<button type="button" class="btnType1" id="anysignLink4">회원탈퇴</button>
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
