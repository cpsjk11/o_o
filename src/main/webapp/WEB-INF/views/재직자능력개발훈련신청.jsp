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
       width: 39%;
         position: relative !important;
      left: 50px !important;
      top: 0px !important;
   }
   ul{
      
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


</style>
<body>
<jsp:include page="lookMenu.jsp"/>
     <div class="content">
     <jsp:include page="lookCategory.jsp"/>
    <h2 class="content-title"><span class="content-title-bar"></span>근로자 직업능력개발훈련 신청방법</h2>
    <ul>
        <li>
            <span class="li-dot"></span>
            <strong>방문접수</strong><br>거주지 또는 소속 사업장 관할 고용센터에 방문하셔서 신청하실 수 있습니다.
            <br/>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>온라인 접수</strong>
            <ul class="no-style">
                <li>
                    1. <a href="http://www.hrd.go.kr/hrdp/ma/pmmao/index.do" target="_blank">HRD-Net</a> 접속 후 공인인증서 로그인
                </li>
                <li>
                    2. 우측 근로자 섹션에서 "내일배움카드 신청" 클릭
                </li>
                <li>
                    3. HRD-Net의 가이드에 따라 정보 입력 후 카드 신청
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>필요서류</strong>
            <ul class="no-style">
                <li>
                    1. 근로자 직업능력개발카드 발급 신청서
                </li>
                <li>
                    2. 개인정보의 수집·이용 및 제공에 관한 동의서
                </li>
                <li>
                    3. 발급 대상자임을 증빙할 수 있는 자료
                    <div class="font-color">
                        <div>
                            <ul class="list-O">
                                <li>
                                    <span class="li-dot-3"></span>
                                    근로계약서(기간제, 단시간, 파견근로자)
                                </li>
                                <li>
                                    <span class="li-dot-3"></span>
                                    해고예고 통지서 또는 근로계약서(이직 예정인 근로자)
                                </li>
                                <li>
                                    <span class="li-dot-3"></span>
                                    휴직원, 노동위원회의 무급 휴업 심의 의결 통보서 등(무급 휴직 중인 사람)
                                </li>
                                <li>
                                    <span class="li-dot-3"></span>
                                    기타 카드발급 대상자임을 증빙할 수 있는 서류
                                </li>
                            </ul>
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
        $(".to1").text("근로자 직업능력개발훈련 ☝");
        $(".to2").text("사업주 직업능력개발훈련 👇");
        $(".to3").text("핵심직무능력향상훈련 👇");
        count += 1;
        if(count%2 == 0)
        $(".to1").text("근로자 직업능력개발훈련 👇");
    });
    $(".to2").bind("click",function(){
         $(".m-unit-body").slideUp(300);
    	 $(".m-unit-body2").slideToggle(300);
         $(".m-unit-body3").slideUp(300);
         $(".to1").text("근로자 직업능력개발훈련 👇");
         $(".to2").text("사업주 직업능력개발훈련 ☝");
         $(".to3").text("핵심직무능력향상훈련 👇");
         count2 += 1;
         if(count2%2 == 0)
        $(".to2").text("사업주 직업능력개발훈련 👇");
    });
    $(".to3").bind("click",function(){   
        $(".m-unit-body").slideUp(300);
        $(".m-unit-body2").slideUp(300);
    	$(".m-unit-body3").slideToggle(300);
        $(".to1").text("근로자 직업능력개발훈련 👇");
        $(".to2").text("사업주 직업능력개발훈련 👇");
        $(".to3").text("핵심직무능력향상훈련 ☝");
        count3 += 1;
        if(count2%3 == 0)
       $(".to3").text("핵심직무능력향상훈련 👇");
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
