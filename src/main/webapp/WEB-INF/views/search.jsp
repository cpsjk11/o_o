<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="resources/ico/Frame.png">
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/foot.css">
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
		width: 1500px;
		height: ${hei};
		text-align: center;
	}
	div#footer {
		width: 1500px;
		height: 200px;
	}
	div#body #top1_div {
		width: 1500px;
		height: 10%;
		text-align: center;
	}
	div#body #top2_div {
		width: 1000px;
		height: 5%;
		text-align: right;
		margin-left: 250px;
	}
	div#body #center_div {
		width: 1200px;
		height: 85%;
		margin-left: 150px;
	}
	li.top2_li {
		float: right;
		font-size: 7px;
		text-decoration: none;
	}
	li.edu {
		display: inline-block;
		width: 300px;
		height: 300px;
		margin: 5px 5px 20px 5px;
		padding: 5px;
	}
	img.edu_img {
		width: 280px;
		height: 200px;
		border-radius: 20px;
	}
	img.edu_img:hover {
		transform: translate(0, -3px);
	}
	label.tab_label {
		color: black;
	}
	span.tab_span {
		color: gray;
	}
	div.edu_tab {
		text-align: left;
	}
	div.hidden {
		display: none;
	}
	#search_bar{
		filter: drop-shadow(0px 4px 4px rgba(0, 0, 0, 0.25));
		width: 560px;
		height: 70px;
		border-radius: 20px;
		border: 0.7px solid #efefef;
		margin-top: 50px;
		font-size: 16px;
		font-weight: 300;
		text-align: center;
		font: #888888;
	}
	.btn{
		width: 120px; 
		height: 70px;
		background: #EFEFEF;
		border-radius: 6px;
		text-align: center;
		font-weight: 600;
		font-size: 20px;
		font: #3A2F2F;
		line-height: 60px;
	}
	.btn2 {
		width: 60px; 
		height: 35px;
		background: #EFEFEF;
		border-radius: 6px;
		text-align: center;
		font-weight: 600;
		font-size: 12px;
		font: #3A2F2F;
	}
	.loc_btn {
		width: 60px;
		height: 30px;
		background: #fdfdfd;
		text-align: center;
		font-weight: 600;
		font-size: 10px;
		font: #3A2F2F;
		cursor: pointer;
		margin-right: 1px;
		border: 0.1px solid #f2f2f2;
	}
	.loc_btn2 {
		width: 120px;
		height: 30px;
		background: #fdfdfd;
		text-align: center;
		font-weight: 600;
		font-size: 10px;
		font: #3A2F2F;
		cursor: pointer;
		margin-right: 1px;
		border: 0.1px solid #f2f2f2;
	}
	.loc_btn:hover {
		background: #ccccff;
	}
	.loc_btn2:hover {
		background: #ccccff;
	}
	.loc2_btn {
		width: 80px;
		height: 30px;
		background: #fdfdfd;
		text-align: center;
		font-weight: 600;
		font-size: 10px;
		font: #3A2F2F;
		cursor: pointer;
		margin-right: 1px;
		border: 0.1px solid #f2f2f2;
	}
	.loc2_btn:hover {
		background: #ccccff;
	}	
	.ncs_btn {
		width: 230px;
		height: 45px;
		background: #fdfdfd;
		text-align: center;
		font-weight: 600;
		font-size: 10px;
		font: #3A2F2F;
		cursor: pointer;
		margin-right: 1px;
		border: 0.1px solid #f2f2f2;
		line-height: 45px;
	}
	.ncs_btn:hover {
		background: #ccccff;
	}
	.loc2_btn2 {
		width: 160px;
		height: 30px;
		background: #fdfdfd;
		text-align: center;
		font-weight: 600;
		font-size: 10px;
		font: #3A2F2F;
		cursor: pointer;
		margin-right: 1px;
		border: 0.1px solid #f2f2f2;
	}
	.loc2_btn2:hover {
		background: #ccccff;
	}
	.detail_btn2 {
		width: 60px;
		height: 30px;
		background: #dddddd;
		text-align: center;
		font-weight: 600;
		font-size: 10px;
		font: #3A2F2F;
		cursor: pointer;
		margin-right: 1px;
		border: none;
		border-radius: 6px;
	}
	.detail_btn2:hover {
		background: #ccccff;
	}
	.btn3 {
		width: 70px;
		height: 30px;
		background: #dddddd;
		text-align: center;
		font-weight: 600;
		font-size: 10px;
		font: #3A2F2F;
		cursor: pointer;
		margin-right: 2px;
		border: none;
		float: right;
		border-radius: 6px;
	}
	.btn3:hover {
		background: #ccccff;
	}
	.detail_btn3 {
		width: 60px;
		height: 30px;
		background: #ffffff;
		text-align: center;
		font-weight: 600;
		font: #3A2F2F;
		margin-right: 1px;
		border: none;
		border-radius: 6px;
	}
	.ui-dialog-titlebar {
		background-color: #ffffff;
		border: none;
	}
