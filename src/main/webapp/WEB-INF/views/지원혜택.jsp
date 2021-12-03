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
	
</head>
<style>
    
    body{
        width: 2000px;
    }
    header{
    	top: 0;
    }
    
    footer{
    	bottom: 0;
    }

    .content{
        width: 900px;
        margin: 145px auto;
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
    }
    .text-center{
        text-align: center;
    }
    #header{
        margin: 10px 0 ;
    }
    .content-title{
    	border-bottom: 2px solid skyblue;
        width: 36%;
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
	strong{
		display: inline-block;
	}

/*    <!-- 여기는 좌측 메뉴바 css --> */
  .leftBox {
  
  padding: 0px;
  margin-left: 200px;
  margin-top: 150px;
  width: 205px;
  background: #fff;
  
}
#bbb_left{
	position: absolute;
	top: 0;
}
.left{
	list-style: none;
}

.left li a {
  text-decoration: none !important;
  padding: 10px !important;
  display: block !important;
  color: #000 !important;
  font-weight: bold !important;
}

.left li .m-bullet {
  background : #333;
  color: #fff;
}

.cd1 {
  margin-left: 120px;
}
.m-unit-title{
    width: 100%;
    text-align: center;
    line-height: 45px;
    background-color: #efefef;
    font-size: 13px;
 
}
.up{
    display: none;
}
#menu_wrapper{
    border: 1px solid #efefef; 
}
#footer{
	position: inherit;

}
.no-style{
    list-style: none;
}
.no-l_style{
	list-style: none;
	font-size: 14px;
	font-weight: bold;
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
    list-style: none;
}
.li-line{
    list-style-type: inherit;
}
.text-padding{
    padding: 10px;
}

