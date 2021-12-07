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
        text-align: center;
    }
    .text-center{
        
        text-align: center;
    }
    #header{
        margin: 10px 0 ;
    }
    .content-title{
    	border-bottom: 2px solid skyblue;
        width: 52%;
       	position: relative !important;
    	left: 50px !important;
    	top: 0px !important;
    }
    
   li{
        padding: 2px 3px 3px 3px;
	
		font-size: 0.9em;
		
		margin: 10px 0;
    }
    ul{
        margin: 10px 0;
		
    }
    .ta{
        width: 100%;
        margin: 25px 0;
    }

.out{
	list-style-position: outside;
}
#text{
	margin: 5px 0;
}
.content-sub-title{
    margin-left: 48px;
    color: skyblue;
}
.no-margin-li{
    margin-left: -30px;
    list-style: decimal;
}
.li-line{
    list-style-type: square;
}
.text-padding{
    padding: 10px;
}
#td-center td{
    padding-left: 20px;
}
.table-wrapper{
    margin-left: -40px;
}
.block-center{
    margin-left: -40px;
}
.a-hidden{
    text-decoration: none;
    color: black;
}
.left a:hover {
    color: skyblue;
}
.go_hrd:hover {
    color: skyblue;
}
.num-style{
    list-style: decimal;

}
strong{
	display: inline-block;
	margin-bottom: 5px;
}

</style>
<body>
<jsp:include page="lookMenu.jsp"/>
    <div class="content">
    <h2 class="content-title"><span class="content-title-bar"></span>국가기간·전략산업직종훈련 지원혜택</h2>
    <ul class="no-padding">
        <li>
            국가기간·전략산업직종훈련 참가자에게 주어지는 혜택은 아래와 같습니다.
        </li>
    </ul>
    <ul>
        <li>
            <span class="li-dot"></span>
            <strong>훈련비</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    <strong>전액지원</strong><br>
                    실업자 내일배움카드를 발급 받은 후 국가기간·전략산업직종훈련에 참여하실 수 있으며, 카드의 지원한도와 무관하게 훈련비 전액이 지원됩니다.
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>훈련장려금</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    <strong>116,000원/월</strong><br>
                    훈련참여기간 동안 단위기간(월)의 출석률이 80% 이상인 경우에 한하여 최대 116,000원/월이 지급됩니다.
                    훈련장려금은 식비와 교통비로 구성되어 있으며, 일별 훈련시간에 따라 금액이 달라집니다. 단, 기숙사 이용시 교통비는 지급되지 않습니다.<br>
                </li>
                <li>
                    <strong>일별 훈련시간이 5시간 미만인 경우</strong><br>
                    일별 2,500원이 지급되며 단위기간 동안 최대 50,000원이 지급됩니다.<br>
                </li>
                <li>
                    <strong>일별 훈련시간이 5시간 이상인 경우</strong><br>
                    일별 5,800원이 지급되며 단위기간 동안 최대 116,000원이 지급됩니다.
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>추가훈련장려금</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    <strong>비진학 예정인 고등학교 3학년 재학생</strong><br>
                    최대 10만 원/월 (1일 기준금액 5천 원)
                </li>
                <li>
                    <span class="li-line"></span>
                    <strong>위의 경우에 해당되지 않고 실업급여 수급자격이 없는 사람</strong><br>
                    최대 20만 원/월 (1일 기준금액 1만 원)
                </li>
                <li>
                    <span class="li-line"></span>
                    <strong>취업성공패키지에 참여한 사람</strong><br>
                    최대 30만 원/월 (최대 6개월 동안 지급, 1일 기준금액 1만 5천 원)<br>
                    *취업성공패키지 참여자의 경우 추가훈련장려금이 지급되는 대신 훈련참여지원수당은 지급되지 않습니다.
                </li>
                <li>
                    <span class="li-line"></span>
                    <strong>취업성공패키지에 참여한 사람(고등학생)</strong><br>
                    최대 20만 원/월 (최대 6개월 동안 지급, 1일 기준금액 1만 원)<br>
                    *취업성공패키지 참여자의 경우 추가훈련장려금이 지급되는 대신 훈련참여지원수당은 지급되지 않습니다.
                </li>
            </ul>
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
