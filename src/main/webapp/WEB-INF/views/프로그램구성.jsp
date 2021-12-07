<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
<head>
    <title></title>
<link href="../resources/css/lookCategory.css" rel="stylesheet" type="text/css"/>
<link href="../resources/css/lookMenu.css" rel="stylesheet" type="text/css"/>
<link href="../resources/css/header.css" rel="stylesheet" type="text/css"/>
<link href="../resources/css/foot.css" rel="stylesheet" type="text/css"/>
	
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap');
	h2,sapn,th,ul,#m-unit{
	font-family: 'Noto Sans KR','Roboto', sans-serif;
	}
    header{
    	top: 0;
    }
    
    footer{
    	bottom: 0;
    }

    .content{
        width: 900px;
         margin: 145px 550px;
		font-size: medium;
    }

    .style{
        list-style: none;
    }

    table{
        border-collapse: collapse;
      
    }
    th{
        border: 1px solid #dfdfdf;
        font-size: 15px;
        height: 50px;
        color: black;
        background-color: #efefef;
        padding: 3px;
        text-align: center;
    }
    .wth25p{
        
        height: 40px;
    }
    td{
        border: 1px solid #dfdfdf;
        margin: 10px;
        font-size: 13px;
    }
    #header{
        margin: 10px 0 ;
    }
    .content-title{
    	border-bottom: 2px solid skyblue;
        width: 36%;
       	position: relative !important;
    	left: 50px !important;
    	top: 0px !important;
    }
    
   li{
        padding: 3px 3px 3px 8px;
		list-style: none;
		font-size: 0.8em;
		padding: 8px;
		margin: 10px 0;
    }
    ul{
        margin: 10px 0;
		width: 720px;
    }
    table{
        width: 100%;
    }
	strong{
		display: inline-block;
		margin: 0 0 15px;
	}

.out{
	list-style-position: outside;
}
#text{
	margin: 5px 0;
}

</style>
<body>
<jsp:include page="lookMenu.jsp"/>

    <div class="content">
	<h2 class="content-title"><span class="content-title-bar"></span>취업성공패키지 프로그램구성</h2>
	<ul class="out">
		<li class="no-l_style">취업성공패키지는 최장 1년 동안 서비스가 제공되며, 각 단계별로 지원되는 서비스의 내용은 아래와 같습니다.</li>
	</ul>
	<ul>
		<li>
			<span class="li-dot"></span>
			<strong>진단, 의욕증진 및 경로설정 단계</strong><br>
			개인별 취업활동 계획(IAP)* 수립을 위한 취업성공패키지의 첫 번째 단계입니다. 직업심리검사 및 집단상담 프로그램 등을 통하여 참가자의 취업역량, 구직의욕 및 적성 등을 정확히 진단한 후, 이를 토대로 취업에 대한 자신감 회복 및 개인별 취업활동 경로를 설정하게 됩니다.
			<div class="footnote-box">
				<div class="footnote-box-un">
				*IAP란 Individual Action Plan의 줄임말로서, 취업 성공을 위한 구체적 목표 설정 및 실행 계획을 담고 있는 계획표입니다.
				</div>
			</div>
		</li>
		<li>
			<span class="li-dot"></span>
			<strong>취업상담 • 취업알선 단계 (2유형만 해당)</strong><br>
			1단계 종료 후 필요한 경우에 한하여 상담사와 참여자의 협의를 통해 2~4주간에 걸쳐 취업상담 및 취업알선을 받을 수 있게 됩니다. 해당 단계가 불필요하다고 인정되는 경우 생략 가능합니다. 
		</li>
		<li>
			<span class="li-dot"></span>
			<strong>직업능력 및 직장적응력 증진 단계</strong><br>
			직업훈련, 창업프로그램, 인턴과 같은 세부 프로그램들을 통해 현장에서 요구되는 직무 능력을 습득하는 단계입니다. 이러한 과정을 거쳐 직장생활 적응을 위해 필요한 기술을 익히게 됩니다.
		</li>
		<li>
			<span class="li-dot"></span>
			<strong>집중 취업알선 단계</strong><br>
			고용센터 및 민간위탁기관에서 일자리 알선 및 동행 면접을 실시하는 단계입니다. 3개월의 기간을 원칙으로 참가자에 대한 취업알선 서비스가 집중적으로 제공됩니다.
		</li>
		<li>
			<span class="li-dot"></span>
			<strong>사후관리</strong><br>
			취업성공패키지 서비스 종료일로부터 3개월 동안 참가자에 대한 지속적인 관리가 이어집니다. 취업자에게는 직장적응 및 장기근속을 유도하고, 미취업자의 경우 고용센터의 구인정보 등을 꾸준히 제공하여 취업의지가 약화되는 것을 방지합니다.
		</li>
	</ul>
