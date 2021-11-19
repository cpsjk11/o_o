<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- css링크구역!! --%>
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/footer.css">
<link rel="stylesheet" href="resources/css/join.css">
<link rel="shortcut icon" href="resources/ico/Frame.png">


<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap');
</style>
</head>
<body>
		<%--헤더 --%>
		<jsp:include page="header.jsp"/>
		<%--헤더 --%>
			<div id="join_panel">
				<div id="join_form">
					<div id="join_text_box">
						<span>반가워요!</span><br/><br/><br/>
						<span>국삐 서비스를 사용하기 위해 회원가입을 해주세요.</span>
					</div>
					<div id="btn_area">
						<a href="u_mem_join">
							<div id="u_mem">
								<span>개인회원</span>
							</div>
						</a>
						<a href="c_mem_join">
							<div id="c_mem">
								<span>기업회원</span>
							</div>
						</a>
					</div>
					<div id="notice">
						<div id="u_mem_notice">
							<div class="notice_title">개인회원</div>
							<div id="u_mem_notice_area" class="notice_area">마이서비스 권한 : 훈련(구직자, 근로자)훈련, 수강평등록, 동영상 시청, 훈련문의, 생애이력, 카드신청
								행정서비스 권한 : 부정행위 / 신고포상 신청, 청년취업 아카데미, 근로자카드 신청 및 조회</div>
						</div>
						<div id="c_mem_notice"></div>
							<div class="notice_title">기업회원</div>
							<div id="c_mem_notice_area" class="notice_area">마이서비스 권한 : 대리인 현황, 사업주 훈련 이력, 신청결과 통지내역 등 업무 지원
								행정서비스 권한 : 행정업무 지원 , 훈련비 카드결제, 일 학습병행제, 등 행정 업무지원</div>
					</div>
				</div>
			</div>
		<%-- 푸터에용~ --%>
		<jsp:include page="footer.jsp"/>
		<%-- 푸터에용~ --%>
</body>
</html>