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
           height: 1400px;
            width: 900px;
             margin: 145px 550px;
          font-size: medium;
        }
    
        .style{
            list-style: none;
        }
    
        table{
            border-collapse: collapse;
            width: 100%;
          
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
            text-align: center;
        }
        .text-center{
            
            text-align: center;
        }
        #header{
            margin: 10px 0 ;
        }
        .content-title{
           border-bottom: 2px solid skyblue;
            width: 39%;
              position: relative !important;
           left: 40px !important;
           top: 0px !important;
        }
        ul{
            margin: 10px 0;
          
        }
        .ta{
            width: 100%;
            margin: 25px 0;
        }
       strong{
           display: inline-block;
           margin-bottom: 5px;
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
        list-style-type: disc;
        margin: 10px 0;
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
    .no-style{
        list-style: none;
        text-align: left;
        margin: 10px 0;
    }
    .no-style-margin{
        margin: 5px 0;
        list-style: none;
    }
    .margin-left{
        margin-left: -40px;
    }


</style>
<body>
<jsp:include page="lookMenu.jsp"/>
     <div class="content">
      <jsp:include page="lookCategory.jsp"/>
		<h2 class="content-title"><span class="content-title-bar"></span>사업주 직업능력개발훈련 지원혜택</h2>
		
		
		<ul>
			<li>
				<span class="li-dot"></span>
				사업주 직업능력개발훈련은 한국산업인력공단에서 관할하는 훈련으로서, 수강등록을 위해 근로자 직업능력개발카드를 요하지 않으며, 사업주를 통해 기업 명의로 훈련을 수강할 수 있습니다.
			</li>
			<li>
				<span class="li-dot"></span>
				사업주 직업능력개발훈련에 참여하는 훈련생의 경우 다음과 같은 혜택을 받을 수 있습니다.
				<ul class="no-margin-li">
					<li class="no-style">
						<strong>1. 훈련비:</strong> 훈련비는 사업주가 부담하며, 훈련생의 훈련수료여부에 따라 사업주에게 지원금이 지급됩니다.
					</li>
					<li class="no-style">
						<div class="table-wrapper">
							<table>
								<tbody><tr>
									<th colspan="2">훈련비 지원기준</th>
								</tr>
								<tr>
									<th>집체훈련 또는 현장훈련</th>
									<td>출석률 80% 이상</td>
								</tr>
								<tr>
									<th>인터넷원격훈련 또는 스마트훈련</th>
									<td>평가성적 60점 이상 및 학습진도율 80% 이상</td>
								</tr>
							</tbody></table>
						</div><!-- table-wrapper -->
					</li>
					<li class="no-style">
						<strong>2. 숙식비:</strong> 훈련기관에 따라 숙식비를 별도로 납부하여 훈련을 수강해야 하는 경우, 사업주가 해당 금액을 부담합니다.
					</li>
				</ul>
			</li>
			<li>
				<span class="li-dot"></span>
				<strong>사업주의 지원을 받아 수강 시</strong>
				<ul class="no-margin-li">
					<li class="no-style">
						<span class="li-line"></span>
						훈련대상자는 노동부로부터 인정받은 훈련과정을 수강하게 되며 해당 훈련비용은 사업주가 부담하게 됩니다. 
					</li>
					<li class="no-style">
						<span class="li-line"></span>
						훈련대상자의 훈련 출석률이 80% 이상이어야 수료한 것으로 인정되며, 이 경우 사업주가 한국산업인력공단에 비용신청서 등을 제출하면 비용지원한도 내에서 훈련비용을 환급 받게 됩니다.
					</li>
					<li class="no-style">
						<span class="li-line"></span>
						지원혜택에 대한 자세한 사항은 아래 표를 참고하시기 바랍니다.
					</li>
					<li class="no-style">
						<div class="table-wrapper">
							<table>
                                <colgroup>
                                    <col width="20%">
                                    <col width="*">
                                    <col width="40%">
                                </colgroup>
								<tbody><tr>
									<th class="wth20p">지원내용</th>
									<th class="wth40p">지원요건</th>
									<th class="wth40p">지원수준</th>
								</tr>
								<tr>
									<th>훈련비</th>
									<td>
										<ul>
											<li class="no-style">
												<span class="li-dot-2"></span>
												1일 8시간(대기업 2일 16시간) 이상의 훈련 실시
											</li>
										</ul>
									</td>
									<td>
										아래 표 내용 참조
									</td>
								</tr>
								<tr>
									<th rowspan="2">유급휴가<br>훈련인건비</th>
									<td>
										<ul>
											<li class="no-style">
												<span class="li-dot-2"></span>
												소속 근로자 대상으로 7일(대기업 60일) 이상 유급휴가를 부여하고 30시간(대기업 180시간) 이상 훈련 실시
											</li>
										</ul>
									</td>
									<td>
										<ul>
											<li class="no-style">
												<span class="li-dot-2"></span>
												<strong>훈련생 인건비</strong><br>소정훈련시간 x 시간급 최저임금액의 150%<br/>(대기업 100%)
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<td>
										<ul>
											<li class="no-style">
												<span class="li-dot-2"></span>
												중소기업 소속근로자 대상으로 유급휴가를 30일 이상 부여하고 120시간 이상 훈련실시하면서 대체인력 고용
											</li>
										</ul>
									</td>
									<td>
										<ul>
											<li class="no-style">
												<span class="li-dot-2"></span>
												<strong>대체인력 인건비</strong><br>소정훈련시간 x 시간급 최저임금액의 100%
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th>훈련수당</th>
									<td>
										<ul>
											<li class="no-style">
												<span class="li-dot-2"></span>
												채용예정자 등을 대상으로 1개월 120시간 이상 양성훈련을 실시하면 훈련생에게 훈련수당 지급
											</li>
										</ul>
									</td>
									<td>
										<ul>
											<li class="no-style">
												<span class="li-dot-2"></span>
												1월 20만원 한도 내에서 사업주가 훈련생에게 지급한 금액
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th>숙식비</th>
									<td>
										<ul>
											<li class="no-style">
												<span class="li-dot-2"></span>
												훈련시간이 1일 5시간 이상인 훈련과정 중 훈련생에게 숙식을 제공
											</li>
										</ul>
									</td>
									<td>
										<ul>
											<li class="no-style">
												<span class="li-dot-2"></span>
												식비 1일 3,300원 한도<br>숙식비 1일 14,000원 한도<br>(1개월 330,000원 한도)
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<strong>훈련비 지원수준</strong>
										<ul>
											<li class="no-style">
												<span class="li-dot-2"></span>
												자체훈련: 자체훈련비의 80% 지원(우선지원대상기업 120%, 1,000인 이상 기업 50%)
											</li>
											<li class="no-style">
												<span class="li-dot-2"></span>
												위탁훈련: 위탁훈련비의 60% 지원(50인 미만 기업 100%, 그 외 우선지원대상기업 90%, 1,000인 이상 기업 40%)
											</li>
											<li class="no-style">
												<span class="li-dot-2"></span>
												단, 외국어 과정은 산정된 지원금의 50% 지원
											</li>
										</ul>
									</td>
								</tr>
							</tbody></table>
						</div>
					</li>
				</ul>
			</li>
		</ul>
		
		
		
		<!-- 사업주 -->
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
