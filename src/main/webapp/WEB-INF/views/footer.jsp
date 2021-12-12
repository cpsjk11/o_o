<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<div id="footer">
			<div id="foot_menu">
				<ol>
					<li><a href="look">지원제도</a></li>
					<li><a href="/helpSc?bname=공지사항">공지사항</a></li>
					<li><a href="/helpSc?bname=문의게시판">질문답변</a></li>
					<c:if test="${userName eq null }">
					<li><a href="/ex">제휴문의</a></li>
					</c:if>
					<c:if test="${userName.stat eq '1' }">
					<li><a href="/mypage/Csuc">제휴문의</a></li>
					</c:if>

				</ol>
				<div id="f_text_box">
					<span>국삐는 통신판매중개자이며, 통신판매의 당사자가 아닙니다. 상품(훈련), 상품(훈련)정보, 거래에 관한 의무과 책임은 판매자(훈련기관)에게 있습니다.
					(07044)서울시 동작구 성대로 6바길 26 시스템관련문의 : 1577-7114(유료), 제도/자격문의 : 고용노동부1350(유료)
					Copyright ⓒ 2016. Human Resources Development Service Of Korea. All Rights Reserved.</span>
				</div>
			</div>
			<!-- <div id="foot_text">
				<div id="foot_title">
					<a href="/">국삐</a>	
				</div>
			</div> -->
		</div>