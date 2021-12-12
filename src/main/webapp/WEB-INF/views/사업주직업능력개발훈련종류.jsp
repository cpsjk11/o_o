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
       height: 750px;
       width: 900px;
       margin: 145px 550px;
       font-size: medium;
   }
 
   .style{
       list-style: none;
   }
 
   table{
       border-collapse: collapse;
       width: 100%;
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
   .text-center{
       
       text-align: center;
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
   
  strong{
      display: inline-block;
      margin-bottom: 5px;
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
   list-style-type: disc;
   margin: 10px 0;
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
.no-style{
    list-style: none;
}
.font-color{
    color: #9f9f9f;
    font-size: small;
}
.list-O{
    list-style: disc;
    margin-left: -32px;
}
.num-style{
        list-style: decimal;
    
    }
    .no-style{
        list-style: none;
        text-align: left;
        margin: 10px 0;
    }
    .no-style-margin{
        margin: 5px 0;
        list-style: none;
    }
    .margin-left{
        margin-left: -40px;
    }
li{
	margin: 0 0 !important;
}


</style>
<body>
<jsp:include page="lookMenu.jsp"/>
     <div class="content">
      <jsp:include page="lookCategory.jsp"/>
		<h2 class="content-title"><span class="content-title-bar"></span>사업주 직업능력개발훈련 종류</h2>
		<ul>
			<li>
				<span class="li-dot"></span>
				<strong>집체훈련(집합교육)</strong>
				<ul class="no-margin-li">
					<li class="no-style">
						<span class="li-line"></span>
						훈련전용시설 등 훈련을 실시하기 적합한 시설에서 실시하는 훈련(산업체의 생산시설 및 근무장소 제외)
					</li>
				</ul>
			</li>
			<li>
				<span class="li-dot"></span>
				<strong>원격훈련(인터넷원격훈련, 스마트원격훈련, 우편원격훈련)</strong>
				<ul class="no-margin-li">
					<li class="no-style">
						<span class="li-line"></span>
						인터넷원격훈련: 정보통신매체를 활용하여 훈련이 실시되고 훈련생 관리 등이 웹 상으로 이루어지는 훈련
					</li>
					<li class="no-style">
						<span class="li-line"></span>
						스마트원격훈련: 위치기반서비스, 가상현실 등 스마트 기기의 기술적 요소를 활용하거나 특성화된 교수방법을 적용하여 원격 등의 방법으로 훈련이 실시되고 훈련생 관리 등이 웹 상으로 이루어지는 훈련
					</li>
					<li class="no-style">
						<span class="li-line"></span>
						우편원격훈련: 인쇄매체로 된 훈련교재를 이용하여 훈련이 실시되고 훈련생 관리 등이 웹 상으로 이루어지는 훈련
					</li>
				</ul>
			</li>
			<li>
				<span class="li-dot"></span>
				<strong>현장훈련</strong>
				<ul class="no-margin-li">
					<li class="no-style">
						<span class="li-line"></span>
						산업체의 생산시설이나 근무 장소에서 실시하는 훈련(단, 해당 장소는 훈련생이 직무를 수행할 물리적 공간 또는 시설을 의미하며, 반드시 훈련생이 종사할 시설 또는 장소와 물리적으로 일치할 필요는 없음. 훈련생이 향후 수행할 직무와의 관련성을 기준으로 판단)
					</li>
				</ul>
			</li>
			<li>
				<span class="li-dot"></span>
				<strong>혼합훈련</strong>
				<ul class="no-margin-li">
					<li class="no-style">
						<span class="li-line"></span>
						집체훈련, 현장훈련 및 원격훈련 중에서 두 종류 이상의 훈련을 병행하여 실시하는 훈련
					</li>
				</ul>
			</li>
			<li>
				<span class="li-dot"></span>
				<strong>유급휴가훈련</strong>
				<ul class="no-margin-li">
					<li class="no-style">
						<span class="li-line"></span>
						사업주가 「근로기준법」상의 연차 유급휴가 이외에 별도로 근로자에게 일정기간 이상의 유급휴가를 주어 실시하는 훈련
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
