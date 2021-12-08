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

.out{
	list-style-position: outside;
}
#text{
	margin: 5px 0;
}
.content-sub-title{
    margin-left: 20px;
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

</style>
<body>
<jsp:include page="lookMenu.jsp"/>

    <div class="content">
    <jsp:include page="lookCategory.jsp"/>
    <h2 class="content-title"><span class="content-title-bar"></span>취업성공패키지 신청자격</h2>
    
    
    <h3 class="content-sub-title">1유형 참여대상자</h3>
    <ul class="no-padding">
        <li>
            1유형 자격으로 참여하기 위해서는 만 18~69세 실업자로서 아래 요건 중 어느 하나에 해당되어야 합니다.
            <div class="footnote-box">
                <div class="footnote-box-un">위기청소년의 경우 만 15~24세</div>
            </div>
        </li>
    </ul>
    <ul>
        <li>
            <span class="li-dot"></span>
            <strong>기초생활수급자</strong>
            <ul>
                <li>
                    <span class="li-line"></span>
                    기초생활수급자 중 조건부수급자는 취업성공패키지 중점 서비스 대상으로서 자치단체로부터 의뢰를 받아 우선 참여대상으로 선정될 수 있습니다.<br> 
                    (단, 조건부과제외자는 조건부수급자로 전환된 경우에 한해 참여가 허용됩니다.)
                </li>
            </ul> 
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>차차상위 이하 저소득층</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    가구단위 소득인정액이 기준 중위소득의 50% 이하인 가구(차상위계층), 기준 중위소득의 60% 이하(차차상위계층)의 구성원이 해당됩니다.
                    <div class="footnote-box">
                        <div class="footnote-box-un">
                            단, 고등학교, 대학교, 대학원 등 재학생의 경우 차차상위 이하 저소득층 대상자에 해당되더라도, 마지막 학년이 되는 해의 1월 1일 또는 7월 1일부터 참여 가능합니다.<br>
                            <ul>
                                <li><span class="li-line"></span>최종 2개 학기 재학 중인 자 참여 가능</li>
                                <li><span class="li-line"></span>고교 재학생 참여자는 나이 무관</li>
                            </ul>
                        </div><!-- foot-note-box-un -->
                    </div><!-- foot-note-box -->
                </li>
                <li>
                    <span class="li-line"></span>
                    중위소득 60% 이하 여부는 가구원수별 건강보험료 납입액*을 통하여 확인이 가능합니다.
                </li>
                <li class="no-style"> 
                    <span class="li-line"></span>
                    <strong>차차상위이하 저소득층 가구원수별 건강보험료 납입액(부과액) 상한(원/월)</strong>
                </li>
                <li class="no-style">
                    <div class="table-wrapper">
                        <table>
                            <tbody><tr>
                                <th class="wth12-5p">구분</th>
                                <th class="wth12-5p">1인 가구</th>
                                <th class="wth12-5p">2인 가구</th>
                                <th class="wth12-5p">3인 가구</th>
                                <th class="wth12-5p">4인 가구</th>
                                <th class="wth12-5p">5인 가구</th>
                                <th class="wth12-5p">6인 가구</th>
                                <th class="wth12-5p">7인 가구</th>
                            </tr>
                            <tr class="text-center vertical-middle">
                                <td>중위<br>소득</td>
                                <td>1,652,931</td>
                                <td>2,814,449</td>
                                <td>3,640,915</td>
                                <td>4,467,380</td>
                                <td>5,293,845</td>
                                <td>6,120,311</td>
                                <td>6,946,776</td>
                            </tr>
                            <tr class="text-center vertical-middle">
                                <td>소득<br>인정액</td>
                                <td>991,759</td>
                                <td>1,688,669</td>
                                <td>2,184,549</td>
                                <td>2,680,428</td>
                                <td>3,176,307</td>
                                <td>3,672,187</td>
                                <td>4,168,066</td>
                            </tr>
                            <tr class="text-center vertical-middle">
                                <td>보험료</td>
                                <td>30,348</td>
                                <td>51,673</td>
                                <td>66,847</td>
                                <td>82,021</td>
                                <td>97,195</td>
                                <td>112,369</td>
                                <td>127,543</td>
                            </tr>
                            <tr>
                                <td colspan="8">
                                    <ul>
                                        <li>
                                            <span class="li-dot-2"></span>
                                            8인 이상 가구의 경우: 1인 증가시마다 중위소득에서 826,465원씩 증가(8인 가구: 7,773,241원)
                                        </li>
                                        <li>
                                            <span class="li-dot-2"></span>
                                            소득인정액: 중위소득 X 0.6
                                        </li>
                                        <li>
                                            <span class="li-dot-2"></span>
                                            보험료: 소득인정액 X 0.0306
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                        </tbody></table>
                    </div>
                </li>
            </ul> 
        </li>
        <li class="mt20">
            <span class="li-dot"></span>
            <strong>소득과 관계없이 참여 가능한 자</strong><br>
            기초생활수급자 또는 차차상위계층과는 달리 개인적 특성을 감안하여 아래 중 하나에 해당되는 경우 소득과 관계없이 취업성공패키지 1유형 자격으로 참여를 허용하고 있습니다.
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    노숙인 및 비주택거주자
                </li>
                <li>
                    <span class="li-line"></span>
                    북한이탈주민
                </li>
                <li>
                    <span class="li-line"></span>
                    신용회복지원자
                </li>
                <li>
                    <span class="li-line"></span>
                    결혼이민자 및 결혼이민자의 외국인(중도입국) 자녀
                </li>
                <li>
                    <span class="li-line"></span>
                    위기청소년
                </li>
                <li>
                    <span class="li-line"></span>
                    니트족(NEET)
                    <div class="footnote-box">
                        <div class="footnote-box-un">
                            최근 2년 동안 교육·훈련에 참여하지 않고, 일도 하지 않은 청년을 의미하며, 대상자 적합도 문답표를 작성하여 20점 이상이면 니트족으로 판정됩니다.<br>
                            NEET는 "Not in Education, Employment or Training"의 줄임말입니다.
                        </div>
                    </div>
                </li>
                <li>
                    <span class="li-line"></span>
                    여성가장
                </li>
                <li>
                    <span class="li-line"></span>
                    국가유공자
                </li>
                <li>
                    <span class="li-line"></span>
                    영세자영업자 및 특수형태근로 종사자
                    <div class="footnote-box">
                        <div class="footnote-box-un">
                            <strong>영세자영업자:</strong> 연간매출액이 8천만 원 미만인 사업자<br>단, 아래 어느 하나에 해당할 경우 참여 제한
                            <ul class="no-margin-li">
                                <li><span class="li-line"></span>개업한 지 1년 미만인 자영업자(과세표준증명원 확인)</li>
                                <li><span class="li-line"></span>매출액이 0원인 자영업자</li>
                                <li><span class="li-line"></span>임대사업자</li>
                                <li><span class="li-line"></span>비영리법인의 대표(고유번호증 소지자)</li>
                                <li><span class="li-line"></span>법인사업자</li>
                            </ul>
                        </div>
                    </div>
                    <div class="footnote-box">
                        <div class="footnote-box-un">
                            <strong>특수형태근로종사자:</strong> 신청일 기준 1년 이내 6개월 이상 특수형태근로에 종사 중인 자로서 다음에 해당하는 자<br>
                            <ul class="no-margin-li">
                                <li><span class="li-line"></span>화물자동차 운전자</li>
                                <li><span class="li-line"></span>건설기계관리법에 따른 덤프트럭 또는 콘크리트믹서트럭 운전자</li>
                                <li><span class="li-line"></span>학습지교사</li>
                                <li><span class="li-line"></span>골프장 경기보조원</li>
                                <li><span class="li-line"></span>보험설계사</li>
                                <li><span class="li-line"></span>택배 퀵서비스 기사</li>
                                <li><span class="li-line"></span>신용카드모집인</li>
                                <li><span class="li-line"></span>대출모집인</li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li>
                    건설일용직
                    <span class="li-line"></span>
                </li>
                <li>
                    <span class="li-line"></span>
                    장애인
                </li>
                <li class="no-style">
                    <span class="li-line"></span>
                    취업맞춤특기병(1유형)
                    <div class="footnote-box">
                        <div class="footnote-box-un">
                            1유형 참여 요건을 갖춘 17~24세의 육군·해군·공군 현역병 입영대상자 중 아래 어느 하나에 해당하는 자
                            <ul class="no-margin-li">
                                <li><span class="li-line"></span>고등학교 졸업(예정) 이하 학력(대학중퇴자 포함)의 비진학자</li>
                                <li><span class="li-line"></span>폴리텍대학학점은행 등을 통한 전문학사 학위 취득자</li>
                                <li><span class="li-line"></span>방통대 재학 또는 졸업자로서 지방병무청장의 추천(의뢰)를 받은 자</li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li>
                    <span class="li-line"></span>
                    미혼모·한부모
                </li>
                <li>
                    <span class="li-line"></span>
                    FTA 피해 실직자
                </li>
                <li>
                    <span class="li-line"></span>
                    기초연금수급자
                    <div class="footnote-box">
                        <div class="footnote-box-un">
                            65~69세 장년층 중 기초연금수급자(65세 이상 소득하위 70% 이하인 자)로 자치단체의 장이 발급하는 "기초연금수급자 확인서"를 통해 참여자격 확인
                        </div>
                    </div>
                </li>
            </ul>
        </li>
    </ul>
    
    <h3 class="content-sub-title mt30">2유형 참여대상자 - 청년층(만 18세 ~ 34세)</h3>
    <ul>
        <li>
            <span class="li-dot"></span>
            <strong>고졸 이하 비진학 청년</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    고등학교 재학 중인 자는 원칙적으로 참여를 제한합니다. 다만, 상급학교에 진학하지 않는 졸업예정자나 취업처가 정해져 있지 않은 자는 졸업 연도 1월 1일부터 참여 가능합니다.
                </li>
                <li>
                    <span class="li-line"></span>
                    대학 중퇴자는 고졸이하 비진학자로 간주합니다.
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>재학생(고교∙대학∙대학원)</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    고등학교, 대학, 대학원 마지막 학년 재학생으로서, 졸업예정일이 다음 연도 9월 1일 이전일 경우 참여 가능
                </li>
                <li>
                    <span class="li-line"></span>
                    동계졸업생은 1월 1일, 하계졸업생은 7월 1일부터 신청 가능
                </li>
                <li>
                    <span class="li-line"></span>
                    패키지 참여 중 상급학교 진학 시 기간 만료로 종료처리
                </li>
                <li>
                    <span class="li-line"></span>
                    학점은행제, 사이버대, 방송통신대, 야간대학(원) 학생 및 휴학생은 참여 허용
                </li>
                <li>
                    <span class="li-line"></span>
                    일반대학원 계약학과 및 전문대학원특수대학원에 재학 중인 미취업자 참여 허용
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>대졸이상 미취업자</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    대학교(전문대 포함)를 졸업한 자
                </li>
                <li>
                    <span class="li-line"></span>
                    대학 수료자는 졸업자로 간주
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>영세자영업자</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    연간매출액 8천만 원 이상 1억 5천만 원 미만인 사업자
                    <div class="footnote-box">
                        <div class="footnote-box-un">
                            개업한지 1년 미만인 자영업자(과세표준증명원 확인) 및 임대사업자, 비영리법인의 대표(고유번호증 소지자)는 참여가 제한됩니다. 그 외의 사항은 1유형의 영세자영업자 내용과 동일합니다.
                        </div>
                    </div>
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>고용촉진특별구역 및 고용재난지역 등 이직자</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    고용촉진특별구역 및 고용위기지역 지정 기준 등에 관한 고시에 따라 고용관리지역, 고용위기지역, 고용재난지역으로 지정한 날의 6개월 전부터 지정기간 종료일까지의 기간 중 당해 지역 사업장에서 근로하다 이직 후 실업상태인 자
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>취업맞춤특기병(2유형)</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    2유형 참여 요건을 갖춘 17~24세의 육군∙해군∙공군 현역병 입영대상자 중 아래 어느 하나에 해당하는 자
                    <div class="footnote-box">
                        <div class="footnote-box-un">
                            <ul>
                                <li><span class="li-line"></span>졸업(예정) 이하 학력(대학중퇴자 포함)의 비진학자</li>
                                <li><span class="li-line"></span>폴리텍대학, 학점은행 등을 통한 전문학사 학위 취득자</li>
                                <li><span class="li-line"></span>방통대 재학 또는 졸업자로서 지방병무청장의 추천(의뢰)를 받은 자</li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </li>
    </ul>
    
    <h3 class="content-sub-title mt30">2유형 참여대상자 - 중·장년층(만 35세 ~ 69세)</h3>
    <ul>
        <li>
            <span class="li-dot"></span>
            <strong>기준 중위소득 100% 이하의 가구원으로서 아래 1 ~ 3 중 어느 하나에 해당하는 자</strong><br>
            1. 실업급여 수급 중 또는 수급 종료 이후 미취업자<br>
            2. 고용보험 가입이력은 있으나 수급 요건을 충족하지 못한 미취업자<br>
            3. 고용보험 가입이력이 없는 자
        </li>
        <li class="no-style">
            <span class="li-dot"></span>
            <strong>중위소득 100% 이하 가구원수별 건강보험료 납입액(부과액) 상한(원/월)</strong>
        </li>
        <li class="no-style">
            <div class="table-wrapper">
                <table>
                    <tbody><tr>
                        <th class="wth12-5p">구분</th>
                        <th class="wth12-5p">1인 가구</th>
                        <th class="wth12-5p">2인 가구</th>
                        <th class="wth12-5p">3인 가구</th>
                        <th class="wth12-5p">4인 가구</th>
                        <th class="wth12-5p">5인 가구</th>
                        <th class="wth12-5p">6인 가구</th>
                        <th class="wth12-5p">7인 가구</th>
                    </tr>
                    <tr class="text-center vertical-middle">
                        <td>중위<br>소득</td>
                        <td>1,652,931</td>
                        <td>2,814,449</td>
                        <td>3,640,915</td>
                        <td>4,467,380</td>
                        <td>5,293,845</td>
                        <td>6,120,311</td>
                        <td>6,946,776</td>
                    </tr>
                    <tr class="text-center vertical-middle">
                        <td>소득<br>인정액</td>
                        <td>1,652,931</td>
                        <td>2,814,449</td>
                        <td>3,640,915</td>
                        <td>4,467,380</td>
                        <td>5,293,845</td>
                        <td>6,120,311</td>
                        <td>6,946,776</td>
                    </tr>
                    <tr class="text-center vertical-middle">
                        <td>보험료</td>
                        <td>50,580</td>
                        <td>86,112</td>
                        <td>111,412</td>
                        <td>136,702</td>
                        <td>161,992</td>
                        <td>187,282</td>
                        <td>212,571</td>
                    </tr>
                    <tr>
                        <td colspan="8">
                            <ul class="no-style">
                                <li>
                                    <span class="li-dot-2"></span>
                                    8인 이상 가구의 경우: 1인 증가시마다 중위소득에서 826,465원씩 증가(8인 가구: 7,773,241원)
                                </li>
                                <li>
                                    <span class="li-dot-2"></span>
                                    소득인정액: 중위소득 X 1.0
                                </li>
                                <li>
                                    <span class="li-dot-2"></span>
                                    보험료: 소득인정액 X 0.0306(직장건강보험료율)
                                </li>
                                <li>
                                    <span class="li-dot-2"></span>
                                    직장가입자는 위의 표의 금액을 기준으로 참여를 결정하고, 지역가입자의 경우 직장가입자 보험료에 1.2(조정계수)를 곱한 금액을 기준으로 참여를 결정
                                </li>
                            </ul>
                        </td>
                    </tr>
                </tbody></table>
            </div>
        </li>
        <li class="mt20">
            <span class="li-dot"></span>
            <strong>영세자영업자</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>										
                    연간매출액 8천만원 이상 1억5천만원 미만인 사업자
                    <div class="footnote-box">
                        <div class="footnote-box-un">
                            개업한지 1년 미만인 자영업자(과세표준증명원 확인) 및 임대사업자, 비영리법인의 대표(고유번호증 소지자)는 참여가 제한됩니다. 그 외의 사항은 1유형의 영세자영업자 내용과 동일합니다.
                        </div>
                    </div>
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>고용촉진특별구역 및 고용재난지역 등 이직자</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    고용촉진특별구역 및 고용위기지역 지정 기준 등에 관한 고시에 따라 고용관리지역, 고용위기지역, 고용재난지역으로 지정한 날의 6개월 전부터 지정기간 종료일까지의 기간 중 당해 지역 사업장에서 근로하다 이직 후 실업상태인 자
                </li>
            </ul>
        </li>
        <li>
            <span class="li-dot"></span>
            <strong>기업활력제고법 시행에 따른 중·장년 참여자</strong>
            <ul class="no-margin-li">
                <li>
                    <span class="li-line"></span>
                    기업활력법에 따른 실직자의 참여 신청 시, 소득기준을 완화하여 중위소득 150% 이하 중장년까지 참여 허용
                </li>
                <li>
                    <span class="li-line"></span>
                    기업활력제고법에 따라 사업 재편 계획을 승인받은 기업명단은 추후 별도 통보
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
