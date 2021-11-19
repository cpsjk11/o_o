<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
		<header>
		<style type="text/css">
	@font-face {
	    font-family: 'Cafe24Ssurround';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24Ssurround.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	a{
	text-decoration: none;
	color: #3A2F2F;
	}
	header{
		position: fixed;
		width: 100%;
		height: 100px;
		left: 0;
		right: 0;
		background-color: #FFF5FF;
		border-bottom: 0.5px solid #efefef;
		z-index: 1;
	}
	#title{
		position: absolute;
		width: 54px;
		height: 33px;
		left: 253px;
		top: 30px;
		font-family: 'Cafe24Ssurround';
		font-style: normal;
		font-weight: bold;
		font-size: 28px;
		line-height: 33px;
		
		/* identical to box height */
	}
	#title a{
		text-decoration: none;
		color: #3A2F2F;
	}
	#right_m{
		position: absolute;
		display: flex;
		flex-direction: row;
		justify-content: space-between;
		height: 23px;
		left: 1388px;
		top: 48px;
	}
	#right_m a{
		flex-basis: auto;
		color: #3A2F2F;
		font-weight: bold;
		font-size: 16px;
		text-decoration: none;
		margin-right: 20px;
	}
	#left_m{
		position: absolute;
		display: flex;
		flex-direction: row;
		justify-content: space-between;
		width: 327px;	
		height: 26px;
		left: 386px;
		top: 59px;
	}
	#left_m a{
		flex-basis: auto;
		color: #3A2F2F;
		font-weight: bold;
		font-size: 20px;
		text-decoration: none;
		margin-right: 20px;
	}
	#right_m a:hover,
	#left_m a:hover {color: #47AAD7;}
	
</style>
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
						<a href="login" id="login">${sessionScope.userName.name}님</a>
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