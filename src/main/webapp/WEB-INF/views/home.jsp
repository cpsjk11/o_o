<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>hrd-center.국삐</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="apple-touch-icon" sizes="57x57" href="resources/ico//apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="resources/ico//apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="resources/ico//apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="resources/ico//apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="resources/ico//apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="resources/ico//apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="resources/ico//apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="resources/ico//apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="resources/ico//apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="resources/ico//android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="resources/ico//favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="resources/ico//favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="resources/ico/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/ms-icon-180x180.png">
<meta name="theme-color" content="#ffffff">
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
	#wrap{
		position: absolute;
		width: 1920px;
		height: 100px;
		left: 0px;
		top: 0px;
		background: #FFFFFF;
		
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
	#pop_area a:hover{
		transform: translate(0, -3px);
	}
	
	
	#main_content{
		display: block;
		padding: 150px 300px;
		margin: 0 auto;
		width: 1000px;
		height: 720px;
		text-align: center;
	}
	#main_content span{
		margin: 0 auto;
		width: 600px;
		height: 47px;
		font-family: Roboto;
		font-style: normal;
		font-weight: bold;
		font-size: 40px;
		line-height: 47px;
		color: #3A2F2F;
		}
	#main_content #search{
		filter: drop-shadow(0px 4px 4px rgba(0, 0, 0, 0.25));
		width: 560px;
		height: 70px;
		border-radius: 20px;
		border: 0.7px solid #efefef;
		margin-top: 50px;
		font-size: 16px;
		font-weight: 300;
		text-align: center;
		font: #888888;
	}
	#search_area{
		width: 100%;
		padding-top: 150px;
	}
	#sub_content{
		position: absolute;
		display: block;
		width: 1920px;
		height: 2007px;
		left: 0px;
		top: 864px;
	}
	#sub_content #pop_tr{
		position: absolute;
		width: 1323px;
		height: 456.72px;
		left: 297px;
		top: 142.14px;
		
	}
	#sub_content #beli_tr{
		position: absolute;
		width: 1323px;
		height: 456.72px;
		left: 297px;
		top: 766px;
	}
	#sub_content #pop_ct{
		position: absolute;
		width: 1323px;
		height: 456.72px;
		left: 297px;
		top: 1422px;
	}
	#pop_area{
		width: 1323px;
		height: 456.72px;
		/* left: 297px;
		top: 142.14px;
		display: flex; */
		flex-direction: row;
		justify-content: space-between;
		background: #FFFFFF;
		box-shadow: 4px 4px 10px rgba(0, 0, 0, 0.25);
		border-radius: 10px;
		
	}
	.tr{
		width: 218.32px;
		height: 305.64px;
		/* left: 333.68px;
		top: 271.38px; */
		text-decoration: none;
	}
	#pop_area a{
		text-decoration: none;
		color: #3A2F2F;
		margin: 40px;
		box-shadow: 4px 4px 10px rgba(0, 0, 0, 0.25);
		border-radius: 10px;
	}
	.tr span{
		padding: 5px;
		color: #3A2F2F;
		font-size: 11px;
		color: #3A2F2F;
		font-weight: 800;
	}	
	.tr_name{float: left;}
	.tr_addr{float: right;color: #3A2F2F;}
	
	#pop_text{
		padding: 30px 40px 0px;
	}
	#pop_text span{
		font-weight: 600;
		font-size: 30px;
		color: #3A2F2F;
	}
	#ct_top_text{
		margin: 54px 62px 0;
		font-weight: bold;
		font-size: 30px;
	}
	#ct_top_category ol:nth-child(1){
		display: flex; 
		list-style: none; 
		justify-content: space-between; 
		margin-bottom: 55px;
	}
	#ct_top_category ol:nth-child(2){
		display: flex; 
		list-style: none; 
		justify-content: space-between; 
	}
	#ct_top_category ol li{
		width: 240px; 
		height: 80px;
		background: #EFEFEF;
		border-radius: 6px;
		text-align: center;
		font-weight: 600;
		font-size: 20px;
		font: #3A2F2F;
		line-height: 80px;
	}
	#footer{
		position: absolute;
		width: 1920px;
		height: 110px;
		left: 0px;
		top: 2871px;
		border-top: 0.7px solid #efefef;
		display: block;
		padding: 20px;
	}
	#foot_menu ol{
		margin: 0 auto;
		display: flex;
		justify-content: space-evenly;
		align-items: flex-start;
		border-bottom: 1px solid #efefef;
		width: 60%;
		height: 70px;
	}
	#foot_menu ol li{
		list-style: none;
		font-size: 12px;
		color: #777;
	}
	#f_text_box{
		margin: 0 auto;
		text-align: center;
		width: 600px;
		font-size: 12px;
		color: #999999;
	}
