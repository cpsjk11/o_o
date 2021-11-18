<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="resources/css/css.css" rel="stylesheet" type="text/css"/>
	<link href="resources/css/회원정보관리.css" rel="stylesheet" type="text/css"/>
	<style>
		.m-unit-body1 li:hover > a, .m-unit-body1 li.mul2 > a {
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
		<!-- 오른쪽 메뉴 -->
<div id="bbb_right">
			<div class="m_id">
				<h2>비밀번호변경</h2>
			</div>
			<div>
			<span class="fr-guide_txt">
			  <span class="req"></span>
				표시 필수입력사항
			</span>
			</div>
		<br/>
		<table class="table_type01" 
		style="width: 900px">
			<colgroup>
				<col width="130px">
				<col width="*">
			</colgroup>
			<tbody>
				<tr>
					<th>아이디</th>
					<td></td>
				</tr>
				<tr>
					<th>
					 <span class="req"></span>
					 현재 비밀번호
					</th>
					<td>
					  <p class="guide_txt">
					  </p>
					  <p>
					   <label for="s_pw" class="hidden">비밀번호</label>
					   <input type="password" name="" id="s_pw"
					    class="join"/>
					  </p>
					</td>
				</tr>
				<tr>
					<th>
					 <span class="req"></span>
					 새로운 비밀번호
					</th>
					<td>
					  <p class="guide_txt">
					   안전을 위해 10개 이상의 문자조합
					   영문 대소문자 + 숫자 또는 특수문자를 
					   입력해 주세요.
					  </p>
					  <p>
					   <label for="new_pw" class="hidden">새로운 비밀번호</label>
					   <input type="password" name="" id="new_pw"
					    class="join"/>
					  </p>
					</td>
				</tr>
				<tr>
					<th>
					  <span class="req"></span>
					  비밀번호 확인
					</th>
					<td>
					  <p class="guide_txt">
					   입력하신 비밀번호 확인을 위해 
					   다시한번 입력해 주세요.
					  </p>
					  <p>
					   <label for="s_pw2" class="hidden">비밀번호확인</label>
					   <input type="password" name="" id="s_pw2"
					    class="join"/>					    
					  </p>
					</td>
				</tr>
			</tbody>
		</table>
		<div>
			<button type="button" class="btnType1" id="b_ok">비밀번호변경</button>
			
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
