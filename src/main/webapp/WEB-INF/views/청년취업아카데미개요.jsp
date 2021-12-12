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
           height: 500px;
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
            width: 26%;
              position: relative !important;
           left: 40px !important;
           top: 0px !important;
        }
        ul{
            margin: 10px 0;
          
        }
        .ta{
            width: 100%;
            margin: 25px 0;
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
    .margin-list{
        margin: 10px 0;
        list-style: disc;
    }
    .no-style-center{
        list-style: none;
    }

</style>
<body>
<jsp:include page="lookMenu.jsp"/>
     <div class="content">
     <jsp:include page="lookCategory.jsp"/>
		<h2 class="content-title">
			<span class="content-title-bar"></span>
			청년취업아카데미 개요
		</h2>
		<ul>
			<li class="margin-list">
				<span class="li-dot"></span>
				청년취업아카데미는 취업희망 청년층이 급격하게 증가함에 따라 발생하는 일자리 미스매칭 현상을 줄이기 위한 제도입니다.
			</li>
			<li class="margin-list">
				<span class="li-dot"></span>
				기업∙사업주단체 등 운영기관이 협력하여 산업현장에서 요구하는 맞춤형 교육과정을 제공하며, 참여기업에 취업을 연계시키는<br/>구조로 운영됩니다.
			</li>
			<li class="margin-list">
				<span class="li-dot"></span>
				교육생 모집 및 선발은 청년취업아카데미 기관에서 이루어지며, 교육생 자격은 대학 재학생부터 대학 졸업자까지 최대 만 34세<br/>미취업자에게 해당됩니다.
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
    $(".to1").bind("click",function(){
        $(".m-unit-body").slideToggle(300);
        $(".m-unit-body2").slideUp(300);
        $(".m-unit-body3").slideUp(300);
        $(".m-unit-body4").slideUp(300);
        $(".m-unit-body5").slideUp(300);
        $(".to1").text("취업성공패키지 ☝");
        $(".to2").text("실업자 내일배움카드 👇");
        $(".to3").text("국가기간전략산업직종훈련 👇");
        $(".to4").text("청년취업아카데미 👇");
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
        $(".to4").text("청년취업아카데미 👇");
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
        $(".to4").text("청년취업아카데미 👇");
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
        $(".to4").text("청년취업아카데미 ☝");
        count4 += 1;
        if(count4%2 == 0)
        $(".to4").text("청년취업아카데미 👇");
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
