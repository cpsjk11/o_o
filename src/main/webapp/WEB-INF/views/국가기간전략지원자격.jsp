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
        list-style: symbols();
    }

    table{
        border-collapse: collapse;
      
    }
    th{
       border: 1px solid #dfdfdf;
        font-size: 13px;
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
    }
    .text-center{
        
        text-align: center;
    }
    #header{
        margin: 10px 0 ;
    }
    .content-title{
    	border-bottom: 2px solid skyblue;
        width: 45%;
       	position: relative !important;
    	left: 50px !important;
    	top: 0px !important;
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
strong{
	display: inline-block;
	margin-bottom: 5px;
}
h3{
	color: black !important;
}
</style>
<body>
<jsp:include page="lookMenu.jsp"/>
    <div class="content">
    <jsp:include page="lookCategory.jsp"/>
    <h2 class="content-title"><span class="content-title-bar"></span>국가기간·전략산업직종훈련 지원자격</h2>
    <ul class="no-padding">
        <li>
            국가기간·전략산업직종훈련을 수강하기 위해서는 실업자 내일배움카드를 발급 받아야 하며, 아래 요건 중 어느 하나에 해당될 경우 실업자 내일배움카드를 발급 받을 수 있습니다.
        </li>
    </ul>
    <ul>
        <li>
            <span class="li-dot"></span>
            <strong>실업자</strong>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>농·어업인</strong>
            <ul class="list-style">
                <li>
                    <span class="li-line"></span>
                    농어업 이외의 직업에 취업하려는 자와 그 가족
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>전역 예정자</strong>
            <ul class="list-style">
                <li>
                    <span class="li-line"></span>
                    [제대군인지원에 관한 법률 시행령] 제14조 제4항에 따라 직업능력개발훈련 대상자로 추천을 받은 전역예정자
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>자영업자(개인사업자)</strong>
            <ul class="list-style">
                <li>
                    <span class="li-line"></span>
                    사업기간이 1년 이상인 개인사업자로서 연간 매출액이 1억 5,000만 원 미만인 영세자영업자 또는 신용회복위원회의 신용회복 지원 확정을 받은 사업자
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>학생</strong>
            <ul class="list-style">
                <li>
                    <span class="li-line"></span>
                    고등학교: 3학년에 재학 중인 학생(비진학예정자)
                </li>
                <li>
                    <span class="li-line"></span>
                    대학교: 최종 학년 재학생(다음 연도 9월 1일 이전 졸업예정자)
                </li>
            </ul>
            <div class="">
                <table>
                    <tbody><tr>
                        <th class="vat tal" nowrap="nowrap">지원대상 확대</th>
                        <td>
                            <ul class="no-styles">
                                <li>
                                    대학별 교육목적, 운영방식 등을 고려하여 다음 대상자도 지원 가능
                                </li>
                            </ul>
                            <ul class="no-style">
                                <li>
                                    <span class="li-dot-2"></span>방통대 및 사이버대학에 재학 중인 미취업자
                                </li>
                                <li>
                                    <span class="li-dot-2"></span>일반대학원 계약학과 및 전문대학원 특수대학원에 재학 중인 미취업자
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th class="vat tal" nowrap="nowrap">계좌발급대상<br>확인방법</th>
                        <td>
                            <ul class="no-style">
                                <li>
                                    <span class="li-dot-2"></span>
                                    성적증명서 등 객관적 증빙자료를 토대로 다음 연도 8월 말까지 졸업이 가능한 경우 계좌발급대상에 포함하여<br/> 훈련상담 실시
                                </li>
                                <li>
                                    <span class="li-dot-2"></span>
                                    계좌발급 신청일을 기준으로 휴학 중이지만 다음 학기에 복학하여 정상적으로 학점 이수하여 다음 연도 8월 중<br/> 졸업이 가능한 경우 계좌발급 대상에 포함
                                </li>
                            </ul>
                        </td>
                    </tr>
                </tbody></table>
            </div>
        </li>
        <li class="mt20">
            <span class="li-dot"></span>
            <strong>자영업자(개인사업자)</strong>
            <ul class="list-style">
                <li>
                    <span class="li-line"></span>
                    사업기간이 1년 이상인 개인사업자로서 연간 매출액이 1억 5,000만 원 미만인 영세자영업자 또는 신용회복위원회의 신용회복 지원 확정을 받은 사업자
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>일용근로자</strong>
            <ul class="list-style">
                <li>
                    <span class="li-line"></span>
                    1개월 동안의 소정근로시간이 60시간 미만(1주 15시간 미만 포함)인 자 중에서 고용보험 피보험자가 아닌 자
                </li>
                <li>
                    <span class="li-line"></span>
                    고용보험에 가입된 건설일용직근로자 중 근로기간이 30일 이내 10일 미만인 건설일용직근로자
                    <div class="footnote-box">
                        <div class="footnote-box-un">근로기간이 30일 이내 10일 이상인 경우 실업자 내일배움카드가 아닌, <strong>근로자 직업능력개발카드</strong></a> 대상자에 해당됩니다.</div>
                    </div><!-- footnote-box -->
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>결혼이민자 및 만 15세 이상 이주청소년</strong>
            <ul class="list-style">
                <li>
                    <span class="li-line"></span>
                    [다문화가족지원법] 제2조 제2호에 따른 결혼이민자와 그 가족인 15세 이상의 이주 청소년
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>난민인정자</strong>
            <ul class="list-style">
                <li>
                    <span class="li-line"></span>
                    [난민법] 제18조에 따른 난민인정자로서 대한민국 정착을 위하여 직업능력개발훈련이 필요하다고 법무부장관이 인정하여 추천한 사람
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>취업성공패키지 참여자</strong>
        </li>
    </ul>
    <h3 class="content-sub-title mt30">실업자 내일배움카드 신청방법 및 구비서류</h3>
    <ul>
        <li>
            <span class="li-dot"></span>
            신분증 지참 후 거주지 주변 고용센터에 방문하시어 신청하실 수 있으며, 고용센터 방문 시 지참하셔야 할 서류는 아래와 같습니다.
            <ul class="list-style">
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
