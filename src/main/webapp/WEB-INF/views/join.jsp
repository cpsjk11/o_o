<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/footer.css">
<style type="text/css">
	body{
		margin: 0 auto;
		padding: 0 auto;
	}	
    #join_panel{
    	margin: 0 auto;
    	width: 960px;
    	border: 1px solid red;
    }
    #join_form{
		margin-top: 190px;
		width: 100%;
    	height: 880px;
		border: 1px solid black;
    }
    #join_text_box{
    	margin-top: 46px;
    	margin-bottom: 170px;
    }
    #join_text_box span{
    	color: #3A2F2F;
    }
    #join_text_box span:nth-child(1) {
		margin: 46px 93px 46px;
		font-weight: bold;
		font-size: 40px;
	}
    #join_text_box span:nth-last-child(1) {
		margin: 46px 93px 46px;
		font-weight: 500;
		font-size: 20px;
	}
	#btn_area{
		display: flex;
		justify-content: space-between;
		margin: 0 auto;
		border: 1px solid red;
		width: 598px;
		height: 180px;
	}
	#btn_area a {
		width: 45%;
	}
	#btn_area a div{
		background: #D7F5FF;
		border-radius: 20px;
		text-align: center;
	}
	#btn_area a div:nth-child(1) {
		width: 100%;
		height: 100%;
		border: 1px solid red;
	}
	#btn_area a div:nth-last-child(1) {
		width: 100%;
		height: 100%;
		border: 1px solid red;
	}
	#btn_area a div span{
		line-height: 180px;
		font-weight: bold;
		font-size: 26px;
		color: #3A2F2F;
	}
	#notice{
		margin-top: 100px;
		margin: 70 auto;
		width: 740px;
		height: 140px;
		border: 1px solid;	
	}
	#notice{
		display: flex;
		
	}
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