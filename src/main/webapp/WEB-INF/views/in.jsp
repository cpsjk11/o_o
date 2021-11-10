
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<style>
	@font-face {
	    font-family: 'OTWelcomeRA';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeRA.woff2') format('woff2');
	    font-weight: normal;
	    font-style: normal;
	}
	@font-face {
    font-family: 'SBAggroB';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SBAggroB.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
	body{
		font-family: 'OTWelcomeRA';
	}
	body hearder{
		margin: 0 auto;
		text-align: center;
	}
	header{
		padding: 30px;
	}
	hearder h1{
		font-family: 'SBAggroB';
		font-size: 2em;
		font-weight: 600;
	}
	#wrap{
		display:inline-block;
		text-align: center;
		font-size: 13px;
		width: 80%;
		border: 1px solid #C2C3F2;
		border-radius: 10px;
	}
	table{
		width: 100%;
		border-collapse: collapse;
	}
	tbody{
		text-align: center;
		width: 100%;
	}
	tbody tr td{
		border-bottom: 1px solid #ababab;
		padding: 10px 20px;
		font-size: 14px;
	}
	table thead tr{
		width: 45px;
	}
	thead th{
		height: 45px;
		padding: 10px;
		border-bottom: 1px solid #efefef;
		font-size: 20px;
		font-weight: 600;
	}
	#map{
		border-radius: 15px;
		display: inline-block;
		width: 100%;
		height: 100%;
	}
	#map_panel{
		display: inline-block;
		overflow: hidden;
		 width: 500px;
		 height: 350px;
		 border: 1px solid #efefef;
		 border-radius: 15px;
	}
	#panel{
		display: inline-block;
		width: 100%;
		margin: 0 auto;
		height: 0 auto;
		text-align: center;
	}
	table tbody{
		width: 100%;
	}
	#btn_panel{
		margin: 20px;
	}
	#btn_panel input[type="button"]{
		width: 50px;
		height: 35px;
		font-size: 12;
		border: 1px solid #ababab;
		border-radius: 4px;
	}
	.hand{
		cursor: wait;
	}
	#dialog{
		display: none;
	}
	a {
   color: #888888;
   text-decoration: none;
 }
 
 .group,
 .box {
   width: auto;
   margin: 0 auto;
 }
 
 .box .title {
   display: block;
 }
 
 .box .title a {
   display: block;
   padding: 10px;
   background-color: #ffcccc;
   border-bottom: 1px solid red;
 }
 
 .box .cont {
   padding: 10px;
   background-color: #bbddf7;
   border-bottom: 1px solid skyblue;
 }
 input[type="text"]{
 	width: 150px;
 	height: 35px;
 	font-size: 13px;
 	font-family: 'OTWelcomeRA';
 	text-align: center;
 	border: 1px solid #777;
 	border-radius: 10px;
 }
#search_btn{
 	width: 70px;
 	height: 35px;
 	font-size: 15px;
 	font-family: 'OTWelcomeRA';
 	
 	border: 1px solid #777;
 	border-radius: 10px;
 }
	
	
</style>
</head>
<body>
<header style="text-align: center; margin: 0 auto;">
			<h1>상세정보🚨🚨</h1>
	<div id="btn_panel">
		<input type="button" value="전체" onclick="javascript:location.href='index'">
	</div>
	
</header>
<div id="panel">
	<div id="wrap">
		<table summary="사원정보">
			<colgroup>
				<col width="20">
				<col width="16%">
				<col width="13%">
				<col width="13%">
				<col width="13%">
				<col width="13%">
				<col width="13%">
			</colgroup>
			<thead>
				<tr>
					<th>주소지</th>
					<th>훈련기관명</th>
					<th>NCS 명</th>
					<th>평가등급</th>
					<th>총 훈련일수</th>
					<th>담당자명</th>
					<th>담당자 이메일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vo" items="${base }" varStatus="st">
					<tr class="hand" style="height: 150px;">
						<td>${vo.ADDR1 }</td>
						<td>${vo.INO_NM }</td>
						<td>${vo.NCS_NM }</td>
						<td>${vo.TORG_PAR_GRAD }</td>
						<td>${vo.TR_DCNT }</td>
						<td>${vo.TRPR_CHAP}</td>
						<td>${vo.TRPR_CHAP_EMAIL }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
	<script type="text/javascript">
		 /* $(function() {
			    $("#datepicker").datepicker();
			    $("#datepicker2").datepicker();
			    
			  });
		 $.datepicker.setDefaults({
			    dateFormat: 'yy-mm-dd',
			    prevText: '이전 달',
			    nextText: '다음 달',
			    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
			    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
			    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
			    showMonthAfterYear: true,
			    showOtherMonths: true,
			    yearSuffix: '년'
			  }); */
		  
	</script>
</body>
</html>