</style>
</head>
<body>
	<div id="wrap">
		<jsp:include page="header.jsp"/>
		<%--상단 검색 영역입니당! --%>
		<div id="main_content">
			<div id="search_area">
				<span>나에게 맞는 훈련을 찾아보세요! </span>
				<input type="text" id="search" name="search" placeholder="검색할 내용을 입력해주세요!😀 "/>
			</div>
		</div>
		<%--상단 검색 영역입니당! --%>
		
		<%--실시간 인기 훈련과정영역입니당! --%>
		<div id="sub_content" data-aos="fade-up" data-aos-duration="1500">
			<div id="pop_tr">
				<div id="pop_area">
					<div id="pop_text">
						<span>실시간 인기 훈련과정</span>
					</div>
					<c:forEach begin="0" end="${length }" varStatus="s">
         			<c:set var="a" value="avo${s.index}"></c:set>
           			<c:forEach var="vo" items="${requestScope[a]}" varStatus="st">				
					<a class="tr" href="/">
						<div style="width: 100%; height: 80%;" id="tr_img_box">
							<img alt="" src="resources/img/1.jfif" style="width: 100%; height: 100%;">
						</div>
						<div id="tr_text_box">
							<div>
								<span class="tr_addr">${vo.ADDR1}</span>
								<span class="tr_name">${vo.INO_NM}${vo.TRPR_NM}</span>
							</div>
						</div>
					</a> 
					</c:forEach>
					</c:forEach>
				</div>
			</div>
			<%--실시간 인기 훈련과정영역입니당! --%>


			<%--추천훈련과정영역입니당! --%>
			<div id="beli_tr" data-aos="fade-up" data-aos-duration="1500">
				<div id="pop_area" class="pop_area">
					<div id="pop_text">
						<span>추천 훈련 과정</span>
					</div>				
					<a class="tr" href="/">
						<div style="width: 100%; height: 80%;" id="tr_img_box">
							<img alt="" src="resources/img/1.jfif" style="width: 100%; height: 100%;">
						</div>
						<div id="tr_text_box">
							<div>
								<span class="tr_addr">인크레파스</span>
								<span class="tr_name">자바 전문 웹과정</span>
							</div>
						</div>
					</a> 
					<a class="tr" href="/">
						<div style="width: 100%; height: 80%;" id="tr_img_box">
							<img alt="" src="resources/img/2.jfif" style="width: 100%; height: 100%;">
						</div>
						<div id="tr_text_box">
							<div>
								<span class="tr_addr">윙크레파스</span>
								<span class="tr_name">파이썬 전문과정</span>
							</div>
						</div>
					</a> 
					<a class="tr" href="/">
						<div style="width: 100%; height: 80%;" id="tr_img_box">
							<img alt="" src="resources/img/3.jfif" style="width: 100%; height: 100%;">
						</div>
						<div id="tr_text_box">
							<div>
								<span class="tr_addr">제빵학원</span>
								<span class="tr_name">제과 제빵전문과정</span>
							</div>
						</div>
					</a> 
					<a class="tr" href="/">
						<div style="width: 100%; height: 80%;" id="tr_img_box">
							<img alt="" src="resources/img/4.jfif" style="width: 100%; height: 100%;">
						</div>
						<div id="tr_text_box">
							<div>
								<span class="tr_addr">테스트입니당</span>
								<span class="tr_name">ABCDEFGAAAA</span>
							</div>
						</div>
					</a> 
					<a class="tr" href="/">
						<div style="width: 100%; height: 80%;" id="tr_img_box">
							<img alt="" src="resources/img/5.jfif" style="width: 100%; height: 100%;">
						</div>
						<div id="tr_text_box">
							<div>
								<span class="tr_addr">테스트입니당</span>
								<span class="tr_name">ABCDEFGAAAA</span>
							</div>
						</div>
					</a> 
					<a class="tr" href="/">
						<div style="width: 100%; height: 80%;" id="tr_img_box">
							<img alt="" src="resources/img/6.jfif" style="width: 100%; height: 100%;">
						</div>
						<div id="tr_text_box">
							<div>
								<span class="tr_addr">테스트입니당</span>
								<span class="tr_name">ABCDEFGAAAA</span>
							</div>
						</div>
					</a> 
					<a class="tr" href="/">
						<div style="width: 100%; height: 80%;" id="tr_img_box">
							<img alt="" src="resources/img/7.jfif" style="width: 100%; height: 100%;">
						</div>
						<div id="tr_text_box">
							<div>
								<span class="tr_addr">테스트입니당</span>
								<span class="tr_name">ABCDEFGAAAA</span>
							</div>
						</div>
					</a> 
					<a class="tr" href="/">
						<div style="width: 100%; height: 80%;" id="tr_img_box">
							<img alt="" src="resources/img/1.svg" style="width: 100%; height: 100%;">
						</div>
						<div id="tr_text_box">
							<div>
								<span class="tr_addr">테스트입니당</span>
								<span class="tr_name">ABCDEFGAAAA</span>
							</div>
						</div>
					</a> 
					<a class="tr" href="/">
						<div style="width: 100%; height: 80%;" id="tr_img_box">
							<img alt="" src="resources/img/1.svg" style="width: 100%; height: 100%;">
						</div>
						<div id="tr_text_box">
							<div>
								<span class="tr_addr">테스트입니당</span>
								<span class="tr_name">ABCDEFGAAAA</span>
							</div>
						</div>
					</a> 
					<a class="tr" href="/">
						<div style="width: 100%; height: 80%;" id="tr_img_box">
							<img alt="" src="resources/img/1.svg" style="width: 100%; height: 100%;">
						</div>
						<div id="tr_text_box">
							<div>
								<span class="tr_addr">테스트입니당</span>
								<span class="tr_name">ABCDEFGAAAA</span>
							</div>
						</div>
					</a> 
				</div>
			</div>
		<%--추천훈련과정영역입니당! --%>
			<div id="pop_ct" data-aos="fade-up" data-aos-duration="1500">
				<div id="ct_top_text">
					<span>인기 카테고리</span>
				</div>
				<div id="ct_top_category" style="padding: 60px 45px;">
					<ol>
						<li>정보통신</li>
						<li>건설</li>
						<li>식품가공</li>
						<li>디자인</li>
					</ol>
					<ol>
						<li>금융</li>
						<li>전기전자</li>
						<li>재료</li>
						<li>보건의료</li>
					</ol>
				</div>
			</div>
		</div>
		
		<%-- 푸터에용~ --%>
		<jsp:include page="footer.jsp"/>
		<%-- 푸터에용~ --%>
		
	</div>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<script type="text/javascript">

