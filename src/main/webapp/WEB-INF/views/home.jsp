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
<link rel="shortcut icon" href="resources/ico/Frame.png">

<%-- css링크구역!! --%>
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/home.css">
<link rel="stylesheet" href="resources/css/foot.css">

<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap');
	
</style>
</head>
<body>
	<div id="wrap">
		<jsp:include page="header.jsp"/>
		<%--상단 검색 영역입니당! --%>
		<div id="main_content">
			<div id="search_area">
				<span>나에게 맞는 훈련을 찾아보세요! </span>
				<div id="input_area">
					<input type="text" id="search" name="search" placeholder="검색할 내용을 입력해주세요!😀 " onkeyup="enterkey()"/>
					<img src="resources/img/px.png" style="cursor: pointer;" onclick="imgclick()">
				</div>
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
           			<c:forEach var="vo" items="${avo}" varStatus="st">				
					<a class="tr" href="/">
						<div class="tr_img_box">
							<img alt="" src="resources/img/${st.index+1}.jfif" style="width: 100%; height: 100%;">
						</div>
						<div id="tr_text_box">
							<span class="tr_addr">${vo.addr}</span>
							<span class="tr_name">${vo.subject}${vo.title}</span>
						</div>
					</a> 
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
	      			<c:forEach var="vo" items="${avos}" varStatus="st">				
					<a class="tr" href="/">
						<div class="tr_img_box">
							<img alt="" src="resources/img/img${st.index+1}.png" style="width: 100%; height: 100%;">
						</div>
						<div id="tr_text_box">
							<span class="tr_addr">${vo.addr}</span>
							<span class="tr_name">${vo.title}${vo.subject}</span>
						</div>
					</a>
					</c:forEach>
			
				</div>
			</div>
		<%--추천훈련과정영역입니당! --%>
			<div id="pop_ct" data-aos="fade-up" data-aos-duration="1500">
				<div id="ct_top_text">
					<span>인기 카테고리</span>
				</div>
				<div id="ct_top_category" style="padding: 60px 45px;">
					<ol onclick="search_pa()" id="search_ol">
						<li value="2001" id="1">정보통신</li>
						<li value="2002" id="2">통신기술</li>
						<li value="2003" id="3">방송기술</li>
						<li value="20" id="4">디자인</li>
					</ol>
					<ol>
						<li value="20" id="a">금융</li>
						<li value="20" id="a">전기전자</li>
						<li value="20" id="a">재료</li>
						<li value="20" id="a">보건의료</li>
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

// 상단 검색창
function enterkey() {
	if (window.event.keyCode == 13) {
		// 엔터키가 눌렸을 때
		var value = $("#search").val();
			alert(value);
		if(value.trim().length < 1){
			alert("검색어를 입력해주세요!");
			return;
		}
		location.href="goSearch?value="+value;
	}
} 
function imgclick() {
		// 돋보기 눌렀을 때가 눌렸을 때
		var value = $("#search").val();
		if(value.trim().length < 1){
			alert("검색어를 입력해주세요!");
			return;
		}
		location.href="goSearch?value="+value;
} 


$(function(){
	//아래 인기카테고리!
	$("#ct_top_category ol li").bind("click",function(){
		var value = $(this).val();
		alert(value)
		location.href="goSearch?srchKeco2="+value;
	})
	
	AOS.init();
	
	
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
