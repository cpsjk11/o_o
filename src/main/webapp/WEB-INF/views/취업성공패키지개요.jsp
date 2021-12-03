<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/css.css" rel="stylesheet" type="text/css"/>
	<link href="../resources/css/나의카드.css" rel="stylesheet" type="text/css"/>
</head>
	<style>
	header{
		top:0;
	}
    body{
        
        
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
    }
    #header{
        margin: 10px 0 ;
    }
    .content-title{
        border-bottom: 2px solid skyblue;
        width: 25%;
       	position: relative !important;
    	left: 50px !important;
    	top: 0px !important;
    }
    li{
        padding: 3px 3px 3px 8px;
    }
    ul{
        margin: 10px 0;
    }
    table{
        width: 100%;
    }

/*    <!-- 여기는 좌측 메뉴바 css --> */
  .leftBox {
 padding: 0px;
  margin-left: 200px;
  margin-top: 150px;
  width: 205px;
  background: #fff;
}
.left{
}
#bbb_left{
	position: absolute;
	top: 0;
}

.left li a {
  text-decoration: none;
  padding: 10px;
  display: block;
  color: #000;
  font-weight: bold;
}

.left li .m-bullet:hover {
  background: #333;
  color: #fff;
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
#table-wrapper{
    width: 100%;
}
.no-style{
    list-style: none;
}
.li-dot{
    font-size: 15px;
}
.no-l_style{
	list-style: none;
}

</style>
<jsp:include page="header.jsp"></jsp:include>
<body>
	
