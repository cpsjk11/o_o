<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<header>
			<div id="header">
				<div id="title">
					<a href="/">국삐</a>	
				</div>
				<div id="right_m">
					<c:if test="${sessionScope.userName eq null }">
						<a href="ex" id="login">로그인</a>
						<a href="join">회원가입</a>
					</c:if>
					<c:if test="${sessionScope.userName ne null }">
						<a onclick="javascript:void(0)">${sessionScope.userName.name}님</a>
						<a href="join">로그아웃</a>
						<a href="myPage/mypage">마이페이지</a>
					</c:if>
				</div>
				<div id="left_m">
					<a href="login">훈련과정</a>
					<a href="join">지원제도</a>
					<a href="myPage">고객센터</a>
				</div> 
			</div>
		</header>