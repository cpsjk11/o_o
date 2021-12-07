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
	*{
		list-style: none;
	}
    header{
    	top: 0;
    }

    .content{
        width: 900px;
        margin: 120px 550px;
    }

    .style{
        list-style: none;
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
    #header{
        margin: 10px 0 ;
    }
    .content-title{
    	position: inherit;
        border-bottom: 2px solid skyblue;
    }
    
    li{
        padding: 3px 3px 3px 8px;
    }
    ul{
        margin: 10px 0;
    }
</style>
<body>
<jsp:include page="lookMenu.jsp"/>

    <div class="content">
    	<div id="lookCategory">
	    	<div id="">
	    	</div>	
    	</div>
        <ul>
            <li id="header">
                <h2 class="content-title"><span class="content-title-bar"></span>국가기간·전략산업직종훈련 훈련분야</h2>
                <span class="li-dot">
                국가기간·전략산업직종훈련의 대상 직종은 아래와 같습니다.
                </span>
            </li>
            <li class="style">
                <div class="table-wrapper">
                    <table>
                        <tbody><tr>
                            <th class="wth25p">대분류</th>
                            <th class="wth25p">기간산업직종(47개)</th>
                            <th class="wth25p">전략산업직종(25개)</th>
                            <th class="wth25p">서비스산업직종(40개)</th>
                        </tr>
                        <tr>
                            <th>경영·회계·사무(5)</th>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        물류관리
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        품질경영
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        마케팅전략기획(마케팅PD)
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        핀테크
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        기술문서작성가
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th>교육·자연·사회과학(1)</th>
                            <td>&nbsp;</td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        빅데이터 전문가
                                    </li>
                                </ul>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <th>문화·예술·디자인·방송<br>(8)</th>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        시각디자인
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        환경디자인
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        영상제작
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        디지털디자인
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        3D영상제작
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        게임콘텐츠제작
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        제품디자인
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        멀티미디어콘텐츠제작
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th>이용·숙박·여행·<br>오락·스포츠(3)</th>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        국제관광마케팅
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        크루즈
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        마리나
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th>건설(17)</th>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        건축목공
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        건축시공
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        실내건축
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        측량
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        토목시공
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        조경
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        가스설비시공
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        열냉동설비
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        건축설비 설계·시공
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        창호시공
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        철도안전
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        그린홈시공
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        친환경건축시공
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        플랜트건설
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        플랜트설비
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        U-city(건설․토목․IT)
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        BIM
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th>기계(31)</th>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        기계설계제작
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        공유압
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        생산기계
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        치공구
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        기계조립
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        선체가공
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        선체의장
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        선체조립
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        자동차도장
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        레이저가공
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        밀링(머시닝센타)
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        사출금형
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        선반(CNC선반)
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        프레스금형
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        컴퓨터응용기계
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        공조냉동기계
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        열기계
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        시스템제어
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        측정
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        의료기기제작
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        자동차전기․전자장치정비
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        자동차엔진정비
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        자동차새시정비
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        자동차튜닝
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        영상촬영드론조종
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        산업응용로봇제어
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        항공기정비
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        자동차차체정비
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        운반하역기계설치·정비
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        생산정보시스템
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        선박기관정비
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th>재료(5)</th>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        레이저용접
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        수중용접
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        특수용접
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        파이프용접
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        품질관리기술자
                                    </li>
                                </ul>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <th>섬유·의복(2)</th>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        염색가공
                                    </li>
                                </ul>
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        패션디자인
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th>전기·전자(12)</th>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        외선공사
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        내선공사
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        전기기기제작
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        전자응용기기(개발,생산)
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        전자시스템제어
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        전자부품개발
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        전기시스템제어
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        LED응용
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        반도체장비설비
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        LED장비및공정
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        반도체생산
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        태양광발전설비
                                    </li>
                                </ul>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <th>정보통신(11)</th>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        광통신설비
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        정보통신설비
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        사물인터넷
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        증강현실
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        응용소프트웨어프로그래머
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        정보시스템구축(개발,운영)
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        디지털컨버전스
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        제품SW구축
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        RFID․USN응용
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        스마트웹 &amp; 콘텐츠개발
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        네트워크운영관리
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th>인쇄·목재·가구·공예<br>(5)</th>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        특수인쇄
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        평판인쇄
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        가구설계제작
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        출판
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        보석디자인
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th>환경·에너지·안전(6)</th>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        광산자원개발생산
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        태양에너지생산
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        생태복원·관리
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        산업환경
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        비파괴검사
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        환경보건관리
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th>농림·수산(6)</th>
                            <td></td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        종자생산·유통
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        할랄/코셔
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        스마트팜구축
                                    </li>
                                </ul>
                            </td>
                            <td>
                                <ul class="no-margin-li">
                                    <li>
                                        <span class="li-dot-2"></span>
                                        말조련
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        곤충사육
                                    </li>
                                    <li>
                                        <span class="li-dot-2"></span>
                                        동물매개치유
                                    </li>
                                </ul>
                            </td>
                        </tr>
                    </tbody></table>
                </div><!-- table-wrapper -->
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