</div><!-- content -->
    <jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>

$(function(){
    var count = 0;
    var count2 = 0;
    var count3 = 0;
    var count4 = 0;
    var count5 = 0;
    $(".to1").bind("click",function(){
        $(".m-unit-body").slideToggle(300);
        $(".m-unit-body2").slideUp(300);
        $(".m-unit-body3").slideUp(300);
        $(".m-unit-body4").slideUp(300);
        $(".m-unit-body5").slideUp(300);
        $(".to1").text("취업성공패키지 ☝");
        $(".to2").text("실업자 내일배움카드 👇");
        $(".to3").text("국가기간전략산업직종훈련 👇");
        $(".to4").text("일학습병행제 👇");
        $(".to5").text("고용디딤돌 👇");
        count += 1;
        if(count%2 == 0)
        $(".to1").text("취업성공패키지 👇");
    });
    $(".to2").bind("click",function(){
        $(".m-unit-body").slideUp(300);
        $(".m-unit-body2").slideToggle(300);
        $(".m-unit-body3").slideUp(300);
        $(".m-unit-body4").slideUp(300);
        $(".m-unit-body5").slideUp(300);
        $(".to1").text("취업성공패키지 👇");
        $(".to2").text("실업자 내일배움카드 ☝");
        $(".to3").text("국가기간전략산업직종훈련 👇");
        $(".to4").text("일학습병행제 👇");
        $(".to5").text("고용디딤돌 👇");
        count2 += 1;
        if(count2%2 == 0)
        $(".to2").text("실업자 내일배움카드 👇");
    });
    $(".to3").bind("click",function(){   
        $(".m-unit-body").slideUp(300);
        $(".m-unit-body2").slideUp(300);
        $(".m-unit-body3").slideToggle(300);
        $(".m-unit-body4").slideUp(300);
        $(".m-unit-body5").slideUp(300);
        $(".to1").text("취업성공패키지 👇");
        $(".to2").text("실업자 내일배움카드 👇");
        $(".to3").text("국가기간전략산업직종훈련 ☝");
        $(".to4").text("일학습병행제 👇");
        $(".to5").text("고용디딤돌 👇");
        count3 += 1;
        if(count3%2 == 0)
        $(".to3").text("국가기간전략산업직종훈련 👇");
    });
    $(".to4").bind("click",function(){      
        $(".m-unit-body").slideUp(300);
        $(".m-unit-body2").slideUp(300);
        $(".m-unit-body3").slideUp(300);
        $(".m-unit-body4").slideToggle(300);
        $(".m-unit-body5").slideUp(300);
        $(".to1").text("취업성공패키지 👇");
        $(".to2").text("실업자 내일배움카드 👇");
        $(".to3").text("국가기간전략산업직종훈련 👇");
        $(".to4").text("일학습병행제 ☝");
        $(".to5").text("고용디딤돌 👇");
        count4 += 1;
        if(count4%2 == 0)
        $(".to4").text("일학습병행제 👇");
    });
    $(".to5").bind("click",function(){
        $(".m-unit-body").slideUp(300);
        $(".m-unit-body2").slideUp(300);
        $(".m-unit-body3").slideUp(300);
        $(".m-unit-body4").slideUp(300);
        $(".m-unit-body5").slideToggle(300);
        $(".to1").text("취업성공패키지 👇");
        $(".to2").text("실업자 내일배움카드 👇");
        $(".to3").text("국가기간전략산업직종훈련 👇");
        $(".to4").text("일학습병행제 👇");
        $(".to5").text("고용디딤돌 ☝");
        count5 += 1;
        if(count5%2 == 0)
        $(".to5").text("고용디딤돌 👇");
    });
});

var $bbbLeft = $("#bbb_left"),
		leftPx = $("#bbb_left").height(),
		stPx = $("#bbb_right").height(); 

	if(leftPx < stPx){
		$(window).scroll(function(){
			var px = 202;
			if($(this).scrollTop() >= px){
				$bbbLeft.addClass("fixed");
			}else{
				$bbbLeft.removeClass("fixed");
			}
		});
	}

</script>
</html>
