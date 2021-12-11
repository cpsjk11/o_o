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
        width: 34%;
       	position: relative !important;
    	left: 50px !important;
    	top: 0px !important;
    }
    ul{
        margin: 10px 0;
		
    }
    table{
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
.padding{
        margin: 15px 0;
        list-style: none;
    }
    .list-st{
        list-style: square;
    }

</style>
<body>
<jsp:include page="lookMenu.jsp"/>
   <div class="content">
   <jsp:include page="lookCategory.jsp"/>
		<h2 class="content-title">
			<span class="content-title-bar"></span>
			근로자 직업능력개발훈련 개요
		</h2>
		<ul>
			<li class="padding">
				<span class="li-dot"></span>
				2014년 4월 15일부터 재직자 내일배움카드제, 근로자 직무능력향상훈련은 근로자 직업능력개발훈련으로 통합 되었으며,<br/> 근로자 직업능력개발카드를 발급받은 후 훈련을 수강할 수 있습니다.
				<div class="footnote-box">
					<div class="footnote-box-un">
						재직자 내일배움카드 = 근로자 직업능력개발카드 
					</div><!-- footnote-box-un -->				
				</div><!-- footnote-box -->
			</li>
			<li class="padding">
				<span class="li-dot"></span>
				근로자 직업능력개발훈련은 근로자의 직무능력 향상과 경쟁력 강화를 도모하기 위해 근로자가 자율적으로 직업능력<br/>개발훈련에 참여할 경우 훈련수강비용의 일부를 지원해 주는 제도입니다.
			</li>
			<li class="padding">
				<span class="li-dot"></span>
				근로자 직업능력개발훈련은 원칙적으로 근로자 직업능력개발카드를 발급받은 자가 받을 수 있는 훈련이나, 실업자 <br/>내일배움카드를 발급받은 자 또한 일정 조건을 충족하는 경우에 한하여 참여를 허용하고 있습니다.
			</li>
			<li class="padding">
				<span class="li-dot"></span>
				아래 요건이 만족되는 경우 실업자 내일배움카드 소지자는 실업자 내일배움카드를 이용하여 근로자 직업능력개발훈련에<br/> 참여할 수 있습니다.
				<div class="footnote-box">
					<div class="footnote-box-un">
						<ul>
							<li class="list-st">
								<span class="li-dot-3"></span>
								훈련과정이 10일 및 40시간 이상에 해당하는 경우
							</li>
							<li class="list-st">
								<span class="li-dot-3"></span>
								해당 지역 내 동일한 분야의 실업자 훈련과정이 개설되어 있지 않거나, 또는 기존 운영 중인 실업자 훈련과정에 시간대가<br/> 맞지 않아 참여가 어려운 경우 등 본 훈련과정으로의 참여가 불가피한 경우
							</li>
							<li class="list-st">
								<span class="li-dot-3"></span>
								고용센터 훈련상담을 통해 훈련참여의 필요성이 인정 되는 경우
							</li>
							<li class="list-st">
								<span class="li-dot-3"></span>
								훈련과정의 승인된 참여정원 중 50% 범위 내에서 참여 가능
							</li>
						</ul>
					</div>
				</div>
			</li>
			<li class="padding">
				<span class="li-dot"></span>
				임의보험에 가입한 자영업자도 고용보험료를 체납하지 않은 경우 근로자 직업능력개발카드를 발급받으실 수 있습니다.
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