<div id="benetype1">
    <div id="bbb_left" class="leftBox">
        <div id="menu_wrapper">
            
            <div class="m-unit item7 ">
                <div class="m-unit-title to1">취업성공패키지&nbsp;&nbsp;👇</div>
                <div class="m-unit-body up">
                    <ul class="left">
                        <li class="mul1 "><a href="look2">개요</a></li>
                        <li class="mul2 "><a href="look3">프로그램 구성</a></li>
                        <li class="mul3 "><a href="look4">지원혜택</a></li>
                        <li class="mul4 "><a href="#">신청자격</a></li>
                        <li class="mul5 "><a href="#">신청방법</a></li>
                        <li class="mul6 "><a href="#">참여제한</a></li>
                        <li class="mul7 "><a href="#">재참여</a></li>
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
                    </ul class="left">
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
	</div>
    </div>
	<div class="content">
		<h2 class="content-title">
			<span class="content-title-bar"></span>
			취업성공패키지 개요
		</h2>
		<ul>
			<li><span class="li-dot">
				취업성공패키지 서비스는 실업자를 대상으로 직업상담 - 직업훈련 - 취업알선 순으로 최장 1년 동안 진행되는 종합적인 취업지원 서비스입니다.
                </span>
			</li>
			<li><span class="li-dot">
				취업성공패키지는 저소득층 및 취업취약계층과 더불어 취업에 어려움을 겪고 있는 청년층 및 중∙장년층 실업자를 대상으로 서비스를 제공하고 있습니다.
                </span>
			</li>
			<li><span class="li-dot">
				청년층이 참여하는 취업성공패키지는 "청년취업성공패키지"라는 명칭으로도 불리며, 서비스 지원내용은 동일합니다.
                </span>
			</li>
			
			
			
			
			
			
			<li><span class="li-dot">
				취업성공패키지 유형별 참여 대상자는 아래와 같습니다.
                </span>
			</li>
			<li class="no-style">
				<div class="table-wrapper">
					<table>
						<tbody><tr>
							<th class="wth10p">&nbsp;</th>
							<th class="wth45p">1유형(저소득층 및 취업취약계층)</th>
							<th class="wth45p">2유형(청년 및 중·장년 실업자)</th>
						</tr>
						<tr>
							<th rowspan="2" style="width: 116px;">신<br>청<br>대<br>상<br>자</th>
							<td rowspan="2">
								<ul class="no-padding">
									<li><strong>만 18~69세이며, 아래 요건 중 어느 하나에 해당하는 자</strong></li>
								</ul>
								<ul class="no-margin-li">
									<li>
										<span class="li-dot-2"></span>
										기초생활수급자
									</li>
									<li>
										<span class="li-dot-2"></span>
										차차상위 이하 저소득층
									</li>
									<li>
										<span class="li-dot-2"></span>
										노숙인 및 비주택거주자
									</li>
									<li>
										<span class="li-dot-2"></span>
										북한이탈주민
									</li>
									<li>
										<span class="li-dot-2"></span>
										신용회복지원자
									</li>
									<li>
										<span class="li-dot-2"></span>
										결혼이민자 및 결혼이민자의 외국인(중도입국) 자녀
									</li>
									<li>
										<span class="li-dot-2"></span>
										위기청소년
									</li>
									<li>
										<span class="li-dot-2"></span>
										니트족(NEET)
									</li>
									<li>
										<span class="li-dot-2"></span>
										여성가장
									</li>
									<li>
										<span class="li-dot-2"></span>
										국가유공자
									</li>
									<li>
										<span class="li-dot-2"></span>
										영세자영업자 및 특수형태근로 종사자
									</li>
									<li>
										<span class="li-dot-2"></span>
										건설일용직
									</li>
									<li>
										<span class="li-dot-2"></span>
										장애인
									</li>
									<li>
										<span class="li-dot-2"></span>
										FTA 피해 실직자
									</li>
									<li>
										<span class="li-dot-2"></span>
										취업맞춤특기병
									</li>
									<li>
										<span class="li-dot-2"></span>
										미혼모·한부모
									</li>
									<li>
										<span class="li-dot-2"></span>
										기초연금수급자
									</li>
								</ul>
							</td>
							<td>
								<ul class="no-padding">
									<li>
										<strong>청년층 (만 18~34세)</strong>
									</li>
								</ul>
								<ul class="no-margin-li">
									<li>
										<span class="li-dot-2"></span>
										고졸 이하 비진학 청년
									</li>
									<li>
										<span class="li-dot-2"></span>
										재학생(고등학교, 대학교, 대학원)
									</li>
									<li>
										<span class="li-dot-2"></span>
										대졸 이상 미취업자
									</li>
									<li>
										<span class="li-dot-2"></span>
										영세자영업자
									</li>
									<li>
										<span class="li-dot-2"></span>
										고용촉진특별구역 및 고용재난지역 등 이직자
									</li>
									<li>
										<span class="li-dot-2"></span>
										취업맞춤특기병
									</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td>
								<ul class="no-padding">
									<li>
										<strong>중·장년층 (만 35~69세)</strong>
									</li>
								</ul>
								<ul class="no-margin-li">
									<li>
										<span class="li-dot-2"></span>
										기준중위소득 100% 이하의 가구원으로서 아래 1~3 중 어느 하나에 해당되는 사람
										<ul class="no-l_style">
											<li>
												<strong>1.</strong> 실업급여 수급종료 이후 미취업자
											</li>
											<li>
												<strong>2.</strong> 고용보험 가입이력은 있으나 수급요건을 충족하지 못한 미취업자
											</li>
											<li>
												<strong>3.</strong> 고용보험 가입이력 없는 자
											</li>
										</ul>
									</li>
									<li>
										<span class="li-dot-2"></span>
										영세자영업자
									</li>
									<li>
										<span class="li-dot-2"></span>
										연간매출액 8천만 원~1억 5천만 원
									</li>
									<li>
										<span class="li-dot-2"></span>
										고용촉진특별구역 및 고용재난지역 등 이직자
									</li>
									<li>
										<span class="li-dot-2"></span>
										기업활력제고법 시행에 따른 중·장년 참여자
									</li>
								</ul>
							</td>
						</tr>
					</tbody></table>
				</div><!-- table-wrapper -->
			</li>
			<li class="mt20">
				<span class="li-dot"></span>
				각 단계별로 지원되는 지원금은 아래와 같습니다.
			</li>
			<li class="no-style">
				<div class="table-wrapper">
					<table>
						<tbody id="ta"><tr>
							<th rowspan="2" class="wth20p">
								진행절차
							</th>
							<th colspan="2">
								지원금
							</th>
						</tr>
						<tr>
							<th class="wth40p">
								1유형
							</th>
							<th class="wth40p">
								2유형
							</th>
						</tr>
						<tr>
							<th>
								1단계
							</th>
							<td>
								<ul>
									<li>
										<span class="li-dot-2"></span>
										참여수당 최대 25만 원
									</li>
								</ul>
							</td>
							<td>
								<ul>
									<li>
										<span class="li-dot-2"></span>
										참여수당 최대 20만 원
									</li>
								</ul>
							</td>
						</tr>
						<tr>
							<th>
								2단계
							</th>
							<td>
								<ul class="no-margin-li">
									<li>
										<span class="li-dot-2"></span>
										훈련비 최대 300만 원
									</li>
									<li>
										<span class="li-dot-2"></span>
										훈련수당 최대 416,000원
									</li>
								</ul>
							</td>
							<td>
								<ul class="no-margin-li">
									<li>
										<span class="li-dot-2"></span>
										훈련비 최대 200만 원
									</li>
									<li>
										<span class="li-dot-2"></span>
										훈련수당 최대 416,000원
									</li>
								</ul>
							</td>
						</tr>
						<tr>
							<th>
								3단계
							</th>
							<td>
								<ul>
									<li>
										<span class="li-dot-2"></span>
										방문상담수당 2만 원/일
									</li>
								</ul>
							</td>
							<td>
								<ul>
									<li>
										<span class="li-dot-2"></span>
										방문상담수당 2만 원/일
									</li>
								</ul>
							</td>
						</tr>
						<tr>
							<th>
								종료 후
							</th>
							<td>
								<ul>
									<li>
										<span class="li-dot-2"></span>
										취업성공수당 최대 150만 원
									</li>
								</ul>
							</td>
							<td>&nbsp;</td>
						</tr>
					</tbody></table>
				</div><!-- table-wrapper -->
			</li>
			
		</ul>
	</div><!-- content -->
	</div>
	
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
	</script>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>