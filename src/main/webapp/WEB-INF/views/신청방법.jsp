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
        width: 46%;
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

</style>
<body>
<jsp:include page="lookMenu.jsp"/>

    <div class="content">
    <h2 class="content-title"><span class="content-title-bar"></span>취업성공패키지 신청방법 및 구비서류</h2>
    <h3 class="content-sub-title">신청방법</h3>
    <ul>
        <li>
            <span class="li-dot"></span>
            신분증 및 관련서류를 구비하신 후 가까운 고용센터에서 방문하셔서 신청하실 수 있으며, 온라인신청도 가능합니다.
        </li>
        <li>
            <span class="li-dot"></span>
            <a href="http://www.work.go.kr/pkg/succ/index.do" target="_blank" class="a-hidden">온라인신청 바로가기</a>
        </li>
        
    </ul>
    
    
    <h3 class="content-sub-title mt30">구비서류</h3>
    <ul>
        <li>
            <span class="li-dot"></span>
            <strong>1유형, 2유형 참여자 공통 구비서류</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    주민등록표 등본 또는 가족관계등록부(필요시 제출)
                </li>
                <li>
                    <span class="li-line"></span>
                    건강보험증 사본
                </li>
                <li>
                    <span class="li-line"></span>
                    신청일 최근 3개월 건강보험료 납입영수증 또는 납입고지서
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>대상자별 구비서류</strong><br>아래 어느 하나에 해당될 경우 공통서류는 별도로 구비하실 필요가 없습니다.
        </li>
        <li>
            <span class=""></span>
            <strong>법정 차상위 계층 증명자료</strong>
        </li>
            <ul>
                
                
                <li class="no-styles">
                    <div class="table-wrapper">
                        <table>
                            <tbody><tr>
                                <th class="wth20p">사업명</th>
                                <th class="wth20p">소관부처<br>(집행기관)</th>
                                <th class="wth30p">적용대상</th>
                                <th class="wth30p">지원내용</th>
                            </tr>
                            <tr>
                                <th>의료급여패키지</th>
                                <td class="text-center">보건복지부<br>(건강보험공단)</td>
                                <td class="text-center">최저생계비 100% ~ 120%<br/> 이하 가구</td>
                                <td>
                                    <ul class="no-style">
                                        <li>
                                            <span class="li-dot-2"></span>
                                            의료급여 1종: 비급여항목 제외 의료비 전액
                                        </li>
                                        <li>
                                            <span class="li-dot-2"></span>
                                            의료급여 2종: 비급여항목 제외 의료비 90% 
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>장애(아동)수당<br>패키지</th>
                                <td class="text-center">보건복지부<br>(자치단체)</td>
                                <td class="text-center">생계급여수급자, 차상위계층</td>
                                <td>
                                    <ul class="no-style">
                                        <li>    
                                            차상위계층의 경우
                                        </li>
                                        <li>
                                            <span class="li-dot-2"></span>
                                            장애수당: 4만 원
                                        </li>
                                        <li>
                                            <span class="li-dot-2"></span>
                                            장애연금: 4~22만 원
                                        </li>
                                        <li>
                                            <span class="li-dot-2"></span>
                                            장애아동수당 중증: 15만 원
                                        </li>
                                        <li>
                                            <span class="li-dot-2"></span>
                                            장애아동수당 경증: 10만 원
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>한부모가정패키지</th>
                                <td class="text-center">여성가족부<br>(자치단체)</td>
                                <td class="text-center">최저생계비 130% 이하 한부모가족</td>
                                <td>
                                    <ul class="no-style">
                                        <li>
                                            <span class="li-dot-2"></span>
                                            아동양육비: 7만 원
                                        </li>
                                        <li>
                                            <span class="li-dot-2"></span>
                                            고교생학비
                                        </li>
                                        <li>
                                            <span class="li-dot-2"></span>
                                            복지자금 융자 등
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>방과 후 보육료</th>
                                <td class="text-center">보건복지부<br>(자치단체)</td>
                                <td class="text-center">생계급여수급자 차상위계층</td>
                                <td>
                                    <ul class="no-style">
                                        <li>
                                            <span class="li-dot-2"></span>
                                            일반아동: 10만 원
                                        </li>
                                        <li>
                                            <span class="li-dot-2"></span>
                                            장애아동: 21만 9천 원
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>고교생 학비지원</th>
                                <td class="text-center">교육부<br>(교육청)</td>
                                <td class="text-center">생계급여수급자, 차상위계층 등</td>
                                <td>
                                    <ul class="no-style">
                                        <li>
                                            <span class="li-dot-2"></span>
                                            고교생 학비 지원
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>저소득층,<br>농산어촌 학생<br>급식비지원</th>
                                <td class="text-center">교육부<br>(교육청)</td>
                                <td class="text-center">생계급여수급자, 차상위계층 등</td>
                                <td>
                                    <ul class="no-style">
                                        <li>
                                            <span class="li-dot-2"></span>
                                            학교 급식비 지원
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>저소득층 연탄보조<br/>쿠폰제사업</th>
                                <td class="text-center">산업통상자원부<br>(광해관리공단)</td>
                                <td class="text-center">생계급여수급자 차상위계층</td>
                                <td>
                                    <ul class="no-style">
                                        <li>
                                            <span class="li-dot-2"></span>
                                            연탄보조 쿠폰 지급
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>심야전력<br>요금할인</th>
                                <td class="text-center">산업통상자원부<br>(한국전력공사)</td>
                                <td class="text-center">생계급여수급자 차상위계층</td>
                                <td>
                                    <ul class="no-style">
                                        <li>
                                            <span class="li-dot-2"></span>
                                            심야전력 요금할인
                                        </li>
                                        <li>
                                            <span class="li-dot-2"></span>
                                            수급자: 20%
                                        </li>
                                        <li>
                                            <span class="li-dot-2"></span>
                                            차상위계층: 18%
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                        </tbody></table>
                    </div><!-- table-wrapper -->
                </li>
               
                <div class="block-center">
                <li>
                    <span></span>
                    <strong>결혼이민자, 중도입국자녀</strong><br>
                    1. 외국인등록증(F-2, F-5로 참여하는 경우)<br>
                    2. 체류자격변경 귀화증명서(주민등록등본이 없는 경우)<br>
                    3. 혼인관계서류(필요시)<br>
                    4. 결혼이민자의 자녀임을 입증하는 서류(외국인자녀의 경우)
                </li>
                <li>
                    <span class="li-line"></span>
                    <strong>부랑인, 노숙인</strong><br>
                    관련기관: 부랑인복지시설, 노숙인쉼터, 상담보호센터<br>
                    증명서류: 부랑인복지시설 입소자 확인(추천)서, 노숙인쉼터 입소자 확인(추천)서, 상담보호센터 보호자 확인(추천)서
                </li>
                <li>
                    <span class="li-line"></span>
                    <strong>북한이탈주민</strong><br>
                    관련기관: 거주보호담당관<br>
                    증명서류: 북한이탈주민 확인(추천)서
                </li>
                <li>
                    <span class="li-line"></span>
                    <strong>위기청소년</strong><br>
                    관련기관: 보호관찰소<br>
                    증명서류: 보호관찰자 확인(추천)서
                </li>
                <li>
                    <span class="li-line"></span>
                    <strong>신용회복지원자</strong><br>
                    관련기관: 신용회복위원회<br>
                    증명서류: 신용회복위원회 확정 승인통보서
                </li>
                <li>
                    <span class="li-line"></span>
                    <strong>비주택거주자</strong><br>
                    관련기관: 국토교통부 또는 행정자치부<br>
                    증명서류: 비주택거주자확인(추천)서
                </li>
                <li>
                    <span class="li-line"></span>
                    <strong>국가유공자</strong><br>
                    관련기관: 국가보훈처<br>
                    증명서류: 취업지원대상자증명서
                </li>
                <li>
                    <span class="li-line"></span>
                    <strong>여성가장</strong>
                </li>
                </div>
                <li  class="no-styles">
                    <div class="table-wrapper" id="td-center">
                        <table>
                            <tbody><tr>
                                <th colspan="2">배우자가 있는 여성</th>
                            </tr>
                            <tr>
                                <th class="wth30p">가출, 행방불명</th>
                                <td>실종신고서</td>
                            </tr>
                            <tr>
                                <th>장애</th>
                                <td>장애인등록증, 국가유공자 증명서, 장해급여지급 통지서 중 1</td>
                            </tr>
                            <tr>
                                <th>질병</th>
                                <td>의사의 진단서</td>
                            </tr>
                            <tr>
                                <th>군복무</th>
                                <td>복무확인서</td>
                            </tr>
                            <tr>
                                <th>학교 재학</th>
                                <td>재학증명서</td>
                            </tr>
                            <tr>
                                <th>교도소 입소</th>
                                <td>수용증명서, 형확정판결문</td>
                            </tr>
                            <tr>
                                <th>구직등록 후 6개월 이상<br>실업 상태에 있는 배우자</th>
                                <td>직업안정기관 또는 자치단체장의 확인서</td>
                            </tr>
                            <tr>
                                <th>이혼소송제기</th>
                                <td>이혼소송확인서</td>
                            </tr>
                            <tr>
                                <th>기타 가족 생계 부양</th>
                                <td>통·반장 확인서</td>
                            </tr>
                            <tr>
                                <th colspan="2">배우자가 없는 여성</th>
                            </tr>
                            <tr>
                                <td colspan="2">부모가 근로능력이 없음을 증명하는 서류(해당자에 한함)</td>
                            </tr>
                        </tbody></table>
                    </div><!-- table-wrapper -->
                </li>
                <div class="block-center">
                <li class="mt20">
                    <span class="li-line"></span>
                    <strong>영세자영업자</strong><br>
                    1. 사업자등록증 사본<br>
                    2. 부가가치세 과세표준 증명원<br>
                    3. 부가가치세 면세사업자 수입금액 증명원(해당자)
                </li>
                </div>
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
