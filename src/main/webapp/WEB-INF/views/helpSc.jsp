<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="shortcut icon" href="resources/ico/Frame.png">

<%-- css링크구역!! --%>
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/home.css">
<link rel="stylesheet" href="resources/css/foot.css">
<link rel="stylesheet" href="resources/css/helpSc.css">

<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap');
	
</style>
</head>
<body>
	<div id="wrap">
		<jsp:include page="header.jsp"/>
			<div id="bbs_area">
				<jsp:include page="helpCategory.jsp"/>
				<div id="bbs_b_area">
					<div class="bbs" onclick="javascrip:location.href='/helpScV?b_idx=1'">
						<div id="bbs_title"><span>국삐는 어떻게 사용하는건가요?</span></div>
						<div id="bbs_content"><span>사람이 꽃보다 아름다워</span></div>
						<div id="bbs_writer"><span>안치환</span></div>
						<div id="bbs_prop"><span>조회수</span>&nbsp;&nbsp;<span>좋아요</span></div>
						<div id="bbs_date"><span>2021-11-30</span></div>
						<div class="transition"></div>
					</div>
					<div class="bbs" onclick="javascrip:location.href='/helpScV?b_idx=1'">
						<div id="bbs_title"><span>이래도 되는건가요</span></div>
						<div id="bbs_content"><span>사람이 꽃보다 아름다워</span></div>
						<div id="bbs_writer"><span>안치환</span></div>
						<div id="bbs_prop"><span>조회수</span>&nbsp;&nbsp;<span>좋아요</span></div>
						<div id="bbs_date"><span>2021-11-30</span></div>
						<div class="transition"></div>
					</div>
					<div class="bbs" onclick="javascrip:location.href='/helpScV?b_idx=1'">
						<div id="bbs_title"><span>이래도 되는건가요</span></div>
						<div id="bbs_content"><span>사람이 꽃보다 아름다워</span></div>
						<div id="bbs_writer"><span>안치환</span></div>
						<div id="bbs_prop"><span>조회수</span>&nbsp;&nbsp;<span>좋아요</span></div>
						<div id="bbs_date"><span>2021-11-30</span></div>
					</div>
					<div class="bbs" onclick="javascrip:location.href='/helpScV?b_idx=1'">
						<div id="bbs_title"><span>이래도 되는건가요</span></div>
						<div id="bbs_content"><span>사람이 꽃보다 아름다워</span></div>
						<div id="bbs_writer"><span>안치환</span></div>
						<div id="bbs_prop"><span>조회수</span><span>좋아요</span></div>
						<div id="bbs_date"><span>2021-11-30</span></div>
					</div>
					<div class="bbs" onclick="javascrip:location.href='/helpScV?b_idx=1'">
						<div id="bbs_title"><span>이래도 되는건가요</span></div>
						<div id="bbs_content"><span>사람이 꽃보다 아름다워</span></div>
						<div id="bbs_writer"><span>안치환</span></div>
						<div id="bbs_prop"><span>조회수</span><span>좋아요</span></div>
						<div id="bbs_date"><span>2021-11-30</span></div>
					</div>
					<div class="bbs" onclick="javascrip:location.href='/helpScV?b_idx=1'">
						<div id="bbs_title"><span>이래도 되는건가요</span></div>
						<div id="bbs_content"><span>사람이 꽃보다 아름다워</span></div>
						<div id="bbs_writer"><span>안치환</span></div>
						<div id="bbs_prop"><span>조회수</span><span>좋아요</span></div>
						<div id="bbs_date"><span>2021-11-30</span></div>
					</div>
					<div class="bbs" onclick="javascrip:location.href='/helpScV?b_idx=1'">
						<div id="bbs_title"><span>이래도 되는건가요</span></div>
						<div id="bbs_content"><span>사람이 꽃보다 아름다워</span></div>
						<div id="bbs_writer"><span>안치환</span></div>
						<div id="bbs_prop"><span>조회수</span><span>좋아요</span></div>
						<div id="bbs_date"><span>2021-11-30</span></div>
					</div>
					<div class="bbs" onclick="javascrip:location.href='/helpScV?b_idx=1'">
						<div id="bbs_title"><span>이래도 되는건가요</span></div>
						<div id="bbs_content"><span>사람이 꽃보다 아름다워</span></div>
						<div id="bbs_writer"><span>안치환</span></div>
						<div id="bbs_prop"><span>조회수</span><span>좋아요</span></div>
						<div id="bbs_date"><span>2021-11-30</span></div>
					</div>
					<div id="paging_area">1 2 3 4 5</div>
					<div id="menu_area">
						<a href="/helpWrite?bname=자주묻는질문" id="menu_panel">글쓰기</a>
					</div>	
				</div>
			</div>
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>