</style>
<body>

    <div id="bbb_left" class="leftBox">
        <div id="menu_wrapper">
            
            <div class="m-unit item7 ">
                <div class="m-unit-title to1">취업성공패키지&nbsp;&nbsp;👇</div>
                <div class="m-unit-body up">
                    <ul class="left">
                        <li class="mul1 "><a href="look2">개요</a></li>
                        <li class="mul2 "><a href="look3">프로그램 구성</a></li>
                        <li class="mul3 "><a href="look4">지원혜택</a></li>
                        <li class="mul4 "><a href="look5">신청자격</a></li>
                        <li class="mul5 "><a href="look6">신청방법</a></li>
                        <li class="mul6 "><a href="look7">참여제한</a></li>
                        <li class="mul7 "><a href="look8">재참여</a></li>
                    </ul>
                </div><!-- m-unit-body -->
            </div>
            
            
            <div class="m-unit item5 ">
                <div class="m-unit-title to2">실업자 내일배움카드&nbsp;&nbsp;👇</div>
                <div class="m-unit-body2 up">
                    <ul class="left">
                        <li class="mul1 "><a href="#">개요</a></li>
                        <li class="mul2 "><a href="#">지원혜택</a></li>
                        <li class="mul3 "><a href="#">발급자격</a></li>
                        <li class="mul4 "><a href="#">신청방법</a></li>
                        <li class="mul5 "><a href="#">재발급</a></li>
                    </ul>
                </div><!-- m-unit-body -->
            </div>
            
            
            <div class="m-unit item4 on">
                <div class="m-unit-title to3">국가기간전략산업직종훈련&nbsp;&nbsp;👇</div>
                <div class="m-unit-body3 up">
                    <ul class="left">
                        <li class="mul1 "><a href="#">개요</a></li>
                        <li class="mul2 "><a href="#">지원혜택</a></li>
                        <li class="mul3 "><a href="#">지원자격</a></li>
                        <li class="mul4 selected"><a href="#">훈련분야</a></li>
                    </ul>
                </div><!-- m-unit-body -->
            </div>
            
            
            <div class="m-unit item5 ">
                <div class="m-unit-title to4">일학습병행제&nbsp;&nbsp;👇</div>
                <div class="m-unit-body4 up">
                    <ul class="left">
                        <li class="mul1 "><a href="#">개요</a></li>
                        <li class="mul2 "><a href="#">훈련대상자</a></li>
                        <li class="mul3 "><a href="#">운영절차</a></li>
                        <li class="mul4 "><a href="#">신청방법</a></li>
                        <li class="mul5 "><a href="#">기업참여조건</a></li>
                    </ul>
                </div><!-- m-unit-body -->
            </div>
            
            
            
            <div class="m-unit item4 ">
                <div class="m-unit-title to5">고용디딤돌&nbsp;&nbsp;👇</div>
                <div class="m-unit-body5 up">
                    <ul class="left">
                        <li class="mul1 "><a href="#">개요</a></li>
                        <li class="mul2 "><a href="#">참여대상자</a></li>
                        <li class="mul3 "><a href="#">운영절차</a></li>
                        <li class="mul4 "><a href="#">참여신청</a></li>
                    </ul>
                </div><!-- m-unit-body -->
            </div>
            
            
            
            
        </div><!-- menu_wrapper -->
    </div><!-- bbb_left -->

    <div class="content">
    <h2 class="content-title"><span class="content-title-bar"></span>취업성공패키지 지원혜택</h2>
    <ul>
        <li class="no-l_style"><span class="li-dot"></span>유형별 지원혜택은 아래와 같습니다.</li>
        <li class="no-l_style">
            <div class="table-wrapper">
                <table>
                    <tbody><tr>
                        <th class="wth30p">&nbsp;</th>
                        <th class="wth35p">1유형</th>
                        <th class="wth35p">2유형</th>
                    </tr>
                    <tr>
                        <th>훈련비</th>
                        <td><ul><li><span class="li-dot-2"></span>최대 300만 원</li><li><span class="li-dot-2"></span>자비부담금*: 훈련비의 0~10%</li></ul></td>
                        <td><ul><li><span class="li-dot-2"></span>최대 200만 원</li><li><span class="li-dot-2"></span>자비부담금*: 훈련비의 5~50%</li></ul></td>
                    </tr>
                    <tr>
                        <th>자비부담금 환급</th>
                        <td colspan="2"><ul><li><span class="li-dot-2"></span>요건 충족 시 전액환급</li></ul></td>
                    </tr>
                    <tr>
                        <th>사전단계 참여수당</th>
                        <td>
                            <ul>
                                <li>
                                    <span class="li-dot-2"></span>
                                    최대 2만 원/일
                                </li>
                            </ul>
                        </td>
                        <td>
                            <ul>
                                <li>
                                    <span class="li-dot-2"></span>
                                    없음
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>1단계 참여수당</th>
                        <td>
                            <ul>
                                <li>
                                    <span class="li-dot-2"></span>
                                    최대 25만 원
                                </li>
                            </ul>
                        </td>
                        <td>
                            <ul>
                                <li>
                                    <span class="li-dot-2"></span>
                                    최대 20만 원
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>훈련참여지원수당</th>
                        <td colspan="2">
                            <ul>
                                <li>
                                    <span class="li-dot-2"></span>
                                    최대 286,000원/월
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>훈련장려금</th>
                        <td colspan="2">
                            <ul>
                                <li>
                                    <span class="li-dot-2"></span>
                                    최대 116,000원/월
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>추가훈련장려금</th>
                        <td colspan="2">
                            <ul>
                                <li>
                                    <span class="li-dot-2"></span>
                                    최대 300,000원/월
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>취업성공수당</th>
                        <td>
                            <ul>
                                <li>
                                    <span class="li-dot-2"></span>
                                    최대 150만 원
                                </li>
                            </ul>
                        </td>
                        <td>
                            <ul>
                                <li>
                                    <span class="li-dot-2"></span>
                                    없음
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>취업알선 방문참여실비</th>
                        <td colspan="2">
                            <ul>
                                <li>
                                    <span class="li-dot-2"></span>
                                    최대 6만 원
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" class="text-padding">
                            1. 실제훈련비가 정부지원금보다 높은 경우 두 금액의 차액도 자비부담금에 추가로 합산됩니다.<br>
                            2. 실제훈련비와 정부지원금의 차액은 환급대상에서 제외됩니다.<br>
                            3. 사전단계 참여수당은 기초수급자에게만 해당됩니다.<br>
                            4. 국가기간·전략산업직종훈련 수강 시 훈련참여지원수당은 지급되지 않으며 추가훈련장려금이 지급됩니다.
                        </td>
                    </tr>
                </tbody></table>
            </div><!-- table-wrapper -->
        </li>
    </ul>
    
    <h3 class="content-sub-title mt30">훈련비</h3>
    <ul>
        <li>
            <span class="li-dot"></span><strong>1유형 - 최대 300만 원</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    실업자 내일배움카드*의 한도 내에서 훈련비의 90~100%가 지원됩니다.
                    <div class="footnote-box">
                        <div class="footnote-box-un">
                            실업자 내일배움카드는 훈련비 지불을 위한 결제도구로서 직업훈련 수강 시 사용되며, 체크카드 또한 신용카드 형태로 발급됩니다.
                        </div><!-- footnote-box-un -->
                    </div><!-- footnote-box -->
                </li>
                <li>
                    <span class="li-line"></span>
                    국가기간전략산업직종훈련을 수강할 경우 카드한도와 무관하게 훈련비가 전액 지원됩니다.
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span><strong>2유형 - 최대 200만 원</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    실업자 내일배움카드의 한도 내에서 훈련비의 50~95%가 지원됩니다.
                </li>
                <li>
                    <span class="li-line"></span>
                    국가기간전략산업직종훈련을 수강할 경우 카드한도와 무관하게 훈련비가 전액 지원됩니다.
                </li>
            </ul>
        </li>
        <li class="no-l_style">
            <span class="li-dot"></span><strong>취업률에 따른 자비부담률(2017년 기준)</strong>
        </li>
        <li class="no-l_style">
            <div class="table-wrapper">
                <table>
                    <tbody><tr>
                        <th class="wth20p" rowspan="2">대상자</th>
                        <th colspan="5">훈련분야별 취업률</th>
                    </tr>
                    <tr>
                        <th class="wth16p">70% 이상</th>
                        <th class="wth16p">55% 이상<br>70% 미만</th>
                        <th class="wth16p">45% 이상<br>55% 미만</th>
                        <th class="wth16p">35% 이상<br>44% 미만</th>
                        <th class="wth16p">35% 미만</th>
                    </tr>
                    <tr class="text-center">
                        <th>일반 실업자</th>
                        <td>5%</td>
                        <td>10%</td>
                        <td>30%</td>
                        <td>50%</td>
                        <td>80%</td>
                    </tr>
                    <tr class="text-center">
                        <th>1유형 참여자</th>
                        <td>0%</td>
                        <td>0%</td>
                        <td>0%</td>
                        <td>0%</td>
                        <td>10%</td>
                    </tr>
                    <tr class="text-center">
                        <th>2유형 참여자</th>
                        <td>5%</td>
                        <td>10%</td>
                        <td>20%</td>
                        <td>30%</td>
                        <td>50%</td>
                    </tr>
                    <tr>
                        <td colspan="6" class="text-padding">
                            특정 훈련분야(NCS)에 대한 <u>훈련기관의 취업률이 55% 이상인 경우</u>에는, 위의 표에 기재된 수치가 아닌 해당 훈련분야에 대한 훈련기관의 취업률을 기준으로 자비부담금이 산정됩니다.<br>
                            <strong>예시)</strong><br/>
                            -메이크업(NCS12010103) 훈련분야의 평균 취업률 =  42.3%<br>
                            -메이크업(NCS12010103) 훈련과정을 시행하는 A훈련기관의 해당 분야에 대한 취업률 = 83%<br>
                            위와 같이 메이크업 훈련과정에 대한 A훈련기관의 취업률이 55% 이상인 경우, 해당 분야에 대한 A훈련기관의 취업률(83%)을 기준으로 자비부담률이 산정됩니다. 이 경우 대상자별 자비부담률은 아래와 같습니다.<br>
                            <strong>일반 실업자:</strong> 5%,&nbsp;&nbsp;<strong>2유형 참여자:</strong> 5%,&nbsp;&nbsp;<strong>1유형 참여자:</strong> 0%
                        </td>
                    </tr>
                </tbody></table>
            </div>
        </li>
    </ul>
    <h3 class="content-sub-title mt30">1단계 참여수당</h3>
    <ul>
        <li>
            <span class="li-dot"></span>
            <strong>1유형 - 최대 25만 원</strong>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>2유형 - 최대 20만 원</strong>
        </li>
        <li>
            <span class="li-dot"></span>
            성실한 참여로 IAP를 수립한 후 1단계를 완료한 참가자에게 지급되는 식비 및 교통비 명목의 지원금이며, IAP 수립 후 참여수당 지급 신청서를 관할 고용센터에 제출하면 신청이 완료됩니다.
        </li>
    </ul>
    <h3 class="content-sub-title mt30">훈련참여지원수당 및 훈련장려금</h3>
    <ul>
        <li class="no-l_style">
            <span class="li-dot"></span>
            수강하는 훈련의 종류에 따라 지급되는 금액은 아래와 같이 나뉘게 됩니다.
        </li>
        <li class="no-l_style">
            <div class="table-wrapper">
                <table>
                    <tbody><tr>
                        <th class="wth20p">지원금종류</th>
                        <th class="wth40p">국가기간·전략산업직종훈련 수강 시</th>
                        <th class="wth40p">일반직종계좌적합훈련 수강 시</th>
                    </tr>
                    <tr>
                        <th>훈련참여지원수당</th>
                        <td class="text-center">0원</td>
                        <td class="text-center">최대 286,000원/월</td>
                    </tr>
                    <tr>
                        <th>훈련장려금</th>
                        <td class="text-center">최대 116,000원/월</td>
                        <td class="text-center">최대 116,000원/월</td>
                    </tr>
                    <tr>
                        <th>추가훈련장려금</th>
                        <td class="text-center">최대 300,000원/월</td>
                        <td class="text-center">0원</td>
                    </tr>
                </tbody></table>
            </div>
        </li>
        <li class="mt20">
            <span class="li-dot"></span>
            <strong>훈련참여지원수당</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    일별 지원금액은 18,000원이며, 단위기간 동안 최대 284,000원이 지급됩니다.
                </li>
                <li>
                    <span class="li-line"></span>
                    고등학교 재학생의 경우 단위기간 동안 최대 200,000원이 지급됩니다.
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>훈련장려금(식비 및 교통비)</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    1일 훈련시간이 5시간 미만인 경우: 일별 2,500원이 지급되며, 단위기간 동안 최대 50,000원이 지급됩니다.
                </li>
                <li>
                    <span class="li-line"></span>
                    1일 훈련시간이 5시간 이상인 경우: 일별 5,800원이 지급되며, 단위기간 동안 최대 116,000원이 지급됩니다.
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>추가훈련장려금</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    국가기간·전략산업직종훈련 수강 시 지급되는 지원금이며, 단위기간 동안 최대 300,000원/월이 지급됩니다.
                </li>
                <li>
                    <span class="li-line"></span>
                    고등학생 재학생의 경우 단위기간 동안 최대 200,000원/월이 지급됩니다.
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>지급요건</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    훈련참여지원수당 및 추가훈련장려금은 훈련참여일로부터 최대 6개월 동안 지급됩니다.
                </li>
                <li>
                    <span class="li-line"></span>
                    훈련참여지원수당 및 추가훈련장려금은 단위기간 동안 80% 이상의 출석률을 만족시킨 사람에 한하여 지급됩니다.
                </li>
                <li>
                    <span class="li-line"></span>
                    실업급여 수급자의 경우 수급기간(소정급여일수)과 중복되지 않는 훈련일수에 대해 훈련참여지원수당, 훈련장려금 및 추가훈련장려금이 지급됩니다.
                </li>
                
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>출석일 인정기준</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    단위기간 내 기준으로 하여 지각 및 조퇴는 3회 당 1일 결석으로 처리
                </li>
                <li>
                    <span class="li-line"></span>
                    단위기간 내 훈련수강 포기 후 미출석일은 결석일로 처리
                </li>
                <li>
                    <span class="li-line"></span>
                    1일 소정 훈련시간 중 지각∙조퇴로 인해 훈련시간 50% 이상 참석 못할 경우 결석으로 처리
                </li>
                <li>
                    <span class="li-line"></span>
                    같은 날 2개 이상 과정 수강 시, 1개 과정 이상 참석(지각, 조퇴 포함)한 경우 출석으로 인정
                </li>
                <li>
                    <span class="li-line"></span>
                    같은 날 2개 이상 과정 수강 시, 모든 과정 결석한 경우 수당 지급일에서 제외
                </li>
            </ul>
        </li>
    </ul>
    <h3 class="content-sub-title mt30">취업성공수당</h3>
    <ul>
        <li>
            <span class="li-dot"></span>
            <strong>1유형 - 최대 150만 원</strong>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>2유형 - 없음</strong>
        </li>
        <li>
            <span class="li-dot"></span>
            취업성공패키지를 통해 취∙창업에 성공할 경우 주어지는 취업인센티브 차원의 지원금입니다.
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>취업성공수당 지급요건</strong>
        </li>
        <li class="no-l_style">
            <div class="table-wrapper">
                <table>
                    <tbody><tr>
                        <th class="wth50p">지급대상</th>
                        <th class="wth50p">지급제외대상</th>
                    </tr>
                    <tr>
                        <td>
                            <ul class="no-margin-li">
                                <li>
                                    <span class="li-dot-2"></span>
                                    취업성공패키지 참여 도중 취업, 또는 서비스 종료 후 다음 날로부터 3개월 이내 취업
                                </li>
                                <li>
                                    <span class="li-dot-2"></span>
                                    정규직∙비정규직 무관
                                </li>
                                <li>
                                    <span class="li-dot-2"></span>
                                    고용보험에 가입된 주 30시간 이상 일자리
                                </li>
                                <li>
                                    <span class="li-dot-2"></span>
                                    최저임금* 이상의 일자리
                                </li>
                                <li>
                                    <span class="li-dot-2"></span>
                                    동일한 사업장에서 1개월 이상 근속
                                </li>
                            </ul>
                        </td>
                        <td>
                            <ul class="no-margin-li">
                                <li>
                                    <span class="li-dot-2"></span>
                                    최저임금 미만 일자리
                                </li>
                                <li>
                                    <span class="li-dot-2"></span>
                                    공무원
                                </li>
                                <li>
                                    <span class="li-dot-2"></span>
                                    직계존∙비속 또는 배우자가 대표자인 사업장
                                </li>
                                <li>
                                    <span class="li-dot-2"></span>
                                    근로기준법상 근로자가 아닌 경우
                                </li>
                                <li>
                                    <span class="li-dot-2"></span>
                                    각 부처에서 예산사업으로 시행되는 재정지원 일자리의 경우 등
                                </li>
                            </ul>
                        </td>
                    </tr>
                </tbody></table>
            </div>
        </li>
    </ul>
    <h3 class="content-sub-title mt30">사전단계 참여수당</h3>
    <ul>
        <li>
            <span class="li-dot"></span>
            <strong>최대 2만 원/일(기초수급자에게만 해당)</strong>
        </li>
        <li>
            <span class="li-dot"></span>
            교통비, 식비 등 실비보상 차원의 참여수당입니다.
        </li>
        <li>
            <span class="li-dot"></span>
            오리엔테이션을 위해 출석한 날도 수당지급일수에 포함됩니다.
        </li>
        <li>
            <span class="li-dot"></span>
            주 30시간 이상 일자리에 취업한 자도 참여수당이 지급됩니다.
        </li>
        <li>
            <span class="li-dot"></span>
            사전단계 서비스 종료 후 수당지급 신청서 제출일로부터 14일 이내에 지급됩니다.
        </li>
    </ul>
    <h3 class="content-sub-title mt30">취업알선 방문참여실비</h3>
    <ul>
        <li>
            <span class="li-dot"></span>
            <strong>최대 3회 방문, 총 6만 원 한도(월 1회, 2만 원 지급)</strong>
        </li>
        <li>
            <span class="li-dot"></span>
            고용센터 및 취업성공패키지 위탁기관에서 집중 취업상담(최소 30분 이상) 또는 취업알선을 실시한 방문 참여자에 대해 실비 지급
        </li>
        <li>
            <span class="li-dot"></span>
            지급방법: 취업알선 기간 종료 시 일괄 지급
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
