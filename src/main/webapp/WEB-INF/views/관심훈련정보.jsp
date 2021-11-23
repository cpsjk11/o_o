<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="../resources/css/css.css" rel="stylesheet" type="text/css"/>
	<link href="../resources/css/관심훈련.css" rel="stylesheet" type="text/css"/>
	<style>
		.m-unit-body2 li:hover > a, .m-unit-body2 li.mul1 > a {
    	font-weight: 700;
    	color: #0598e0;
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
		<div class="tableArea03 ty3 myCardArea">
			<ul class="card-history">
				<li>
				<div class="commentBox">
					<h3 class="content-ex1">관심 훈련</h3>
				</div>
				<button type="button" class="btnType1" id="b_btn">상세 보기</button>
					<div id="dele1" class="del">
					<div class="cardTgcrlistTr2" >
						<div class="divTableArea06 ty2 tablet" id="card">
							<span>
							<input type="checkbox" class="divTable" id="num" name="num" value="1">
							</span>
							<ul class="divTable">
								<li>
									<strong class="tit">과정명</strong>
									<span class="txt">
									</span>
								</li>
								<li>
									<strong class="tit">과정기간</strong>
									<span class="txt">
									</span>
								</li>
								<li>
									<strong class="tit">가격</strong>
									<span class="txt"></span>
								</li>
								<li>
									<strong class="tit">위치</strong>
									<span class="txt"></span>
								</li>
							</ul>
						</div>
					</div>
					</div>
					<div id="dele2" class="del">
					<div class="cardTgcrlistTr2" >
						<div class="divTableArea06 ty2 tablet" id="card">
							<span>
							<input type="checkbox" class="divTable" id="num" name="num" value="2">
							</span>
							<ul class="divTable" id="ul_t">
								<li>
									<strong class="tit">과정명</strong>
									<span class="txt" style="color:#4171df;">
									</span>
								</li>
								<li>
									<strong class="tit">과정기간</strong>
									<span class="txt"></span>
								</li>
								<li>
									<strong class="tit">가격</strong>
									<span class="txt"></span>
								</li>
								<li>
									<strong class="tit">위치</strong>
									<span class="txt"></span>
								</li>
							</ul>
						</div>
					</div>
					</div>
				</li>
			</ul>
			<button type="button" class="divTable" id="del_btn">삭제</button>
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
// 만든이 : 김성주 축구 ㄱ?
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
				alert(del)
				$(del).css("display","none");
			})
				
			})
			
		};
	});
</script>
</body>
</html>
