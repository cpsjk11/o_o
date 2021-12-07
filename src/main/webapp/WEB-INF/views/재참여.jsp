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
        width: 28%;
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
    <h2 class="content-title"><span class="content-title-bar"></span>취업성공패키지 재참여</h2>
    <ul>
        <li>
            <span class="li-dot"></span>취업성공패키지 재참여 시 과거 취업성공패키지 총 참여횟수, 직전회차의 종료성과(중도탈락, 미취업, 취업근속기간)에 따라 재참여 제한기간에 차이가 발생합니다.
            <div class="footnote-box">
                <div class="footnote-box-un">
                    <ul class="no-margin-li">
                        <li><span class="li-dot-3"></span>생계급여수급자 여부 판단은 패키지 신청시점 당시의 신분으로 판단</li>
                        <li><span class="li-dot-3"></span>취업의 기준은 고용보험가입 일자리에 한하며, 취업기간은 피보험자격 취득기간으로 산정</li>
                        <li><span class="li-dot-3"></span>퇴사일은 사업 참여를 통한 최초 취∙창업의 이직일</li>
                        <li><span class="li-dot-3"></span>고용보험 미가입 사업장 취업자(일반 취업자)의 경우 기간만료자로 간주하며 기간만료 산정기준일은 취업성공패키지 종료일로 함</li>
                        <li><span class="li-dot-3"></span>폐업일은 폐업사실 증명원으로 확인</li>
                    </ul>
                </div>
            </div>
        </li>
        <li>
            <span class="li-dot"></span><strong>생계급여수급자 재참여 제한기간</strong>
            <div >
                <table class="ta">
                    <colgroup>
                        <col width = "20%">
                        <col width = "20%">
                        <col width = "20%">
                        <col width = "20%">
                        <col width = "20%">
                    </colgroup>
                    <tbody><tr>
                        <th>회차/종료성과</th>
                        <th >중도탈락</th>
                        <th >기간만료</th>
                        <th >3개월 미만 취업</th>
                        <th >3개월 이상 취업</th>
                    </tr>
                    <tr>
                        <th>2회차 참여</th>
                        <td>1년</td>
                        <td>9개월</td>
                        <td>6개월</td>
                        <td>3개월</td>
                    </tr>
                    <tr>
                        <th>3회차 참여</th>
                        <td>1년 6개월</td>
                        <td>1년</td>
                        <td>9개월</td>
                        <td>6개월</td>
                    </tr>
                    <tr>
                        <th>4회차 이상</th>
                        <td>2년</td>
                        <td>1년 6개월</td>
                        <td>1년</td>
                        <td>9개월</td>
                    </tr>
                    <tr>
                        <th>신청기준일</th>
                        <td>사유발생일</td>
                        <td>사유발생일</td>
                        <td>퇴사일(폐업일)</td>
                        <td>퇴사일(폐업일)</td>
                    </tr>
                </tbody></table>
            </div>
        </li>
        <li class="mt20">
            <span class="li-dot"></span><strong>생계급여수급자 외 일반참여자 재참여 제한기간</strong>
            <div>
                <table class="ta">
                    <colgroup>
                        <col width = "20%">
                        <col width = "20%">
                        <col width = "20%">
                        <col width = "20%">
                        <col width = "20%">
                    </colgroup>
                    <tbody><tr>
                        <th >회차/종료성과</th>
                        <th >중도탈락</th>
                        <th >기간만료</th>
                        <th >3개월 미만 취업</th>
                        <th >3개월 이상 취업</th>
                    </tr>
                    <tr>
                        <th>2회차 참여</th>
                        <td>1년 6개월</td>
                        <td>1년</td>
                        <td>9개월</td>
                        <td>6개월</td>
                    </tr>
                    <tr>
                        <th>3회차 참여</th>
                        <td>2년</td>
                        <td>1년 6개월</td>
                        <td>1년</td>
                        <td>9개월</td>
                    </tr>
                    <tr>
                        <th>4회차 이상</th>
                        <td>2년 6개월</td>
                        <td>2년</td>
                        <td>1년 6개월</td>
                        <td>1년</td>
                    </tr>
                    <tr>
                        <th>신청기준일</th>
                        <td>사유발생일</td>
                        <td>사유발생일</td>
                        <td>퇴사일(폐업일)</td>
                        <td>퇴사일(폐업일)</td>
                    </tr>
                </tbody></table>
            </div>
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
