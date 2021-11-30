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

<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap');
	#wrap{
		width: 100%;
		height: 100%;
	}
	#bbs_area{
		margin: 0 auto;
		width: 60%;
		height: 2000px;
	}
	#category_area{
		margin-top: 100px;
		border: 0.6px solid #efefef;
		padding: 2.3em;
		margin-bottom: 2.3em;
	}
	#category_area ul{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
		display: flex;
		justify-content: space-between;
		margin-left: 2%;
	}
	#category_area ul a{
		color: #94969b;
		font-size: 1em;
		font-weight: 350;
		flex: auto;
		transition-property:color;
		transition-duration:0.2s;
	}
	#category_area ul a:nth-child(1){
		color: #3A2F2F;
	}
	#category_area ul a:hover{color: #3A2F2F;}
	#bbs_b_area{
		margin: 0 auto;
		padding: 2%;
		width: 90%;
		height: 85%;
		display: flex;
		flex-wrap: wrap;
		justify-content: space-between;
	}
	.bbs{
		width: 45%;
		height: 15%;
		border: 0.7px solid #ababab;
		padding: 1em;
		transform: translate(0, 0px);
		transition-property:transform;
		transition-duration:0.4s;
	}
	.bbs:hover{
		transform: translate(0, -5px);
		box-shadow: 2px 3px 15px rgb(0 0 0 / 7%)
	}
	.bbs div span{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
		color: #94969b;
	}
	#bbs_title{
		margin: 1em 0 1.5em;
	}
	#bbs_title span{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
		font-size: 1.2em;
		font-weight: 450;
	}
	#bbs_content{
		margin: 1em 0 5.5em;
	}
	#bbs_content span{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
		font-size: 1.0em;
		font-weight: 400;
	}#bbs_writer{
		margin: 1em 0 1em;
	}
	#bbs_writer span{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
		font-size: 1.0em;
	}
	#bbs_prop span{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
		font-size: 0.8em;
	}
	#bbs_date{
		float: right;
	}
	#bbs_date span{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
		font-size: 0.8em;
	}
	#menu_area{
		width: 100%;
		height: 3%;
		padding: 0.2em;
	}
	#menu_panel{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
		float: right;
		text-align: center;
		line-height: 50px;
		width: 5em;
		height:	100%; 
		font-size: 1em;
		background-color: #ffa500;
		border: 1px solid #efefef;
		border-radius: 5px;
	}
	#menu_panel:hover {
		background-color: #ed9a03;
	}
	#paging_area{
		margin: 0 auto;
		font-size: 12px;
	}
</style>
</head>
<body>
	<div id="wrap">
		<jsp:include page="header.jsp"/>
			<div id="bbs_area">
				<div id="category_area">
					<ul>
						<a href="/">자주묻는 질문</a>
						<a href="/">회원 자유 게시판</a>
						<a href="/">개선 및 제안</a>
						<a href="/">이벤트 설문참여</a>
						<a href="/">국삐활용가이드</a>
					</ul>
				</div>
				<div id="bbs_b_area">
					<div class="bbs">
						<div id="bbs_title"><span>국삐는 어떻게 사용하는건가요?</span></div>
						<div id="bbs_content"><span>사람이 꽃보다 아름다워</span></div>
						<div id="bbs_writer"><span>안치환</span></div>
						<div id="bbs_prop"><span>조회수</span>&nbsp;&nbsp;<span>좋아요</span></div>
						<div id="bbs_date"><span>2021-11-30</span></div>
						<div class="transition"></div>
					</div>
					<div class="bbs">
						<div id="bbs_title"><span>이래도 되는건가요</span></div>
						<div id="bbs_content"><span>사람이 꽃보다 아름다워</span></div>
						<div id="bbs_writer"><span>안치환</span></div>
						<div id="bbs_prop"><span>조회수</span>&nbsp;&nbsp;<span>좋아요</span></div>
						<div id="bbs_date"><span>2021-11-30</span></div>
						<div class="transition"></div>
					</div>
					<div class="bbs">
						<div id="bbs_title"><span>이래도 되는건가요</span></div>
						<div id="bbs_content"><span>사람이 꽃보다 아름다워</span></div>
						<div id="bbs_writer"><span>안치환</span></div>
						<div id="bbs_prop"><span>조회수</span>&nbsp;&nbsp;<span>좋아요</span></div>
						<div id="bbs_date"><span>2021-11-30</span></div>
					</div>
					<div class="bbs">
						<div id="bbs_title"><span>이래도 되는건가요</span></div>
						<div id="bbs_content"><span>사람이 꽃보다 아름다워</span></div>
						<div id="bbs_writer"><span>안치환</span></div>
						<div id="bbs_prop"><span>조회수</span><span>좋아요</span></div>
						<div id="bbs_date"><span>2021-11-30</span></div>
					</div>
					<div class="bbs">
						<div id="bbs_title"><span>이래도 되는건가요</span></div>
						<div id="bbs_content"><span>사람이 꽃보다 아름다워</span></div>
						<div id="bbs_writer"><span>안치환</span></div>
						<div id="bbs_prop"><span>조회수</span><span>좋아요</span></div>
						<div id="bbs_date"><span>2021-11-30</span></div>
					</div>
					<div class="bbs">
						<div id="bbs_title"><span>이래도 되는건가요</span></div>
						<div id="bbs_content"><span>사람이 꽃보다 아름다워</span></div>
						<div id="bbs_writer"><span>안치환</span></div>
						<div id="bbs_prop"><span>조회수</span><span>좋아요</span></div>
						<div id="bbs_date"><span>2021-11-30</span></div>
					</div>
					<div class="bbs">
						<div id="bbs_title"><span>이래도 되는건가요</span></div>
						<div id="bbs_content"><span>사람이 꽃보다 아름다워</span></div>
						<div id="bbs_writer"><span>안치환</span></div>
						<div id="bbs_prop"><span>조회수</span><span>좋아요</span></div>
						<div id="bbs_date"><span>2021-11-30</span></div>
					</div>
					<div class="bbs">
						<div id="bbs_title"><span>이래도 되는건가요</span></div>
						<div id="bbs_content"><span>사람이 꽃보다 아름다워</span></div>
						<div id="bbs_writer"><span>안치환</span></div>
						<div id="bbs_prop"><span>조회수</span><span>좋아요</span></div>
						<div id="bbs_date"><span>2021-11-30</span></div>
					</div>
					<div id="paging_area">1 2 3 4 5</div>
					<div id="menu_area">
						<a href="/" id="menu_panel">글쓰기</a>
					</div>	
				</div>
			</div>
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>