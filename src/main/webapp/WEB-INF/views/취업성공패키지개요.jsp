<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/lookCategory.css" rel="stylesheet" type="text/css"/>
<link href="../resources/css/lookMenu.css" rel="stylesheet" type="text/css"/>
<link href="../resources/css/header.css" rel="stylesheet" type="text/css"/>
<link href="../resources/css/foot.css" rel="stylesheet" type="text/css"/>
<link href="../resources/css/look.css" rel="stylesheet" type="text/css"/>
	
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap');

   .content-title {
	    height: 10%;
	    border-bottom: 2px solid skyblue;
	    width: 36%;
	    position: relative !important;
	    left: 50px !important;
	    top: 16px !important;
	}
	#lookCategory {
	    margin: 0 0 0.9em 3em;
	    width: 94%;
	    height: 3em;
	}
   	.leftBox {
	    margin-left: 260px;
	    margin-top: 90px;
	}
    ul{
        margin: 10px 0;
    }
    table{
        width: 100%;
    }
</style>
<jsp:include page="header.jsp"></jsp:include>
<body>
	
<div id="benetype1">
    <jsp:include page="lookMenu.jsp"/>
    	
	<div class="content">
	    <jsp:include page="lookCategory.jsp"/>
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