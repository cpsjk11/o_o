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
<link href="../resources/css/lookCategory.css" rel="stylesheet" type="text/css"/>
<link href="../resources/css/lookMenu.css" rel="stylesheet" type="text/css"/>
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
.left a:hover {
    color: skyblue;
}
.go_hrd:hover {
    color: skyblue;
}
.num-style{
    list-style: decimal;

}

</style>
<body>
<jsp:include page="lookMenu.jsp"/>

    <div class="content">
    <h2 class="content-title"><span class="content-title-bar"></span>실업자 내일배움카드 신청방법 및 구비서류</h2>
    <ul>
        <li>
            <span class="li-dot"></span>
            신분증 지참 후 거주지 주변 고용센터에 방문하시어 신청하실 수 있으며,<br/> 고용센터 방문 시 지참하셔야 할 서류는 아래와 같습니다.
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    <strong>실업자훈련 동영상 시청확인증</strong><br>
                    HRD-Net(<a href="http://www.hrd.go.kr/" class="go_hrd">바로가기</a>) 로그인 후 실업자훈련 동영상 시청 완료 시 발급 가능
                </li>
                <li>
                    <span class="li-line"></span>
                    <strong>구직등록필증</strong><br>
                    워크넷(<a href="http://www.work.go.kr/" class="go_hrd">바로가기</a>) 로그인 후 구직등록 시 발급 가능
                </li>
                <li>
                    <span class="li-line"></span>
                    <strong>취업활동 증명서</strong><br>
                    구직활동(재취업) 2회 이상 후 발급 가능
                </li>
                <li>
                    <span class="li-line"></span>
                    <strong>본인명의 통장(농협 또는 신한)</strong>
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
