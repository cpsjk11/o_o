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
    list-style: decimal;
    margin: 10px 0 10px -18px;
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
        margin: 10px 0;
        list-style: decimal;
    }
    .list-st{
        list-style: square;
    }
.no-style{
       list-style: none;
   }
   .text-center{
       text-align: center;
   }
   .list-leftmargin{
   		margin-left: -15px;
   }

</style>
<body>
<jsp:include page="lookMenu.jsp"/>
     <div class="content">
     <jsp:include page="lookCategory.jsp"/>
		<h2 class="content-title"><span class="content-title-bar"></span>근로자 직업능력개발훈련 신청자격</h2>
		<!-- 재직자 -->
		
		<ul class="no-padding">
			<li class="no-style">
				근로자 직업능력개발카드를 발급 받기 위해서는 고용보험에 가입되어 있어야 하며, 아래 요건 중 어느 하나에<br/> 해당되어야 합니다.
			</li>
		</ul>
		<ul>
			<li  class="no-style">
				<span class="li-dot"></span>
				<strong>재직자 A유형(훈련비 100% 지원)</strong>
				<ul class="no-margin-li">
					<li class="padding">
						<span class="li-line"></span>
						우선지원대상기업 근로자
					</li>
					<li class="padding">
						<span class="li-line"></span>
						기간제 근로자
					</li>
					<li class="padding">
						<span class="li-line"></span>
						단시간 근로자(1주 동안의 소정근로시간이 36시간 미만인 자)
					</li>
					<li class="padding">
						<span class="li-line"></span>
						파견근로자
					</li>
					<li class="padding">
						<span class="li-line"></span>
						일용근로자(90일 이내에 10일 이상 일용 근로한 사실이 있는 자)
					</li>
					<li class="padding">
						<span class="li-line"></span>
						자영업자(고용보험료를 체납하지 않은 자)
					</li>
					<li class="padding">
						<span class="li-line"></span>
						180일 이내에 이직 예정인 자(우선지원대상기업에 고용된 사람에 한함)
					</li>
					<li class="padding">
						<span class="li-line"></span>
						경영상의 이유로 90일 이상 무급 휴직 중인 자
					</li>
				</ul>
			</li>
			<li class="no-style">
				<span class="li-dot"></span>
				<strong>재직자 B유형(훈련비 80% 지원)</strong>
				<ul class="no-margin-li">
					<li class="padding">
						<span class="li-line"></span>
						대규모기업에 고용된 45세 이상인 자
					</li>
					<li class="padding">
						<span class="li-line"></span>
						육아휴직 중인 자
					</li>
					<li class="padding">
						<span class="li-line"></span>
						고용보험 가입 기간이 3년 이상이고, 그 3년 기간 동안에 사업주 및 근로자 직업능력개발훈련 이력이 없는 자
					</li>
					<li class="padding">
						<span class="li-line"></span>
						180일 이내에 이직 예정인 자
					</li>
				</ul>
			</li>
		</ul>
		
		<!-- 재직자 -->
		<!-- 자영업자 -->
		
		<!-- 자영업자 -->
		
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
