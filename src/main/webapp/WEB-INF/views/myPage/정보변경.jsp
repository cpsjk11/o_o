<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="../resources/css/css.css" rel="stylesheet" type="text/css"/>
	<link href="../resources/css/회원정보관리.css" rel="stylesheet" type="text/css"/>
	<style>
		.m-unit-body1 li:hover > a, .m-unit-body1 li.mul1 > a {
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
				<h2>회원정보변경</h2>
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
					<th>이름</th>
					<td></td>
				</tr>
				<tr>
					<th>
					 <span class="req"></span>
					 아이디
					</th>
					<td>
					  <p class="guide_txt">
					   6~12자리의 영문, 숫자(혼용가능)를 입력해 주세요.
					  </p>
					  <p>
					   <label for="s_id" class="hidden">아이디</label>
					   <input type="text" name="" id="s_id"
					    class="join"/>
					    <span class="b_bdcheck">
					    	<button type="button" id="ok_btn">중복확인</button>
					    </span>
					  </p>
					</td>
				</tr>
				<tr>
					<th>
					 <span></span>
					 휴대폰번호
					</th>
					<td>
					  <p class="guide_txt">
					  본인의 휴대폰번호를 입력해주세요.
					  </p>
					  <p>
					   <label for="s_phone" class="hidden">휴대폰번호</label>
					   <input type="text" name="" id="s_phone"
					    class="join"/>   -
					   <input type="text" name="" id="s_phone"
					    class="join"/>   -
					   <input type="text" name="" id="s_phone"
					    class="join"/>
					  </p>
					</td>
				</tr>
				<tr>
					<th>
					 <span></span>
					 전화번호
					</th>
					<td>
					  <p class="guide_txt">
					  본인의 전화번호를 입력해주세요.
					  </p>
					  <p>
					   <label for="s_call" class="hidden">휴대폰번호</label>
					   <select>
					   		<option value="선택">선택</option>
					   		<option value="선택">02</option>
					   		<option value="선택">032</option>
					   		<option value="선택">031</option>
					   		<option value="선택">041</option>
					   		<option value="선택">042</option>
					   		<option value="선택">043</option>
					   		<option value="선택">051</option>
					   		<option value="선택">052</option>
					   		<option value="선택">053</option>
					   		<option value="선택">055</option>
					   		<option value="선택">061</option>
					   		<option value="선택">062</option>
					   		<option value="선택">063</option>
					   		<option value="선택">064</option>
					   		<option value="선택">070</option>
					   </select>   -
					   <input type="text" name="" id="s_call"
					    class="join"/>   -
					   <input type="text" name="" id="s_call"
					    class="join"/>
					  </p>
					</td>
				</tr>
				<tr>
					<th>
					  <span class="req"></span>
					  비밀번호
					</th>
					<td>
					  <p class="guide_txt">
					   안전을 위해 10개 이상의 문자조합
					   영문 대소문자 + 숫자 또는 특수문자를 
					   입력해 주세요.
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
				<tr>
					<th>
					  <span class="req"></span>
					  이메일(e-mail)
					</th>
					<td>
					  <p>
					   <label for="e-mail" class="hidden"></label>
					   <input type="email" id="e-mail"
					    class="join"/>     @
					    <select>
					    	<option value="naver.com">naver.com</option>
					    	<option value="naver.com">hanmail.net</option>
					    	<option value="naver.com">gmail.com</option>
					    	<option value="naver.com">nate.com</option>
					    	<option value="naver.com">paran.com</option>
					    	<option value="naver.com">yahoo.com</option>
					    	<option value="naver.com">hotmail.com</option>
					    </select>			    
					  </p>
					</td>
				</tr>
			</tbody>
		</table>
		<div>
			<button type="button" class="btnType1" id="b_ok">확인</button>
			<button type="button" class="btnType1" id="b_cancle">취소</button>
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
