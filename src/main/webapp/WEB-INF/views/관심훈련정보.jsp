<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="../resources/css/foot.css" rel="stylesheet" type="text/css"/>
	<link href="../resources/css/header.css" rel="stylesheet" type="text/css"/>
	<link href="../resources/css/css.css" rel="stylesheet" type="text/css"/>
	<link href="../resources/css/관심훈련.css" rel="stylesheet" type="text/css"/>
	<link rel="shortcut icon" href="resources/ico/Frame.png">
	<style>
		.m-unit-body2 li:hover > a, .m-unit-body2 li.mul1 > a {
    	font-weight: 700;
    	color: #0598e0;
    	}
    	ol.paging {
	    list-style:none;
	}
	
	ol.paging li {
	    float:left;
	    margin-right:2em;
	}
	
	ol.paging li a {
	    display:block;
	    padding:3px 7px;
	    color:#2f313e;
	    font-weight:bold;
	}
	
	ol.paging li a:hover {
	    border-bottom: 4px solid #4270e0;
	    color:black;
	    font-size: 1em;
	    font-weight:bold;
	}
	
	.disable {
	    padding:3px 7px;
	    border:1px solid #ababab;
	    color:#6a6969;
	}
	
	.now {
	   padding:3px 7px;
		border-bottom: 4px solid #4270e0;
	    color:black;
	    font-size: 1em;
	    font-weight:bold;
	}
	#bbs_bot{
		text-align: center;
		margin: 0 auto;
		width: 100%;
	}
	#paging_area{
		display: inline-block;
		margin: 0 auto;
	}
	#menu_area{
		margin-bottom: 2em;
		width: 90%;
		display: inline-block;
	}
	</style>
</head>
	<!-- 상단영역 -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 상단영역끝 -->
<body>
	<!-- 왼쪽 메뉴 영역 -->
	<jsp:include page="menubar.jsp"></jsp:include>
	<!-- 왼쪽 메뉴 영역 끝-->
	<!-- 오른쪽 영역 -->
	<div id="bbb_right">
		<div class="tableArea03">
			<ul class="card-history">
				<li>
				<div class="commentBox">
					<h3 class="content-ex1">관심 훈련</h3>
					${cookie.trid}
				</div>
				<c:forEach var="vo" items="${ar }">
					  <div id="dele1" class="del">
					<div class="cardTgcrlistTr2" >
						<div class="divTableArea06 ty2 tablet" id="card">
							<span>
							</span>
							<ul class="divTable">
								<li>
									<strong class="tit">기관명</strong>
									<a href="javaScript:click('http://localhost:9090/view?TRPR_ID=${vo.tr_id}&TRPR_DEGR=${vo.tr_degr}&u_id=${sessionScope.userName.id}&imageCode=${vo.imageCode }')" onclick="sendre" id="getClick" class="txt" style="color:#4171df;">
										${vo.tr_name }
									</a>
								</li>
								<li>
									<strong class="tit">과정코드</strong>
									<span class="txt">
										${vo.tr_id}
									</span>
								</li>
								<li>
									<strong class="tit">과정기간</strong>
									<span class="txt">
										${vo.tr_term }
									</span>
								</li>
								<li>
									<strong class="tit">관심선택한 날짜</strong>
									<span class="txt">
										${vo.like_date }
									</span>
								</li>
							</ul>
						</div>
					</div>
					</div>
					</c:forEach>
					
				<div id="bbs_bot">
					<div id="paging_area">${pageCode }</div>
				</div>
				</li>
			</ul>
			
		</div>

	</div>	
	<!-- 오른쪽 영역 끝 -->
	
	<!-- 하단영역 -->
		<jsp:include page="footer.jsp"></jsp:include>
	<!-- 하단영역끝 -->
	
	
	
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>	
<script>

$(function() {
	$("#u_btn1").click(function() {
		$('.m-unit-body1').toggle(); 
	})
})
$(function() {
	$("#u_btn2").click(function() {
		$('.m-unit-body2').toggle(); 
	})
})
$(function() {
	$("#u_btn3").click(function() {
		$('.m-unit-body3').toggle(); 
	})
})
$(function() {
	$("#u_btn4").click(function() {
		$('.m-unit-body4').toggle(); 
	})
})

$(function () {
	$("#b_btn").click(function() {
		  if ($('.divTable').css('display') == 'block') {
	            $('.divTable').css('display', 'none');
	        } else {
	            $('.divTable').css('display', 'block');
	        }
	})
})


//DB연결 후 수정할꺼에요!!
	$(function () {
		
		if($("#num").prop("checked", false)){
			
		$("#del_btn").click(function () {
			//클릭한 구역가져오기
			//alert("들어옴");		
			var select_obj="";
			
			$('input[type="checkbox"]:checked').each(function(index) {
				if(index != 0){
					select_obj +=',';
				}
				select_obj += $(this).val();
				
				var del = $(this).parents(".del");
				
				$(del).css("display","none");
			})
				
			})
			
		};
	});
	
function click(as){
	location.href = ""+as+"";
}
</script>
</body>
</html>
