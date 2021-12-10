<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <link rel="shortcut icon" href="resources/ico/Frame.png">
		<header>
			<div id="header_area">
				<div id="title">
					<a href="/">국삐</a>	
				</div>
				<div id="left_m">
					<a href="goSearch">훈련과정</a>
					<a href="look">지원제도</a>
					<a href="/helpSc?bname=자주묻는질문&status=0">국삐게시판</a>
				</div> 
				<div id="right_m">
					<c:if test="${sessionScope.userName eq null }">
						<a href="ex" id="login">로그인</a>
						<a href="join">회원가입</a>
					</c:if>
					<c:if test="${sessionScope.userName ne null }">
						<a onclick="javascript:void(0)">${sessionScope.userName.name}님</a>
						
						<c:if test="${sessionScope.rank eq '2' }">
							<a href="https://kauth.kakao.com/oauth/logout?client_id=0c76b8606442452175ac2545632942ae&logout_redirect_uri=http://localhost:9090/test/logout">로그아웃</a>
						</c:if>
						<c:if test="${sessionScope.rank eq '1' }">
							<a href="logout">로그아웃</a>
						</c:if>
						<c:if test="${sessionScope.rank eq '3' }">
							<a href="naverlogout">로그아웃</a>
						</c:if>
						<c:if test="${sessionScope.stat eq '1' }">
							<a href="../mypage/Cmy">마이페이지</a>
						</c:if>
						<c:if test="${sessionScope.stat ne '1' }">
							<a href="../mypage/bestr">마이페이지</a>
						</c:if>
						<c:if test="${sessionScope.stat eq '5' }">
							<a href="a_index">관리자페이지</a>
						</c:if>
					</c:if>
				</div>
				
			</div>
		</header>
		
		
		