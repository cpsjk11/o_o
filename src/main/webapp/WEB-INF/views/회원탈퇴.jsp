<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link href="../resources/css/header.css" rel="stylesheet" type="text/css"/>
<link href="../resources/css/foot.css" rel="stylesheet" type="text/css"/>
<link href="../resources/css/회원탈퇴.css" rel="stylesheet" type="text/css"/>
<link rel="shortcut icon" href="../resources/ico/Frame.png">
<style>
.m-unit-body1 li:hover > a, .m-unit-body1 li.mul4 > a {
  	font-weight: 700;
  	color: #0598e0;
}
#bbb_left {
float:left;
width:222px;
min-height:300px;
z-index:0;
}
#menu_wrapper {
border:1px solid #ddd;
}

.m-unit + .m-unit {
border-top:1px solid #e5e5e5;
}
.m-unit-title {
position:relative;
height:46px;
padding:1px;

}
.m-unit-title > button {
position:relative;
float:left;
width:100%;
height:46px;
line-height:46px;
text-align:left;
text-indent:12px;
z-index:1;
font-family: 맑은 고딕;
font-size: 20px;
}
.m-unit-body1 {
border-top:1px solid #e5e5e5;
}
.m-unit-body1 ul {
display:block;
list-style:none;
padding:15px 0 15px 32px;
margin:0;
line-height: 40px;
}
.m-unit-body1 li a {
	text-decoration: none;
	color: #000;
	font-family: 맑은 고딕;
}

.m-unit-body1 li:hover > a{
color:#0598e0;
text-decoration: none;
}
.m-unit-body2 {
border-top:1px solid #e5e5e5;
}
.m-unit-body2 ul {
display:block;
list-style:none;
padding:15px 0 15px 32px;
margin:0;
line-height: 40px;
}
.m-unit-body2 li a {
	text-decoration: none;
	color: #000;
	font-family: 맑은 고딕;
}

.m-unit-body2 li:hover > a{
color:#0598e0;
text-decoration: none;
}
.m-unit-body3 {
border-top:1px solid #e5e5e5;
}
.m-unit-body3 ul {
display:block;
list-style:none;
padding:15px 0 15px 32px;
margin:0;
line-height: 40px;
}
.m-unit-body3 li a {
	text-decoration: none;
	color: #000;
	font-family: 맑은 고딕;
}

.m-unit-body3 li:hover > a{
color:#0598e0;
text-decoration: none;
}
.m-unit-body4 {
border-top:1px solid #e5e5e5;
}
.m-unit-body4 ul {
display:block;
list-style:none;
padding:15px 0 15px 32px;
margin:0;
line-height: 40px;
}
.m-unit-body4 li a {
	text-decoration: none;
	color: #000;
	font-family: 맑은 고딕;
}

.m-unit-body4 li:hover > a{
color:#0598e0;
text-decoration: none;
}


.m-bullet {
position:absolute;
top:9px;
left:-11px;
width:4px;
height:4px;
border-radius:100%;
background-color:#ccc;

}
.m-unit-body1 li:hover .m-bullet,
.m-unit-body1 li.selected .m-bullet {
background-color:#0598e0;
}
.m-unit-body2 li:hover .m-bullet,
.m-unit-body2 li.selected .m-bullet {
background-color:#0598e0;
}
.m-unit-body3 li:hover .m-bullet,
.m-unit-body3 li.selected .m-bullet {
background-color:#0598e0;
}
.m-unit-body4 li:hover .m-bullet,
.m-unit-body4 li.selected .m-bullet {
background-color:#0598e0;
}

.m-unit.on .m-unit-title > button,
.m-unit-title > button:hover {
font-weight:700;
color:#000;
}

	</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="wrap">
		<jsp:include page="menubar.jsp"></jsp:include>
		<div id="user_exit_area">
			<div id="content">
				<div id="img_area">
					<img alt="" src="../resources/img/waring.png">
				</div>
				<div id="text_area">
					<ul>
						<li>회원 탈퇴를 하시게 되면 추후 동일한 아이디로는 재가입이 불가능합니다.</li>
						<li>직업훈련 관련 이력은 '회원탈퇴'를 하셔도 삭제되지 않습니다.</li>
						<li>회원 탈퇴를 하시게 되면 30일이내 가입이 불가능합니다.</li>
						<li>용하는데 불편함이 있으셧다면 문의사항이나 고객센터로 문의 주시면 성심껏 답변 드리겠습니다.</li>
					</ul>
				</div>
			<div id="btn_area">
				<input type="button" id="exit_btn" value="회원탈퇴">
			</div>
			</div>
		</div>
		
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
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
	$("#exit_btn").click(function () {
		
	 var result = confirm("탈퇴하시겠습니까?");
      if(result) {
  		  	alert("탈퇴가 완료되었습니다!");
  			location.href="http://localhost:9090/remove";
		}else{
			return;
		}
	})
})

</script>
</body>
</html>