</style>
</head>
<body>
<div id="wrap">
	<div id="header">
		<jsp:include page="header.jsp"/>
	</div>
	
	<div id="body" name="body">
		<div id="top1_div">
			<form action="search" method="post" name="search">
				<input type="text" id="search_bar" name="search_bar"/>
				<input type="button" class="btn" id="search_btn" value="검색" onclick="search1()"/>
				<input type="button" class="btn" id="detail_btn" value="상세검색" onclick="detail1()"/><br/><br/>
				<label style="font-size: 20px">
				<c:if test="${search_bar ne null and search_bar ne ''}">
					'${search_bar}'의 검색 결과입니다.</label>
				</c:if>
				<c:if test="${value ne null }">
					'${value }'의 검색 결과입니다.
				</c:if>
			</form>
		</div>
		<div id="detail_div" class="hidden">
			<form method="post" action="search" name="search_detail">
				<button type="button" onclick="loc_sel()" class="detail_btn2" id="loc_btn">지역</button>
				<input type="text" name="Area" id="Area" readonly="readonly"/><br/><br/>
				<button type="button" onclick="ncs_sel()" class="detail_btn2" id="ncs_btn">분야</button>
				<input type="text" name="Ncs" id="Ncs" readonly="readonly"/><br/><br/>
				<button type="button" class="detail_btn3" id="start_btn">시작일</button>
				<input type="text" name="srchTraStDt" id="srchTraStDt"/><br/><br/>
				
				<input type="hidden" name="srchTraArea1" id="srchTraArea1"/>
				<input type="hidden" name="srchTraArea2" id="srchTraArea2"/>
				<input type="hidden" name="srchKeco1" id="srchKeco1"/>
				<div id="area_div" class="hidden">
					<table>
						<tbody class="hidden">
							<tr> <input type="button" class="loc_btn" onclick="loc_sel1(this, this.value)" value="전체"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel11(this, this.value)" id="1" value="서울"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel26(this, this.value)" id="26" value="부산"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel27(this, this.value)" id="27" value="대구"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel28(this, this.value)" id="28" value="인천"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel29(this, this.value)" id="29" value="광주"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel30(this, this.value)" id="30" value="대전"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel31(this, this.value)" id="31" value="울산"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel36(this, this.value)" id="36" value="세종"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel41(this, this.value)" id="41" value="경기"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel42(this, this.value)" id="42" value="강원"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel43(this, this.value)" id="43" value="충북"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel44(this, this.value)" id="44" value="충남"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel45(this, this.value)" id="45" value="전북"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel46(this, this.value)" id="46" value="전남"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel47(this, this.value)" id="47" value="경북"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel48(this, this.value)" id="48" value="경남"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel50(this, this.value)" id="50" value="제주"/> </tr>
							<tr> <input type="button" class="loc_btn2" onclick="loc_sel1(this, '')" value="뒤로가기"> </tr>
						</tbody>
					</table>
				</div>
				<jsp:include page="loc.jsp"/>
				<div id="ncs_div" class="hidden">
					<table>
						<tbody>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '전체')">전체</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '사업관리')" id="01">사업관리</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '경영/회계/사무')" id="02">경영/회계/사무</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '금융/보험')" id="03">금융/보험</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '교육/자연/사회과학')" id="04">교육/자연/사회과학</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '법률/경찰/소방/교도/국방')" id="05">법률/경찰/소방/교도/국방</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '보건/의료')" id="06">보건/의료</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '사회복지/종교')" id="07">사회복지/종교</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '문화/예술/디자인/방송')" id="08">문화/예술/디자인/방송</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '운전/운송')" id="09">운전/운송</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '영업판매')" id="10">영업판매</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '경비/청소')" id="11">경비/청소</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '이용/숙박/여행/오락/스포츠')" id="12">이용/숙박/여행/오락/스포츠</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '음식서비스')" id="13">음식서비스</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '건설')" id="14">건설</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '기계')" id="15">기계</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '재료')" id="16">재료</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '화학')" id="17">화학</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '섬유/의복')" id="18">섬유/의복</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '전기/전자')" id="19">전기/전자</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '정보통신')" id="20">정보통신</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '식품가공')" id="21">식품가공</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '인쇄/목재/가구/공예')" id="22">인쇄/목재/가구/공예</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '환경/에너지/산업')" id="23">환경/에너지/산업</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '농립어업')" id="24">농림어업</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '')">뒤로가기</button> </tr>
						</tbody>
					</table>
				</div>
				<div id="btn">
					<button type="button" id="label_btn" class="detail_btn3">제목</button>
					<%-- <label for="search2_bar" class="search_label">제&nbsp;&nbsp;&nbsp;&nbsp;목</label> --%>
					<input type="text" id="search2_bar" name="search_bar"/><br/><br/>
					<input type="button" value="취소" id="cancel_btn" class="btn3" onclick="cancel()"/>
					<input type="button" value="검색" id="search_btn" class="btn3" onclick="search2()"/>&nbsp;
				</div>
			</form>
		</div>
		<div id="top2_div">
			<select title="정렬" id="pageOrder" name="pageOrder">
				<option value="Order1">인기순</option>
				<option value="Order2">취업율순</option>
			</select>
		</div>
		<div id="center_div">
			<ol id="edu_list">
			<c:forEach var="vo" items="${list}" varStatus="st">
				<li class="edu">
					<div class="img_div">
						<a href="view?TRAINST_CST_ID=${vo.TRAINST_CST_ID}&TRPR_DEGR=${vo.TRPR_DEGR}&TRPR_ID=${vo.TRPR_ID}">
							<img src="resources/img/img${fn:substring(vo.NCS_CD, 0, 2)}.png" class="edu_img"/>
						</a>
					</div>
					<div class="over_section" onclick="">
					
					</div>
					<div class="edu_tab">
						<em class="title">
						<c:if test="${vo.TITLE.length() > 10}">
							${fn:substring(vo.TITLE, 0, 18)}
						</c:if>
						</em><br/>
						<label class="tab_label">교육기간</label>
						<span class="tab_span">${vo.TRA_START_DATE} ~ ${vo.TRA_END_DATE}</span><br/>
						<label class="tab_label">훈련비</label>
						<span class="tab_span">${vo.real_price}원(${vo.REAL_MAN}원)</span><br/>
						<label class="tab_label">모집인원</label>
						<span class="tab_span">${vo.REG_COURSE_MAN}명</span><br/>
					</div>
				</li>
			</c:forEach>
			<c:if test="${ar_size eq null}">
				<h1>'${search_bar}' 검색된 결과가 없습니다. </h1>
			</c:if>
				<form action="search" method="post" name="less">
				<c:if test="${end > 6}">
					<button type="button" class="btn2" onclick="less1()" id="less_btn" name="less_btn">줄이기</button>
					<input type="hidden" value="${end}" id="end_less" name="end"/>
					<input type="hidden" value="${ar_size}" id="ar_size_less" name="ar_size"/>
					<input type="hidden" value="${search_bar}" id="search_bar_less" name="search_bar"/>
					<input type="hidden" value="${srchTraArea1}" id="srchTraArea1_less" name="srchTraArea1"/>
					<input type="hidden" value="${srchTraArea2}" id="srchTraArea2_less" name="srchTraArea2"/>
					<input type="hidden" value="${hei}" id="hei_less" name="hei"/>
				</c:if>
				</form>			
				<form action="search" method="post" name="more">
				<c:if test="${ar_size > 6 && end < ar_size}">
					<button type="button" class="btn2" onclick="more1()" id="more_btn" name="more_btn">더보기</button>
					<input type="hidden" value="${end}" id="end_more" name="end"/>
					<input type="hidden" value="${ar_size}" id="ar_size_more" name="ar_size"/>
					<input type="hidden" value="${search_bar}" id="search_bar_more" name="search_bar"/>
					<input type="hidden" value="${srchTraArea1}" id="srchTraArea1_more" name="srchTraArea1"/>
					<input type="hidden" value="${srchTraArea2}" id="srchTraArea2_more" name="srchTraArea2"/>
					<input type="hidden" value="${srchKeco1}" id="srchKeco1_more" name="srchKeco1"/>
					<input type="hidden" value="${hei}" id="hei_more" name="hei"/>
				</c:if>
				</form>
			</ol>
		</div>
	</div>


	<div id="footer">
		<jsp:include page="footer.jsp"/>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script>
	function search1(){
		//var result1 = $("#search_bar").val();
		//$("#search_bar").val(encodeURIComponent(result1));
		document.search.submit();
	}
	function cancel() {
		$("#detail_div").dialog("close");
		$("#detail_div").css("display", "none");
	}
	function more1() {
		var end = parseInt($("#end_more").val());
		var ar_size = parseInt($("#ar_size_more").val());
		if(end < ar_size-6) {
			end = parseInt($("#end_more").val())+6;
		}else{
			end_size = ar_size - end;
			end = parseInt($("#end_more").val())+end_size;
		}
		$("#end_more").val(end);
		var hei = parseInt($("#hei").val())
		$("#hei").val(hei+1000);
		document.more.submit();
	}
	function less1() {
		var end = parseInt($("#end_less").val());
		var ar_size = parseInt($("#ar_size_less").val());
		if(end > 6 && end%6 == 0) {
			end = parseInt($("#end_less").val())-6;
		}else if(end > 6 && end%6 != 0) {
			end_size = end%6;
			end = parseInt($("#end_less").val())-end_size;
		}
		$("#end_less").val(end);
		var hei = parseInt($("#hei").val())
		$("#hei").val(hei-1000);
		document.less.submit();
	}
	function detail1() {
		$("#detail_div").dialog({
			title : "상세검색",
			width : '350px',
			height : 'auto'
		});
		$( "#srchTraStDt" ).datepicker({
			dateFormat: 'yymmdd',
			monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
			monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			dayNamesMin: ['일','월','화','수','목','금','토'],
			dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'],
			showMonthAfterYear:true,
			showOtherMonths: true,
			showOn : "button"
		});
		$("#detail_div").css("display", "block");
	}
	function loc_sel() {
		$("#area_div").dialog({
			title : "지역선택"
		});
		$("#area_div").css("display", "block");
	}
	function ncs_sel() {
		$("#ncs_div").dialog({
			title : "분야선택",
			width : '500px',
			height : 'auto'
		});
		$("#ncs_div").css("display", "block");
	}
	function loc_sel1(loc, loc_value) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#srchTraArea2").val(loc.id);
		$("#Area").val(loc_value);
	}
	function loc_sel11(loc, loc_value) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val("11");
		$("#div_11").dialog({
			title : loc_value,
			width : '400px',
			height : 'auto'
		});
		$("#div_11").css("display", "block");
		$("#Area").val(loc_value);
	}
	function loc_sel11_1(loc, loc_value) {
		$("#div_11").dialog("close");
		$("#div_11").css("display", "none");
		$("#srchTraArea2").val(loc.id);
		var Area = $("#Area").val();
		$("#Area").val(Area+" "+loc_value);
	}
	function loc_sel26(loc, loc_value) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_26").dialog({
			title : loc_value,
			width : '400px',
			height : 'auto'
		});
		$("#div_26").css("display", "block");
		$("#Area").val(loc_value);
	}
	function loc_sel26_1(loc, loc_value) {
		$("#div_26").dialog("close");
		$("#div_26").css("display", "none");
		$("#srchTraArea2").val(loc.id);
		var Area = $("#Area").val();
		$("#Area").val(Area+" "+loc_value);
	}
	function loc_sel27(loc, loc_value) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_27").dialog({
			title : loc_value,
			width : '400px',
			height : 'auto'
		});
		$("#div_27").css("display", "block");
		$("#Area").val(loc_value);
	}
	function loc_sel27_1(loc, loc_value) {
		$("#div_27").dialog("close");
		$("#div_27").css("display", "none");
		$("#srchTraArea2").val(loc.id);
		var Area = $("#Area").val();
		$("#Area").val(Area+" "+loc_value);
	}
	function loc_sel28(loc, loc_value) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_28").dialog({
			title : loc_value,
			width : '400px',
			height : 'auto'
		});
		$("#div_28").css("display", "block");
		$("#Area").val(loc_value);
	}
	function loc_sel28_1(loc, loc_value) {
		$("#div_28").dialog("close");
		$("#div_28").css("display", "none");
		$("#srchTraArea2").val(loc.id);
		var Area = $("#Area").val();
		$("#Area").val(Area+" "+loc_value);
	}
	function loc_sel29(loc, loc_value) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_29").dialog({
			title : loc_value,
			width : '400px',
			height : 'auto'
		});
		$("#div_29").css("display", "block");
		$("#Area").val(loc_value);
	}
	function loc_sel29_1(loc, loc_value) {
		$("#div_29").dialog("close");
		$("#div_29").css("display", "none");
		$("#srchTraArea2").val(loc.id);
		var Area = $("#Area").val();
		$("#Area").val(Area+" "+loc_value);
	}
	function loc_sel30(loc, loc_value) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_30").dialog({
			title : loc_value,
			width : '400px',
			height : 'auto'
		});
		$("#div_30").css("display", "block");
		$("#Area").val(loc_value);
	}
	function loc_sel30_1(loc, loc_value) {
		$("#div_30").dialog("close");
		$("#div_30").css("display", "none");
		$("#srchTraArea2").val(loc.id);
		var Area = $("#Area").val();
		$("#Area").val(Area+" "+loc_value);
	}
	function loc_sel31(loc, loc_value) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_31").dialog({
			title : loc_value,
			width : '400px',
			height : 'auto'
		});
		$("#div_31").css("display", "block");
		$("#Area").val(loc_value);
	}
	function loc_sel31_1(loc, loc_value) {
		$("#div_31").dialog("close");
		$("#div_31").css("display", "none");
		$("#srchTraArea2").val(loc.id);
		var Area = $("#Area").val();
		$("#Area").val(Area+" "+loc_value);
	}
	function loc_sel36(loc, loc_value) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_36").dialog({
			title : loc_value,
			width : '400px',
			height : 'auto'
		});
		$("#div_36").css("display", "block");
		$("#Area").val(loc_value);
	}
	function loc_sel36_1(loc, loc_value) {
		$("#div_36").dialog("close");
		$("#div_36").css("display", "none");
		$("#srchTraArea2").val(loc.id);
		var Area = $("#Area").val();
		$("#Area").val(Area+" "+loc_value);
	}
	function loc_sel41(loc, loc_value) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_41").dialog({
			title : loc_value,
			width : '400px',
			height : 'auto'
		});
		$("#div_41").css("display", "block");
		$("#Area").val(loc_value);
	}
	function loc_sel41_1(loc, loc_value) {
		$("#div_41").dialog("close");
		$("#div_41").css("display", "none");
		$("#srchTraArea2").val(loc.id);
		var Area = $("#Area").val();
		$("#Area").val(Area+" "+loc_value);
	}
	function loc_sel42(loc, loc_value) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_42").dialog({
			title : loc_value,
			width : '400px',
			height : 'auto'
		});
		$("#div_42").css("display", "block");
		$("#Area").val(loc_value);
	}
	function loc_sel42_1(loc, loc_value) {
		$("#div_42").dialog("close");
		$("#div_42").css("display", "none");
		$("#srchTraArea2").val(loc.id);
		var Area = $("#Area").val();
		$("#Area").val(Area+" "+loc_value);
	}
	function loc_sel43(loc, loc_value) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_43").dialog({
			title : loc_value,
			width : '400px',
			height : 'auto'
		});
		$("#div_43").css("display", "block");
		$("#Area").val(loc_value);
	}
	function loc_sel43_1(loc, loc_value) {
		$("#div_43").dialog("close");
		$("#div_43").css("display", "none");
		$("#srchTraArea2").val(loc.id);
		var Area = $("#Area").val();
		$("#Area").val(Area+" "+loc_value);
	}
	function loc_sel44(loc, loc_value) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_44").dialog({
			title : loc_value,
			width : '400px',
			height : 'auto'
		});
		$("#div_44").css("display", "block");
		$("#Area").val(loc_value);
	}
	function loc_sel44_1(loc, loc_value) {
		$("#div_44").dialog("close");
		$("#div_44").css("display", "none");
		$("#srchTraArea2").val(loc.id);
		var Area = $("#Area").val();
		$("#Area").val(Area+" "+loc_value);
	}
	function loc_sel45(loc, loc_value) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_45").dialog({
			title : loc_value,
			width : '400px',
			height : 'auto'
		});
		$("#div_45").css("display", "block");
		$("#Area").val(loc_value);
	}
	function loc_sel45_1(loc, loc_value) {
		$("#div_45").dialog("close");
		$("#div_45").css("display", "none");
		$("#srchTraArea2").val(loc.id);
		var Area = $("#Area").val();
		$("#Area").val(Area+" "+loc_value);
	}
	function loc_sel46(loc, loc_value) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_46").dialog({
			title : loc_value,
			width : '400px',
			height : 'auto'
		});
		$("#div_46").css("display", "block");
		$("#Area").val(loc_value);
	}
	function loc_sel46_1(loc, loc_value) {
		$("#div_46").dialog("close");
		$("#div_46").css("display", "none");
		$("#srchTraArea2").val(loc.id);
		var Area = $("#Area").val();
		$("#Area").val(Area+" "+loc_value);
	}
	function loc_sel47(loc, loc_value) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_47").dialog({
			title : loc_value,
			width : '400px',
			height : 'auto'
		});
		$("#div_47").css("display", "block");
		$("#Area").val(loc_value);
	}
	function loc_sel47_1(loc, loc_value) {
		$("#div_47").dialog("close");
		$("#div_47").css("display", "none");
		$("#srchTraArea2").val(loc.id);
		var Area = $("#Area").val();
		$("#Area").val(Area+" "+loc_value);
	}
	function loc_sel48(loc, loc_value) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_48").dialog({
			title : loc_value,
			width : '400px',
			height : 'auto'
		});
		$("#div_48").css("display", "block");
		$("#Area").val(loc_value);
	}
	function loc_sel48_1(loc, loc_value) {
		$("#div_48").dialog("close");
		$("#div_48").css("display", "none");
		$("#srchTraArea2").val(loc.id);
		var Area = $("#Area").val();
		$("#Area").val(Area+" "+loc_value);
	}
	function loc_sel50(loc, loc_value) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_50").dialog({
			title : loc_value,
			width : '400px',
			height : 'auto'
		});
		$("#div_50").css("display", "block");
		$("#Area").val(loc_value);
	}
	function loc_sel50_1(loc, loc_value) {
		$("#div_50").dialog("close");
		$("#div_50").css("display", "none");
		$("#srchTraArea2").val(loc.id);
		var Area = $("#Area").val();
		$("#Area").val(Area+" "+loc_value);
	}
	function ncs_sel1(ncs, ncs_text) {
		$("#ncs_div").dialog("close");
		$("#ncs_div").css("display", "none");
		$("#srchKeco1").val(ncs.id);
		$("#Ncs").val(ncs_text);
		
	}
	function search2(){
		document.search_detail.submit();
	}
</script>

</body>
</html>