AOS.init();

$(function(){
    $('#pop_area').slick({
        slide: 'a',        //슬라이드 되어야 할 태그 ex) div, li 
        infinite : true,     //무한 반복 옵션     
        slidesToShow : 5,        // 한 화면에 보여질 컨텐츠 개수
        slidesToScroll : 1,        //스크롤 한번에 움직일 컨텐츠 개수
        speed : 100,     // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
        arrows : false,         // 옆으로 이동하는 화살표 표시 여부
        dots : false,         // 스크롤바 아래 점으로 페이지네이션 여부
        autoplay : true,            // 자동 스크롤 사용 여부
        autoplaySpeed : 4000,         // 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
        pauseOnHover : true,        // 슬라이드 이동    시 마우스 호버하면 슬라이더 멈추게 설정
        vertical : false,        // 세로 방향 슬라이드 옵션
        prevArrow : "<button type='button' class='slick-prev'>Previous</button>",        // 이전 화살표 모양 설정
        nextArrow : "<button type='button' class='slick-next'>Next</button>",        // 다음 화살표 모양 설정


        dotsClass : "slick-dots",     //아래 나오는 페이지네이션(점) css class 지정
        draggable : true,     //드래그 가능 여부 
        
        responsive: [ // 반응형 웹 구현 옵션
            {  
                breakpoint: 960, //화면 사이즈 960px
                settings: {
                    //위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
                    slidesToShow:3 
                } 
            },
            { 
                breakpoint: 768, //화면 사이즈 768px
                settings: {    
                    //위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
                    slidesToShow:2 
                } 
            }
        ]

    });
    $('.pop_area').slick({
        slide: 'a',        //슬라이드 되어야 할 태그 ex) div, li 
        infinite : true,     //무한 반복 옵션     
        slidesToShow : 5,        // 한 화면에 보여질 컨텐츠 개수
        slidesToScroll : 1,        //스크롤 한번에 움직일 컨텐츠 개수
        speed : 100,     // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
        arrows : false,         // 옆으로 이동하는 화살표 표시 여부
        dots : false,         // 스크롤바 아래 점으로 페이지네이션 여부
        autoplay : true,            // 자동 스크롤 사용 여부
        autoplaySpeed : 4000,         // 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
        pauseOnHover : true,        // 슬라이드 이동    시 마우스 호버하면 슬라이더 멈추게 설정
        vertical : false,        // 세로 방향 슬라이드 옵션
        prevArrow : "<button type='button' class='slick-prev'>Previous</button>",        // 이전 화살표 모양 설정
        nextArrow : "<button type='button' class='slick-next'>Next</button>",        // 다음 화살표 모양 설정


        dotsClass : "slick-dots",     //아래 나오는 페이지네이션(점) css class 지정
        draggable : true,     //드래그 가능 여부 
        
        responsive: [ // 반응형 웹 구현 옵션
            {  
                breakpoint: 960, //화면 사이즈 960px
                settings: {
                    //위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
                    slidesToShow:3 
                } 
            },
            { 
                breakpoint: 768, //화면 사이즈 768px
                settings: {    
                    //위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
                    slidesToShow:2 
                } 
            }
        ]

    });
  })

</script>
</body>
</html>
