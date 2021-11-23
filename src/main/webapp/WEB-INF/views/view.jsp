<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<style>
	div#wrap {
		position: absolute;
		left: 50%;
		margin-left: -750px;
	}
	div#header {
		width: 1500px;
		height: 200px;
	}
	div#body {
		width: 1200px;
		height: 2000px;
		margin-left: 150px;
	}
	div#footer {
		width: 1500px;
		height: 200px;
	}
	div#top_div {
		width: 1200px;
		height: 250px;
	}
	div#top2_div {
		width: 1200px;
		height: 250px;
	}
	div#center_div {
		width: 1200px;
		height: 500px;
	}
	div#center2_div {
		width: 1200px;
		height: 500px;
	}
	div#bottom_div {
		width: 1200px;
		height: 500px;
	}
	.btn{
		width: 70px; 
		height: 40px;
		background: #EFEFEF;
		border-radius: 6px;
		text-align: center;
		font-weight: 600;
		font-size: 15px;
		font: #3A2F2F;
		line-height: 40px;
	}
	.btn2{
		width: 90px; 
		height: 40px;
		background: #EFEFEF;
		border-radius: 6px;
		text-align: center;
		font-weight: 600;
		font-size: 15px;
		font: #3A2F2F;
		line-height: 40px;
	}
	table {
		border-top: 1px solid #ddd;
	}
	th, td{
		padding: 15px 0 !important;
	    border-bottom: 1px solid #ddd;
	}
	
</style>
</head>
<body>
<div id="wrap">
	<div id="header">
		<jsp:include page="header.jsp"/>
	</div>
	
	<div id="body" name="body">
		<div id="top_div">
			<div id="top_img">
				<span style="width: 400px; height: 200px; display: block; background:url('resources/img/img${fn:substring(vo.NCS_CD, 0, 2)}.png'); background-size:400px 200px; float:left;" class="edu_img"></span>
			</div>
			<div id="top_title">
				<span style="width: 700px; height: 150px; float:right;"><h2>${vo.TRPR_NM}<br/></h2><h3>${vo3.TR_STA_DT} ~ ${vo3.TR_END_DT}(${vo2.TOT_TRAING_DYCT}일, ${vo2.TOT_TRAING_TIME}시간)</h3></span>
			</div>
			<div style="width: 700px; height: 50px; float:right;">
				<button type="button" class="btn2" id="register_btn" onclick="">수강신청</button>&nbsp;&nbsp;
				<button type="button" class="btn" id="like_btn" onclick="like()">관심</button>
				<input type="hidden" id="like" name="like" value="false"/>
				<button type="button" class="btn" id="list_btn" onclick="list()" style="float:right;">목록</button>
			</div>
		</div>
		
		<div id="top2_div">
			<table>
				<colgroup>
					<col width="10%"/>
					<col width="30%"/>
					<col width="10%"/>
					<col width="*"/>
				</colgroup>
				<tbody>
					<tr>
						<th>수강비</th>
						<th>${vo.INST_PER_TRCO}원(정부지원금 : ${vo.PER_TRCO}원)</th>
						<th>모집인원</th>
						<th>${vo3.TOT_FXNUM}명</th>
					</tr>
					<tr>
						<th>기관명</th>
						<th>${vo.INO_NM} (tel:${vo.TRPR_CHAP_TEL})</th>
						<th>주소</th>
						<th><a href="">${vo.ADDR1}
						<c:if test="${vo.ADDR2 ne null}">${vo.ADDR2}</c:if>
						</a></th>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div id="center_div">
			<h1>훈련과정 개요(훈련목표)</h1>
			<h3>시간표</h3>
		</div>
		
		<div id="center2_div">
			<h1>훈련기관 정보</h1>
		</div>
		
		<div id="bottom_div">
			<h1>훈련문의</h1>
		</div>
	</div>
	
	<div id="footer">
		<jsp:include page="footer.jsp"/>
	</div>
</div>
	
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
	function list() {
		location.href="search";
	}
	function like() {
		var like = $("#like").val();
		if(like == "true") {
			$("#like_btn").css("background", "#EFEFEF");
			$("#like").val("false");
		}else if(like == "false") {
			$("#like_btn").css("background", "#d00000");
			$("#like").val("true");
		}
	}
</script>
</html>