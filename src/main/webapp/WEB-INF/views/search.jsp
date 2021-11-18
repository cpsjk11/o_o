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
		margin-left: -500px;
	}
	div#header {
		width: 1000px;
		height: 200px;
		border: 1px solid black;
	}
	div#body {
		width: 1000px;
		height: 1000px;
		border: 1px solid black;
		text-align: center;
	}
	div#footer {
		width: 1000px;
		height: 200px;
		border: 1px solid black;
	}
	div#body #top1_div {
		width: 1000px;
		height: 10%;
		text-align: center;
		border: 1px solid black;
	}
	div#body #top2_div {
		width: 1000px;
		height: 5%;
		text-align: right;
		border: 1px solid black;
	}
	div#body #center_div {
		width: 1000px;
		height: 85%;
		border: 1px solid black;
	}
	li.top2_li {
		float: right;
		font-size: 7px;
		text-decoration: none;
	}
	li.edu {
		display: inline-block;
		margin: 5px 5px 20px 5px;
		padding: 5px;
	}
	img.edu_img {
		width: 200px;
		height: 200px;
		border-radius: 20px;
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
</style>
</head>
<body>
<div id="wrap">
	<div id="header">
		<jsp:include page="header.jsp"/>
	</div>
	
	<div id="body">
		<div id="top1_div">
			<form action="search" method="post" name="search">
				<input type="text" id="search_bar" name="search_bar"/>
				<input type="button" id="search_btn" value="검색" onclick="search1()"/>
				<input type="button" id="detail_btn" value="상세검색" onclick="detail1()"/><br/><br/>
				<label style="font-size: 20px">${search_bar}으로 검색된 결과입니다.</label>
			</form>
		</div>
		<div id="detail_div" class="hidden">
			<form method="post" action="search" name="search_detail">
				<input type="hidden" name="srchTraArea1" id="srchTraArea1"/>
				<input type="hidden" name="srchTraArea2" id="srchTraArea2"/>
				<input type="hidden" name="srchKeco1" id="srchKeco1"/>
				<button type="button" onclick="loc_sel()">지역 선택</button>
				<button type="button" onclick="ncs_sel()">분야 선택</button>
				<div id="area_div" class="hidden">
					<table>
						<tbody class="hidden">
							<tr> <button type="button" onclick="loc_sel1(this)">전체</button> </tr>
							<tr> <button type="button" onclick="loc_sel11(this)" id="11">서울</button> </tr>
							<tr> <button type="button" onclick="loc_sel26(this)" id="26">부산</button> </tr>
							<tr> <button type="button" onclick="loc_sel27(this)" id="27">대구</button> </tr>
							<tr> <button type="button" onclick="loc_sel28(this)" id="28">인천</button> </tr>
							<tr> <button type="button" onclick="loc_sel29(this)" id="29">광주</button> </tr>
							<tr> <button type="button" onclick="loc_sel30(this)" id="30">대전</button> </tr>
							<tr> <button type="button" onclick="loc_sel31(this)" id="31">울산</button> </tr>
							<tr> <button type="button" onclick="loc_sel36(this)" id="36">세종</button> </tr>
							<tr> <button type="button" onclick="loc_sel41(this)" id="41">경기</button> </tr>
							<tr> <button type="button" onclick="loc_sel42(this)" id="42">강원</button> </tr>
							<tr> <button type="button" onclick="loc_sel43(this)" id="43">충북</button> </tr>
							<tr> <button type="button" onclick="loc_sel44(this)" id="44">충남</button> </tr>
							<tr> <button type="button" onclick="loc_sel45(this)" id="45">전북</button> </tr>
							<tr> <button type="button" onclick="loc_sel46(this)" id="46">전남</button> </tr>
							<tr> <button type="button" onclick="loc_sel47(this)" id="47">경북</button> </tr>
							<tr> <button type="button" onclick="loc_sel48(this)" id="48">경남</button> </tr>
							<tr> <button type="button" onclick="loc_sel50(this)" id="50">제주</button> </tr>
							<tr> <button type="button" onclick="loc_sel1(this)">뒤로가기</button> </tr>
						</tbody>
					</table>
				</div>
				<jsp:include page="loc.jsp"/>
				<div id="ncs_div" class="hidden">
					<table>
						<tbody>
							<tr> <button type="button" onclick="ncs_sel1(this)">전체</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="01">사업관리</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="02">경영/회계/사무</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="03">금융/보험</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="04">교육/자연/사회과학</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="05">법률/경찰/소방/교도/국방</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="06">보건/의료</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="07">사회복지/종교</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="08">문화/예술/디자인/방송</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="09">운전/운송</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="10">영업판매</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="11">경비/청소</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="12">이용/숙박/여행/오락/스포츠</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="13">음식서비스</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="14">건설</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="15">기계</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="16">재료</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="17">화학</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="18">섬유/의복</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="19">전기/전자</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="20">정보통신</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="21">식품가공</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="22">인쇄/목재/가구/공예</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="23">환경/에너지/산업</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)" id="24">농림어업</button> </tr>
							<tr> <button type="button" onclick="ncs_sel1(this)">뒤로가기</button> </tr>
						</tbody>
					</table>
				</div>
				<div id="btn">
					<input type="text" id="search2_bar" name="search_bar"/>
					<input type="button" value="검색" id="search_btn" onclick="search2()"/>&nbsp;
					<input type="button" value="취소" id="cancel_btn" onclick="cancel()"/>
				</div>
			</form>
		</div>
		<div id="top2_div">
			<select title="정렬" id="pageOrder" name="pageOrder">
				<option value="Order1">인기순↓</option>
				<option value="Order2">인기순↑</option>
				<option value="Order3">시작일↑</option>
				<option value="Order4">시작일↑</option>
			</select>
		</div>
		<div id="center_div">
			<ol id="edu_list">
			<c:forEach var="vo" items="${list }" varStatus="st">
				<li class="edu">
					<div class="img_div">
						<img src="resources/img/img${fn:substring(vo.NCS_CD, 0, 2)}.png" class="edu_img"/>
					</div>
					<div class="over_section" onclick="">
						<em class="title">
						<c:if test="${vo.TITLE.length() > 10}">
							${fn:substring(vo.TITLE, 0, 10)}
						</c:if>
						</em>
						<a href="view?title=${vo.TITLE}&addr=${vo.ADDRESS}&tel=${vo.TEL_NO}" title="a태그 제목">자세히보기</a>
					</div>
					<div class="edu_tab">
						<label class="tab_label">교육기간</label>
						<span class="tab_span">${vo.TRA_START_DATE} ~ ${vo.TRA_END_DATE}</span><br/>
						<label class="tab_label">훈련비</label>
						<span class="tab_span">${vo.REAL_MAN}원</span><br/>
						<label class="tab_label">모집인원</label>
						<span class="tab_span">${vo.REG_COURSE_MAN}명</span><br/>
					</div>
				</li>
			</c:forEach>
			<c:if test="${ar_size eq null}">
				<h1> 검색된 결과가 없습니다. </h1>
			</c:if>
				<form action="search" method="post" name="more">
				<c:if test="${ar_size > 6 && end < ar_size}">
					<button type="button" onclick="more1()" id="more_btn" name="more_btn">더보기</button>
					<input type="hidden" value="${end}" id="end_more" name="end"/>
					<input type="hidden" value="${ar_size}" id="ar_size_more" name="ar_size"/>
					<input type="hidden" value="${search_bar}" id="search_bar_more" name="search_bar"/>
					<input type="hidden" value="${srchTraArea1}" id="srchTraArea1_more" name="srchTraArea1"/>
					<input type="hidden" value="${srchTraArea2}" id="srchTraArea2_more" name="srchTraArea2"/>
					<input type="hidden" value="${srchKeco1}" id="srchKeco1_more" name="srchKeco1"/>
				</c:if>
				</form>
				<form action="search" method="post" name="less">
				<c:if test="${end > 6}">
					<button type="button" onclick="less1()" id="less_btn" name="less_btn">줄이기</button>
					<input type="hidden" value="${end}" id="end_less" name="end"/>
					<input type="hidden" value="${ar_size}" id="ar_size_less" name="ar_size"/>
					<input type="hidden" value="${search_bar}" id="search_bar_less" name="search_bar"/>
					<input type="hidden" value="${srchTraArea1}" id="srchTraArea1_less" name="srchTraArea1"/>
					<input type="hidden" value="${srchTraArea2}" id="srchTraArea2_less" name="srchTraArea2"/>
					<input type="hidden" value="${srchKeco1}" id="srchKeco1_less" name="srchKeco1"/>
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
		var result1 = $("#search_bar").val();
		$("#search_bar").val(encodeURIComponent(result1));
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
		var height = $("div #body").height()+1000;
		$("#body").css("height", "2000");
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
		document.less.submit();
	}
	function detail1() {
		$("#detail_div").dialog();
		$("#detail_div").css("display", "block");
	}
	function loc_sel() {
		$("#area_div").dialog();
		$("#area_div").css("display", "block");
	}
	function ncs_sel() {
		$("#ncs_div").dialog();
		$("#ncs_div").css("display", "block");
	}
	function loc_sel1(loc) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
	}
	function loc_sel11(loc) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_11").dialog();
		$("#div_11").css("display", "block");
	}
	function loc_sel11_1(loc) {
		$("#div_11").dialog("close");
		$("#div_11").css("display", "none");
		$("#srchTraArea2").val(loc.id);
	}
	function loc_sel26(loc) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_26").dialog();
		$("#div_26").css("display", "block");
	}
	function loc_sel26_1(loc) {
		$("#div_26").dialog("close");
		$("#div_26").css("display", "none");
		$("#srchTraArea2").val(loc.id);
	}
	function loc_sel27(loc) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_27").dialog();
		$("#div_27").css("display", "block");
	}
	function loc_sel27_1(loc) {
		$("#div_27").dialog("close");
		$("#div_27").css("display", "none");
		$("#srchTraArea2").val(loc.id);
	}
	function loc_sel28(loc) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_28").dialog();
		$("#div_28").css("display", "block");
	}
	function loc_sel28_1(loc) {
		$("#div_28").dialog("close");
		$("#div_28").css("display", "none");
		$("#srchTraArea2").val(loc.id);
	}
	function loc_sel29(loc) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_29").dialog();
		$("#div_29").css("display", "block");
	}
	function loc_sel29_1(loc) {
		$("#div_29").dialog("close");
		$("#div_29").css("display", "none");
		$("#srchTraArea2").val(loc.id);
	}
	function loc_sel30(loc) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_30").dialog();
		$("#div_30").css("display", "block");
	}
	function loc_sel30_1(loc) {
		$("#div_30").dialog("close");
		$("#div_30").css("display", "none");
		$("#srchTraArea2").val(loc.id);
	}
	function loc_sel31(loc) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_31").dialog();
		$("#div_31").css("display", "block");
	}
	function loc_sel31_1(loc) {
		$("#div_31").dialog("close");
		$("#div_31").css("display", "none");
		$("#srchTraArea2").val(loc.id);
	}
	function loc_sel36(loc) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_36").dialog();
		$("#div_36").css("display", "block");
	}
	function loc_sel36_1(loc) {
		$("#div_36").dialog("close");
		$("#div_36").css("display", "none");
		$("#srchTraArea2").val(loc.id);
	}
	function loc_sel41(loc) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_41").dialog();
		$("#div_41").css("display", "block");
	}
	function loc_sel41_1(loc) {
		$("#div_41").dialog("close");
		$("#div_41").css("display", "none");
		$("#srchTraArea2").val(loc.id);
	}
	function loc_sel42(loc) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_42").dialog();
		$("#div_42").css("display", "block");
	}
	function loc_sel42_1(loc) {
		$("#div_42").dialog("close");
		$("#div_42").css("display", "none");
		$("#srchTraArea2").val(loc.id);
	}
	function loc_sel43(loc) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_43").dialog();
		$("#div_43").css("display", "block");
	}
	function loc_sel43_1(loc) {
		$("#div_43").dialog("close");
		$("#div_43").css("display", "none");
		$("#srchTraArea2").val(loc.id);
	}
	function loc_sel44(loc) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_44").dialog();
		$("#div_44").css("display", "block");
	}
	function loc_sel44_1(loc) {
		$("#div_44").dialog("close");
		$("#div_44").css("display", "none");
		$("#srchTraArea2").val(loc.id);
	}
	function loc_sel45(loc) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_45").dialog();
		$("#div_45").css("display", "block");
	}
	function loc_sel45_1(loc) {
		$("#div_45").dialog("close");
		$("#div_45").css("display", "none");
		$("#srchTraArea2").val(loc.id);
	}
	function loc_sel46(loc) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_46").dialog();
		$("#div_46").css("display", "block");
	}
	function loc_sel46_1(loc) {
		$("#div_46").dialog("close");
		$("#div_46").css("display", "none");
		$("#srchTraArea2").val(loc.id);
	}
	function loc_sel47(loc) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_47").dialog();
		$("#div_47").css("display", "block");
	}
	function loc_sel47_1(loc) {
		$("#div_47").dialog("close");
		$("#div_47").css("display", "none");
		$("#srchTraArea2").val(loc.id);
	}
	function loc_sel48(loc) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_48").dialog();
		$("#div_48").css("display", "block");
	}
	function loc_sel48_1(loc) {
		$("#div_48").dialog("close");
		$("#div_48").css("display", "none");
		$("#srchTraArea2").val(loc.id);
	}
	function loc_sel50(loc) {
		$("#area_div").dialog("close");
		$("#area_div").css("display", "none");
		$("#srchTraArea1").val(loc.id);
		$("#div_50").dialog();
		$("#div_50").css("display", "block");
	}
	function loc_sel50_1(loc) {
		$("#div_50").dialog("close");
		$("#div_50").css("display", "none");
		$("#srchTraArea2").val(loc.id);
	}
	function ncs_sel1(ncs) {
		$("#ncs_div").dialog("close");
		$("#ncs_div").css("display", "none");
		$("#srchKeco1").val(ncs.id);
	}
	function search2(){
		document.search_detail.submit();
	}
</script>

</body>
</html>