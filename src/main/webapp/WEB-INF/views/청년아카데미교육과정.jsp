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
           height: 700px;
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
            height: 50px;
        }
        .text-center{
            
            text-align: center;
        }
        #header{
            margin: 10px 0 ;
        }
        .content-title{
           border-bottom: 2px solid skyblue;
            width: 44%;
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
    }
    .no-style-center{
        list-style: none;
    }
    .width-650{
        width: 650px;
    }
    strong{
        display: inline-block;
        margin: 10px 0;
    }

</style>
<body>
<jsp:include page="lookMenu.jsp"/>
     <div class="content">
      <jsp:include page="lookCategory.jsp"/>
		<h2 class="content-title"><span class="content-title-bar"></span>청년취업아카데미 교육과정 및 취업연계</h2>
		<ul>
			<li>
				<span class="li-dot"></span>
				<strong>교육과정</strong><br>
				청년취업아카데미 교육과정은 연수과정과 창직과정으로 나누어 진행되며, 취업희망청년과 기업 모두를 위한 실무교육 중심 과정입니다.
				<ul class="no-margin-li">
					<li class="no-style">
						<span class="li-line"></span>
						<strong>연수과정</strong><br>
						기업 및 사업주 단체가 직접 산업현장에서 요구하는 맞춤형 교육과정을 제공하여 청년고용 창출을 지원하는 프로그램입니다. 연수과정은 지역특화 인재양성, 대∙중소기업 협력, 신성장동력 인재양성, 인문사회계열 특화 모델 등을 운영합니다.
					</li>
					<li class="no-style">
						<span class="li-line"></span>
						<strong>창직과정</strong><br>
						문화∙예술∙콘텐츠 분야 등에서 청년이 도전적이고 창의적인 활동을 통해 개인의 직업능력을 향상시키고 사회적으로 새로운 일자리를 창출할 수 있도록 지원하는 프로그램입니다.
					</li>
				</ul>
			</li>
			<li  class="no-style">
				<span class="li-dot"></span>
				<strong>취업연계</strong><br>
				청년취업아카데미는 교육과정 후 취업연계와 사후 관리를 제공합니다.
			</li>
			<li  class="no-style">
				<div>
					<table>
						<tbody><tr>
							<th class="wth30p">기간</th>
							<th class="wth50p">주요 수행업무</th>
							<th class="wth20p">비고</th>
						</tr>
						<tr>
							<td>수료 후 6개월까지</td>
							<td>약정 취업률에 따라 적극적 취업연계 활동(의무)</td>
							<td>의무기간</td>
						</tr>
						<tr>
							<td>수료 후 1년까지</td>
							<td>고용 유지율, 경력루트 추적 및 관리 등</td>
							<td>권장</td>
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
