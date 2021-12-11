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
        margin: 15px 0;
        list-style: none;
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
		<h2 class="content-title"><span class="content-title-bar"></span>근로자 직업능력개발훈련 지원혜택</h2>
		<ul class="no-style">
			<li>
				<h4>근로자 직업능력개발카드가 제공하는 혜택은 아래와 같습니다.</h4>
			</li>
		</ul>
		<ul>
			<li class="no-style">
				<span class="li-dot"></span>
				<strong>훈련비</strong>
				<ul>
					<li class="no-margin-li">
						<span class="li-line"></span>
						최대 200만 원
					</li>
					<li class="no-margin-li">
						<span class="li-line"></span>
						지원받을 수 있는 금액은 5년간 총 300만 원이며, 1년 최대한도는 200만 원입니다.
					</li>
					<li class="no-margin-li">
						<span class="li-line"></span>
						근로자 직업능력개발카드의 유효기간은 3년입니다.
					</li>
					<li class="no-margin-li">
						<span class="li-line"></span>
						근로자 직업능력개발카드의 한도를 초과하는 훈련비는 자비로 부담하여야 합니다.
					</li>
					<li class="no-margin-li">
						<span class="li-line"></span>
						훈련의 유형에 따라 지원되는 훈련 지원금은 아래와 같습니다.
					</li>
					<li class="no-style">
						<div class="table-wrapper">
							<table>
								<tbody><tr>
									<th nowrap="nowrap">훈련구분</th>
									<th nowrap="nowrap">지원금 지급기준</th>
									<th nowrap="nowrap">지원금 비율</th>
									<th>상세내용</th>
								</tr>
								<tr>
									<th nowrap="nowrap" class="vat">일반 과정<br>(집체)</th>
									<td nowrap="nowrap">
										<ul>
											<li class="no-style">
												<span class="li-dot-2"></span>
												단위기간 출석률<br>80% 이상
											</li>
										</ul>
									</td>
									<td nowrap="nowrap" class="text-center">수강료의<br>60% ~ 100%</td>
									<td>
										<ul>
											<li class="list-leftmargin">
												<span class="li-dot-2"></span>
												음식 및 기타서비스 직종은 60% 지원
											</li>
											<li class="list-leftmargin">
												<span class="li-dot-2"></span>
												비정규직, 자영업자, (우선지원대상기업의)이직 예정자, 무급휴직자, 우선지원대상기업 근로자는 100% 지원
											</li>
											<li class="list-leftmargin">
												<span class="li-dot-2"></span>
												위에 해당되지 않는 직종은 80% 지원
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th nowrap="nowrap" class="vat">외국어 과정</th>
									<td nowrap="nowrap">
										<ul>
											<li class="no-style">
												<span class="li-dot-2"></span>
												단위기간 출석률<br>80% 이상
											</li>
										</ul>
									</td>
									<td nowrap="nowrap" class="text-center">수강료의<br>60%</td>
									<td>
										<ul>
											<li class="no-style">
												<span class="li-dot-2"></span>
												정규직: 45,000원
											</li>
											<li class="no-style">
												<span class="li-dot-2"></span>
												비정규직: 54,000원
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th nowrap="nowrap" class="vat">인터넷 과정</th>
									<td nowrap="nowrap">
										<ul>
											<li class="no-style">
												<span class="li-dot-2"></span>
												평가성적 60점 이상<br>(100점 만점 기준)
											</li>
											<li class="no-style">
												<span class="li-dot-2"></span>
												학습진도율 80% 이상
											</li>
										</ul>
									</td>
									<td nowrap="nowrap" class="text-center">수강료의<br>100%</td>
									<td>
										<ul>
											<li class="no-style">
												<span class="li-dot-2"></span>
												단, 외국어과정은 50% 지원
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<td colspan="4">
										<ul>
											<li class="no-style">
												<span class="li-dot-2"></span>
												위의 수강료는 정부지원금을 의미하는 것이며, 실제훈련비와 정부지원금의 차액은 지원되지 않습니다.
											</li>
											<li class="no-style">
												<span class="li-dot-2"></span>
												외국어 과정의 경우 20시간 단위로 훈련비가 지원됩니다. 자세한 사항은 아래에서 확인하실 수 있습니다.
											</li>
											<li class="no-style">
												<span class="li-dot-2"></span>
												<strong>외국어 과정 지원금액 산정방식</strong>
												<ul>
													<li class="no-style">
														<span class="li-line"></span>
														<strong>훈련시간이 20시간 미만일 경우</strong>
														<div class="footnote-box">
															<div class="footnote-box-un">
																<ul>
																	<li class="no-style">
																		<span class="li-dot-3"></span>
																		시간당 2,250원을 적용하여 산정한 금액 지원
																	</li>
																	<li class="no-style">
																		<span class="li-dot-3"></span>
																		비정규직, 자영업자, (우선지원대상기업의)이직 예정자, 무급휴직자는 시간당 2,700원을 적용하여 산정한 금액 지원
																	</li>
																</ul>
															</div>
														</div>
													</li>
													<li class="no-style">
														<span class="li-line"></span>
														<strong>훈련시간이 20시간 이상일 경우</strong>
														<div class="footnote-box">
															<div class="footnote-box-un">
																<ul>
																	<li class="no-style">
																		<span class="li-dot-3"></span>
																		20시간 단위로 정규직은 45,000원, 비정규직은 54,000원씩 지원
																	</li>
																	<li class="no-style">
																		<span class="li-dot-3"></span>
																		20시간 단위보다 적은 나머지 훈련시간에 대해서는 훈련비가 지급되지 않습니다.
																	</li>
																</ul>
															</div>
														</div>
													</li>
													<li class="no-style">
														<span class="li-line"></span>
														<strong>예) 비정규직자 기준으로 산정하였을 경우</strong>
														<div class="footnote-box">
															<div class="footnote-box-un">
																<ul>
																	<li class="no-style">
																		<span class="li-dot-3"></span>
																		<strong>훈련시간이 40시간일 경우</strong><br>20시간(54,000원) + 20시간(54,000원) 지원 = 총 108,000원 지원
																	</li>
																	<li class="no-style">
																		<span class="li-dot-3"></span>
																		<strong>훈련시간이 55시간일 경우</strong><br>20시간(54,000원) + 20시간(54,000원) + 15시간(지원금 없음) = 총 108,000원 지원
																	</li>
																</ul>
															</div>
														</div>
													</li>
												</ul>
											</li>
										</ul>
									</td>
								</tr>
							</tbody></table>
						</div>
					</li>
				</ul>
			</li>
			<li class="no-style">
				<span class="li-dot"></span>
				<strong>훈련장려금(자영업자 훈련생만 해당)</strong>
				<ul class="no-margin-li">
					<li>
						<span class="li-line"></span>
						<strong>최대 18,000원/일</strong>
					</li>
					<li>
						<span class="li-line"></span>
						훈련기간 동안 출석률 80% 이상을 충족한 경우 지원 받을 수 있습니다.
					</li>
					<li>
						<span class="li-line"></span>
						일별 훈련시간에 따라 지원되는 금액은 아래와 같습니다.
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
