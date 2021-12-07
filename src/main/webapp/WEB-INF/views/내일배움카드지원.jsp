<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
<head>
    <title></title>
<link href="../resources/css/나의카드.css" rel="stylesheet" type="text/css"/>
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
        width: 37%;
       	position: relative !important;
    	left: 50px !important;
    	top: 0px !important;
    }
    
   li{
        padding: 3px 3px 3px 8px;
	
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
.a-hidden:hover {
    color: skyblue;
}
.num-style{
    list-style: decimal;

}

</style>
<body>
<jsp:include page="lookMenu.jsp"/>

    <div class="content">
    <h2 class="content-title"><span class="content-title-bar"></span>실업자 내일배움카드 지원혜택</h2>
    <ul>
        <li>
            <span class="li-dot"></span>
            <strong>훈련비</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    <strong>최대 200만 원</strong>
                </li>
                <li>
                    <span class="li-line"></span>
                    실업자 내일배움카드의 한도 내에서 일반실업자의 경우 훈련비의 20~95%가 지원됩니다.
                </li>
                <li>
                    <span class="li-line"></span>
                    국가기간전략산업직종훈련을 수강할 경우 카드한도와 무관하게 훈련비가 전액 지원됩니다.
                </li>
                <li>
                    <span class="li-line"></span>
                    훈련비 결제 시, 훈련분야별 취업률에 따른 자비부담률은 아래와 같습니다.
                </li>
                <li class="no-styles">
                    <div class="table-wrapper">
                        <table>
                            <colgroup>
                                <col width="10%">
                                <col width="11%">
                                <col width="11%">
                                <col width="11%">
                                <col width="11%">
                                <col width="11%">
                            </colgroup>
                            <tbody><tr>
                                <th class="wth20p" rowspan="2">대상자</th>
                                <th colspan="5">훈련분야별 취업률</th>
                            </tr>
                            <tr>
                                <th class="wth16p">
                                    70%~
                                </th>
                                <th class="wth16p">
                                    55% ~ 60%
                                </th>
                                <th class="wth16p">
                                    45% ~ 54%
                                </th>
                                <th class="wth16p">
                                    35% ~ 43%
                                </th>
                                <th class="wth16p">
                                    0% ~ 35%
                                </th>
                            </tr>
                            <tr class="text-center">
                                <th>일반 실업자</th>
                                <td>5%</td>
                                <td>10%</td>
                                <td>30%</td>
                                <td>50%</td>
                                <td>80%</td>
                            </tr>
                            <tr class="text-center">
                                <th>1유형 참여자</th>
                                <td>0%</td>
                                <td>0%</td>
                                <td>0%</td>
                                <td>0%</td>
                                <td>10%</td>
                            </tr>
                            <tr class="text-center">
                                <th>2유형 참여자</th>
                                <td>5%</td>
                                <td>10%</td>
                                <td>20%</td>
                                <td>30%</td>
                                <td>50%</td>
                            </tr>
                        </tbody></table>
                    </div>
                </li>
            </ul>
        </li>
        <li class="mt20">
            <span class="li-dot"></span>
            <strong>훈련장려금(식비 및 교통비)</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    1일 훈련시간이 5시간 미만인 경우: 일별 2,500원 지급. 단위기간 동안 최대 50,000원 지급
                </li>
                <li>
                    <span class="li-line"></span>
                    1일 훈련시간이 5시간 이상인 경우: 일별 5,800원 지급. 단위기간 동안 최대 116,000원 지급
                </li>
                <li>
                    <span class="li-line"></span>
                    지급방법: 훈련생 대신 훈련기관에서 일괄신청하며 훈련생의 계좌로 수당이 자동지급 됩니다.
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>자비부담금 환급</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    <strong>정부지원금 내 자비부담금 전액 환급</strong><br>
                    실제훈련비와 정부지원금의 차액은 환급대상에서 제외됩니다. 
                </li>
                <li>
                    <span class="li-line"></span>
                    <strong>취업자</strong><br>훈련 종료일 다음 날 기준으로 6개월 이내에 훈련받은 분야와 동일 또는 관련 분야에 취업하여 6개월 이상 근속할 경우 자비로 납부한 금액 전액이 환급됩니다.
                </li>
                <li>
                    <span class="li-line"></span>
                    <strong>창업자</strong><br>훈련 종료일 다음 날 기준으로 6개월 이내에 창업을 하여 6개월 이상 창업을 유지할 경우 자비로 납부한 금액 전액이 환급됩니다.
                </li>
                <li>
                    <span class="li-line"></span>
                    자비부담액 환급신청서(다운로드) 및 증빙서류를 관할 고용센터에 제출합니다.
                </li>
                <li>
                    <span class="li-line"></span>
                    자비부담액 환급 신청 시 <strong>취업자 구비서류</strong>는 아래와 같습니다.
                    <div class="footnote-box">
                        <div class="footnote-box-un">
                            <strong>1)고용보험 가입 사업장에 취업한 경우</strong><br>
                            - 고용보험 피보험자격 취득증명서<br>
                            <strong>2) 고용보험 미가입 사업장에 취업한 경우</strong><br>
                            - 사업주의 사업자등록증명원<br>
                            - 근로계약서 또는 재직증명서<br>
                            - 임금명세서 및 통장사본 또는 원천징수이행영수증
                        </div>
                    </div>
                </li>
                <li>
                    <span class="li-line"></span>
                    자비부담액 환급 신청 시 <strong>창업자 구비서류</strong>는 아래와 같습니다.
                    <div class="footnote-box">
                        <div class="footnote-box-un">
                            - 사업자등록증, 임대차계약서 등 자영업활동을 객관적으로 증명할 수 있는 자료<br>
                            - 과세표준증명원
                        </div>
                    </div>
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
