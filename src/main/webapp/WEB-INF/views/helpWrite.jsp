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
	#v_head{
		width: 100%;
		height: 10%;
		border: 1px solid;
	}
	#v_head h1{
		width: 100%;
		font-size: 0.8em;
		border: 1px solid;
		font-family: 'Noto Sans KR','Roboto', sans-serif;
	}
	#v_head h2{
		width: 100%;
		font-size: 1.5em;
		border: 1px solid;
		font-family: 'Noto Sans KR','Roboto', sans-serif;
	}
	#writer{
		font-size: 0.9em;
		font-weight: 300;
		color: #ababab;
		font-family: 'Noto Sans KR','Roboto', sans-serif;
	}
	#wrap_info{
		font-size: 0.9em;
		font-weight: 300;
		color: #ababab;
		font-family: 'Noto Sans KR','Roboto', sans-serif;
	}
	#v_content{
		width: 100%;
		height: 10%;
		border: 1px solid blue;
	}
	#v_content #content_area{
		width: 100%;
		font-size: 1.2em;
		border: 1px solid;
		font-family: 'Noto Sans KR','Roboto', sans-serif;
	}
 	.info{
		font-size: 0.9em;
		font-weight: 300;
		color: #ababab;
		font-family: 'Noto Sans KR','Roboto', sans-serif;
	}
	#v_comments{
		width: 100%;
		height: 10%;
		border: 1px solid red;
	}
	
</style>
</head>
<body>
	<div id="wrap">
		<jsp:include page="header.jsp"/>
			<div id="bbs_area">
				<jsp:include page="helpCategory.jsp"/>
				<div id="bbs_b_area">
					<div id=main>
						<div id="v_head">
							<h1>
								<a href="/">고객센터</a> > <a>자주묻는 질문</a>
							</h1>
							<h2>
								<a href="javascript:location.reload" id="">국삐는 어떻게 사용하는건가요?</a>
							</h2>
							<span id="writer">안치환</span>
							<div id=wrap_info>
								<span id="data">2021-11-30</span>
								<span id="pv">조회수</span>
								<span id="blind">댓글수</span>
							</div>
						</div>
						<div id="v_content">
							<span id="content_area">사람이 꽃보다 아름다워</span>
						</div>
						<div class="info">
							<a class="like">좋아요</a>
							<a class="comment">댓글수</a>
						</div>
						<div id="v_comments">
							<a class="comment">댓글수</a>
							
						</div>
					</div>
				</div>
			</div>
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>