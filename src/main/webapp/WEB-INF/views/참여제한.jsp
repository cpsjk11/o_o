<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
<head>
    <title></title>
    <link href="../resources/css/css.css" rel="stylesheet" type="text/css"/>
	<link href="../resources/css/나의카드.css" rel="stylesheet" type="text/css"/>
	
</head>
<style>
    
    body{
        width: 2000px;
    }
    header{
    	top: 0;
    }
    
    footer{
    	bottom: 0;
    }

    .content{
        width: 900px;
        margin: 145px auto;
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
        width: 25%;
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
        width: 31%;
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
    table{
        width: 100%;
    }
	

/*    <!-- 여기는 좌측 메뉴바 css --> */
  .leftBox {
  
  padding: 0px;
  margin-left: 200px;
  margin-top: 150px;
  width: 205px;
  background: #fff;
  
}
#bbb_left{
	position: absolute;
	top: 0;
}
.left{
	list-style: none;
}

.left li a {
  text-decoration: none !important;
  padding: 10px !important;
  display: block !important;
  color: #000 !important;
  font-weight: bold !important;
}

.left li .m-bullet {
  background : #333;
  color: #fff;
}

.cd1 {
  margin-left: 120px;
}
.m-unit-title{
    width: 100%;
    text-align: center;
    line-height: 45px;
    background-color: #efefef;
    font-size: 13px;
 
}
.up{
    display: none;
}
#menu_wrapper{
    border: 1px solid #efefef; 
}
#footer{
	position: inherit;

}
.no-style{
    list-style-position: outside;
}
.no-styles{
    list-style: none;
}
.li-dot{
    font-size: 15px;
}
.no-l_style{
	list-style: none;
	font-size: 14px;
	font-weight: bold;
	width: 100%;
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

    <div id="bbb_left" class="leftBox">
        <div id="menu_wrapper">
            
            <div class="m-unit item7 ">
                <div class="m-unit-title to1">취업성공패키지&nbsp;&nbsp;👇</div>
                <div class="m-unit-body up">
                    <ul class="left">
                        <li class="mul1 "><a href="look2">개요</a></li>
                        <li class="mul2 "><a href="look3">프로그램 구성</a></li>
                        <li class="mul3 "><a href="look4">지원혜택</a></li>
                        <li class="mul4 "><a href="look5">신청자격</a></li>
                        <li class="mul5 "><a href="look6">신청방법</a></li>
                        <li class="mul6 "><a href="look7">참여제한</a></li>
                        <li class="mul7 "><a href="look8">재참여</a></li>
                    </ul>
                </div><!-- m-unit-body -->
            </div>
            
            
            <div class="m-unit item5 ">
                <div class="m-unit-title to2">실업자 내일배움카드&nbsp;&nbsp;👇</div>
                <div class="m-unit-body2 up">
                    <ul class="left">
                        <li class="mul1 "><a href="card1">개요</a></li>
                        <li class="mul2 "><a href="card2">지원혜택</a></li>
                        <li class="mul3 "><a href="card3">발급자격</a></li>
                        <li class="mul4 "><a href="card4">신청방법</a></li>
                        <li class="mul5 "><a href="card5">재발급</a></li>
                    </ul>
                </div><!-- m-unit-body -->
            </div>
            
            
            <div class="m-unit item4 on">
                <div class="m-unit-title to3">국가기간전략산업직종훈련&nbsp;&nbsp;👇</div>
                <div class="m-unit-body3 up">
                    <ul class="left">
                        <li class="mul1 "><a href="country1">개요</a></li>
                        <li class="mul2 "><a href="country2">지원혜택</a></li>
                        <li class="mul3 "><a href="country3">지원자격</a></li>
                        <li class="mul4"><a href="country4">훈련분야</a></li>
                    </ul>
                </div><!-- m-unit-body -->
            </div>
            
            
            <div class="m-unit item5 ">
                <div class="m-unit-title to4">일학습병행제&nbsp;&nbsp;👇</div>
                <div class="m-unit-body4 up">
                    <ul class="left">
                        <li class="mul1 "><a href="#">개요</a></li>
                        <li class="mul2 "><a href="#">훈련대상자</a></li>
                        <li class="mul3 "><a href="#">운영절차</a></li>
                        <li class="mul4 "><a href="#">신청방법</a></li>
                        <li class="mul5 "><a href="#">기업참여조건</a></li>
                    </ul>
                </div><!-- m-unit-body -->
            </div>
            
            
            
            <div class="m-unit item4 ">
                <div class="m-unit-title to5">고용디딤돌&nbsp;&nbsp;👇</div>
                <div class="m-unit-body5 up">
                    <ul class="left">
                        <li class="mul1 "><a href="#">개요</a></li>
                        <li class="mul2 "><a href="#">참여대상자</a></li>
                        <li class="mul3 "><a href="#">운영절차</a></li>
                        <li class="mul4 "><a href="#">참여신청</a></li>
                    </ul>
                </div><!-- m-unit-body -->
            </div>
            
            
            
            
        </div><!-- menu_wrapper -->
    </div><!-- bbb_left -->

    <div class="content">
    <h2 class="content-title"><span class="content-title-bar"></span>취업성공패키지 참여제한</h2>
    <ul>
        <li class="num-style">
            <span class="li-dot"></span><strong>재정지원 일자리 사업에 참여중인 자</strong><br><br>고용노동부, 타 부처 및 자치단체의 재정지원일자리사업(직업훈련 등 포함)에 참여하고 있는 자의 경우 취업성공패키지 참여가 제한됩니다.
            <ul class="no-margin-li">
                <li><span class="li-line"></span>다만, 재정지원일자리사업 중 주 30시간 미만의 시간제∙간헐적 일자리 사업에 참여하고 있는 자는 취업성공패키지 사업 참여 허용(자활사업 참여자는 주 30시간 미만인 자도 참여 제한)</li>
                <li><span class="li-line"></span>재정지원일자리(자활근로, 공공근로 등)를 종료한 경우에는 바로 사업에 참여할 수 있음</li>
                <li><span class="li-line"></span>훈련기간이 6개월 이상인 국가기간산업∙전략직종훈련 수료자는 수료 후 6개월 이후부터 참여 가능(단, 국가기간산업∙전략직종훈련 중단∙미수료자는 바로 참여 가능)</li>
            </ul>
        </li>
        <li class="num-style">
            <span class="li-dot"></span><strong>취업자</strong><br><br>취업한 자는 원칙적으로 참여를 제한하되, 취업성공패키지 참여신청일 이전 4주간 평균하여 근로시간이 주 30시간 미만인 자로서 현재의 취업상태보다 더 나은 직장을 희망하는 경우 참여가 허용됩니다.
            <ul class="no-margin-li">
                <li><span class="li-line"></span>재정지원일자리 취업의 경우 고용보험에 가입하였어도 재참여 제한 기준의 취업으로 보지 않음</li>
                <li><span class="li-line"></span>취업성공패키지 운영 중 참여자의 주 30시간 이상 일용근로 사실을 알게 되었을 때, 참여자가 더 나은 일자리 취업을 희망하는 경우 취업지원을 계속하고 그렇지 않은 경우 취업처리(훈련참여 지원수당은 일용근로일과 훈련일이 중복되지 않는 날에 한해서만 지급됨)</li>
            </ul>
        </li>
        <li class="num-style">
            <span class="li-dot"></span><strong>대학∙대학원 재학생</strong><br><br>주간 전일제 대학∙대학원생은 참여 제한. 단, 마지막 학년 재학생의 경우 참여 가능
        </li>
        <li class="num-style">
            <span class="li-dot"></span><strong>정상적인 참여가 곤란한 자</strong><br><br>심신상의 이유 및 기타 고용센터장이 판단하기에 정상적인 사업 참여가 곤란하다고 판단되는 자는 원칙적으로 참여를 제한할 수 있음. 단, 판단이 곤란한 경우 위원회를 구성하여 참여여부 결정
        </li>
        <li class="num-style">
            <span class="li-dot"></span><strong>외국인</strong><br><br>결혼이민자 및 결혼이민자의 외국인 (중도입국) 자녀를 제외하고는 대한민국 국적을 보유하지 않은 외국인 참여 불가
        </li>
        <li class="num-style">
            <span class="li-dot"></span><strong>기타</strong><br><br>취업의사가 없거나, 훈련참여 및 수당 수급만을 목적으로 참여를 희망하는 자 등 고용센터장이 취업성공패키지 참여가 어렵다고 판단하는 자
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
