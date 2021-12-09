<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

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
							<c:if test="${sessionScope.userName.id ne null}">
							<a href="change?id=${sessionScope.userName.id}">정보변경</a>
							</c:if>
						</li>
						<li class="mul2">
							<span class="m-bullet"></span>
							<c:if test="${sessionScope.userName.id ne null}">
							<a href="pwd?id=${sessionScope.userName.id }">비밀번호변경</a>
							</c:if>
						</li>
						<li class="mul4">
							<span class="m-bullet"></span>
							<c:if test="${sessionScope.userName.id ne null}">
							<a href="remove?id=${sessionScope.userName.id }">회원탈퇴</a>
							</c:if>
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

</body>
</html>