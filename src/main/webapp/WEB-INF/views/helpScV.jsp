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
	.v_bbs{
	    border: 0.7px solid #ababab;
	    padding: 1em;
	}
	#v_bbs_b_area{
		margin: 0 auto;
		padding: 2%;
		width: 90%;
	}
</style>
</head>
<body>
	<div id="wrap">
		<jsp:include page="header.jsp"/>
			<div id="bbs_area">
				<jsp:include page="helpCategory.jsp"/>
				<div id="v_bbs_b_area">
					<div class="v_bbs">
						<div id="v_bbs_title"><span>${vo.subject }</span></div>
						<div id="v_bbs_content"><span>${vo.content }</span></div>
						<div id="v_bbs_writer"><span>${vo.writer }</span></div>
						<div id="v_bbs_prop"><span>조회수</span>&nbsp;&nbsp;<span>좋아요</span></div>
						<div id="v_bbs_date"><span>${vo.write_date }</span></div>
					</div>
				</div>
			</div>
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>