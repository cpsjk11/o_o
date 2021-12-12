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
.no-style{
    list-style: none;
}
.font-color{
    color: #9f9f9f;
    font-size: small;
}
.list-O{
    list-style: disc;
}
.list-width{
    width: 100%;
    margin-left: 3%;
}
.list-margin{
    margin: 10px 0;
    list-style: disc;
}

.font-margin{
    margin: 7px 0;
}


</style>
<body>
<jsp:include page="lookMenu.jsp"/>
    <div class="content">
    <jsp:include page="lookCategory.jsp"/>
    <h2 class="content-title">
        <span class="content-title-bar"></span>
        사업주 직업능력개발훈련 개요
    </h2>
    <ul class="list-width">
        <li class="list-margin">
            <span class="li-dot"></span>

                <div class="font-margin">사업주 직업능력개발훈련이란 사업주(사업장 대표)가 소속근로자 등을 대상으로 직업능력개발훈련</div>

                <div class="font-margin">을 직접 또는 훈련기관에 위탁하여 실시할 때, 이에 사용되는 비용의 일부를 지원함으로써 근로자의</div>
                    
                <div class="font-margin">직무능력향상과 기업의 경쟁력 제고를 도모하는 제도입니다.</div>        
        </li>
        <li class="list-margin">
            <span class="li-dot"></span>
            <div class="font-margin">사업주 직업능력개발훈련에 참여하는 대상자(사업장 소속근로자 등)는 훈련비용뿐만 아니라 경우에</div>
            
            <div class="font-margin">따라 훈련수당 또는 숙식비 등의 혜택도 사업주에 의해 제공받을 수 있습니다.</div>
        </li>
        <li class="list-margin">
            <span class="li-dot"></span>
            <div class="font-margin">직무수행능력이 아니라 취미활동∙오락∙스포츠 등을 목적으로 하거나 단순한 정보교류활동인 세미나</div>
            
            <div class="font-margin">∙심포지엄 등은 직업능력개발훈련으로 볼 수 없습니다.</div>
        </li>
        <li class="list-margin">
            <span class="li-dot"></span>
            <div class="font-margin">훈련대상자에는 일용근로자, 재직근로자, 채용예정자, 구직자 등이 있으며, 사업주는 훈련을 실시함</div>
            
            <div class="font-margin">으로써 훈련비를 부담하고 지원금을 받는 대상이므로 훈련에 참여할 수 없습니다.</div>
        </li>
        <!-- 실업자, 학생  -->
        
        <!-- 실업자, 학생 -->
        <!-- 사업주 -->
        
        <!-- 사업주 -->
        
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
