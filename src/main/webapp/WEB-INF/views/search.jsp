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
		height: 100px;
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
		height: ${hei*5/100};
		text-align: center; 
		<%--position: fixed;
		top:120px;--%>
	}
	div#body #top2_div {
		width: 1000px;
		height: ${hei*15/100};
		text-align: right;
		margin-left: 250px;
		margin-top: 50px;
		<%--margin-top: 200px;--%>
	}
	div#body #center_div {
		width: 1200px;
		height: ${hei*80/100};
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
		padding-left: 10px;
		margin: 50px 0 0;
		width: 560px;
		height: 60px;
		font-size: 20px;
		font-weight: 300;
		font-family: 'Noto Sans KR','Roboto', sans-serif;
		color: #3A2F2F;
		
		<%-- filter: drop-shadow(0px 4px 4px rgba(0, 0, 0, 0.25));
		width: 560px;
		height: 70px;
		border-radius: 20px;
		border: 0.7px solid #efefef;
		margin-top: 50px;
		font-size: 16px;
		font-weight: 300;
		text-align: center;
		font: #888888; --%>
	}
	.btn{
		width: 120px; 
		height: 68px;
		background: #EFEFEF;
		border-radius: 6px;
		text-align: center;
		font-weight: 600;
		font-size: 20px;
		font: #3A2F2F;
		line-height: 68px;
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
				<input type="button" class="btn" id="search_btn" value="??????" onclick="search1()"/>
				<input type="button" class="btn" id="detail_btn" value="????????????" onclick="detail1()"/><br/><br/>
				<label style="font-size: 20px; font-weight: bold;">
				<c:if test="${search_bar ne null and search_bar ne ''}">
					'${search_bar}'??? ?????? ???????????????.</label>
				</c:if>
				<c:if test="${value ne null }">
					'${value }'??? ?????? ???????????????.
				</c:if>
			</form>  
		</div>
		<div id="detail_div" class="hidden">
			<form method="post" action="search" name="search_detail">
				<button type="button" onclick="loc_sel()" class="detail_btn2" id="loc_btn">??????</button>
				<input type="text" name="Area" id="Area" readonly="readonly"/><br/><br/>
				<button type="button" onclick="ncs_sel()" class="detail_btn2" id="ncs_btn">??????</button>
				<input type="text" name="Ncs" id="Ncs" readonly="readonly"/><br/><br/>
				<button type="button" class="detail_btn3" id="start_btn">?????????</button>
				<input type="text" name="srchTraStDt" id="srchTraStDt"/><br/><br/>
				
				<input type="hidden" name="srchTraArea1" id="srchTraArea1"/>
				<input type="hidden" name="srchTraArea2" id="srchTraArea2"/>
				<input type="hidden" name="srchKeco1" id="srchKeco1"/>
				<div id="area_div" class="hidden">
					<table>
						<tbody class="hidden">
							<tr> <input type="button" class="loc_btn" onclick="loc_sel1(this, this.value)" value="??????"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel11(this, this.value)" id="1" value="??????"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel26(this, this.value)" id="26" value="??????"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel27(this, this.value)" id="27" value="??????"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel28(this, this.value)" id="28" value="??????"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel29(this, this.value)" id="29" value="??????"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel30(this, this.value)" id="30" value="??????"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel31(this, this.value)" id="31" value="??????"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel36(this, this.value)" id="36" value="??????"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel41(this, this.value)" id="41" value="??????"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel42(this, this.value)" id="42" value="??????"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel43(this, this.value)" id="43" value="??????"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel44(this, this.value)" id="44" value="??????"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel45(this, this.value)" id="45" value="??????"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel46(this, this.value)" id="46" value="??????"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel47(this, this.value)" id="47" value="??????"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel48(this, this.value)" id="48" value="??????"/> </tr>
							<tr> <input type="button" class="loc_btn" onclick="loc_sel50(this, this.value)" id="50" value="??????"/> </tr>
							<tr> <input type="button" class="loc_btn2" onclick="loc_sel1(this, '')" value="????????????"> </tr>
						</tbody>
					</table>
				</div>
				<jsp:include page="loc.jsp"/>
				<div id="ncs_div" class="hidden">
					<table>
						<tbody>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '??????')">??????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '????????????')" id="01">????????????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '??????/??????/??????')" id="02">??????/??????/??????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '??????/??????')" id="03">??????/??????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '??????/??????/????????????')" id="04">??????/??????/????????????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '??????/??????/??????/??????/??????')" id="05">??????/??????/??????/??????/??????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '??????/??????')" id="06">??????/??????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '????????????/??????')" id="07">????????????/??????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '??????/??????/?????????/??????')" id="08">??????/??????/?????????/??????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '??????/??????')" id="09">??????/??????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '????????????')" id="10">????????????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '??????/??????')" id="11">??????/??????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '??????/??????/??????/??????/?????????')" id="12">??????/??????/??????/??????/?????????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '???????????????')" id="13">???????????????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '??????')" id="14">??????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '??????')" id="15">??????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '??????')" id="16">??????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '??????')" id="17">??????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '??????/??????')" id="18">??????/??????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '??????/??????')" id="19">??????/??????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '????????????')" id="20">????????????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '????????????')" id="21">????????????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '??????/??????/??????/??????')" id="22">??????/??????/??????/??????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '??????/?????????/??????')" id="23">??????/?????????/??????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '????????????')" id="24">????????????</button> </tr>
							<tr> <button type="button" class="ncs_btn" onclick="ncs_sel1(this, '')">????????????</button> </tr>
						</tbody>
					</table>
				</div>
				<div id="btn">
					<button type="button" id="label_btn" class="detail_btn3">??????</button>
					<%-- <label for="search2_bar" class="search_label">???&nbsp;&nbsp;&nbsp;&nbsp;???</label> --%>
					<input type="text" id="search2_bar" name="search_bar"/><br/><br/>
					<input type="button" value="??????" id="cancel_btn" class="btn3" onclick="cancel()"/>
					<input type="button" value="??????" id="search_btn" class="btn3" onclick="search2()"/>&nbsp;
				</div>
			</form>
		</div>
		<div id="top2_div"><%-- 
			<select title="??????" id="pageOrder" name="pageOrder">
				<option value="Order1">?????????</option>
				<option value="Order2">????????????</option>
			</select>--%>
		</div>
		<div id="center_div">
			<ol id="edu_list">
			<c:forEach var="vo" items="${list}" varStatus="st">
				<li class="edu">
					<div class="img_div">
						<a href="view?TRAINST_CST_ID=${vo.TRAINST_CST_ID}&TRPR_DEGR=${vo.TRPR_DEGR}&TRPR_ID=${vo.TRPR_ID}&u_id=${userName.id}&imageCode=${vo.imageCode}">
							<img src="resources/img/${vo.imageCode}.jpg" class="edu_img"/>
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
						<label class="tab_label">????????????</label>
						<span class="tab_span">${vo.TRA_START_DATE} ~ ${vo.TRA_END_DATE}</span><br/>
						<label class="tab_label">?????????</label>
						<span class="tab_span">${vo.real_price}???(${vo.REAL_MAN}???)</span><br/>
						<label class="tab_label">????????????</label>
						<span class="tab_span">${vo.YARD_MAN}???</span><br/>
					</div>
				</li>
			</c:forEach>
			<c:if test="${ar_size eq null}">
				<h1>'${search_bar}' ????????? ????????? ????????????. </h1>
			</c:if>
				<form action="search" method="post" name="less">
				<c:if test="${end > 6}">
					<button type="button" class="btn2" onclick="less1()" id="less_btn" name="less_btn">?????????</button>
					<input type="hidden" value="${end}" id="end_less" name="end"/>
					<input type="hidden" value="${ar_size}" id="ar_size_less" name="ar_size"/>
					<input type="hidden" value="${search_bar}" id="search_bar_less" name="search_bar"/>
					<input type="hidden" value="${srchTraArea1}" id="srchTraArea1_less" name="srchTraArea1"/>
					<input type="hidden" value="${srchTraArea2}" id="srchTraArea2_less" name="srchTraArea2"/>
					<input type="hidden" value="${srchKeco1}" id="srchKeco1_less" name="srchKeco1"/>
					<input type="hidden" value="${page}" id="page_less" name="page"/>
					<input type="hidden" value="${hei}" id="hei_less" name="hei"/>
				</c:if>
				</form>			
				<form action="search" method="post" name="more">
				<c:if test="${ar_size > 6 && end < ar_size}">
					<button type="button" class="btn2" onclick="more1()" id="more_btn" name="more_btn">?????????</button>
					<input type="hidden" value="${end}" id="end_more" name="end"/>
					<input type="hidden" value="${ar_size}" id="ar_size_more" name="ar_size"/>
					<input type="hidden" value="${search_bar}" id="search_bar_more" name="search_bar"/>
					<input type="hidden" value="${srchTraArea1}" id="srchTraArea1_more" name="srchTraArea1"/>
					<input type="hidden" value="${srchTraArea2}" id="srchTraArea2_more" name="srchTraArea2"/>
					<input type="hidden" value="${srchKeco1}" id="srchKeco1_more" name="srchKeco1"/>
					<input type="hidden" value="${page}" id="page_more" name="page"/>
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
		var hei = parseInt($("#hei_more").val())+1000;
		$("#hei_more").val(hei);
		var page = parseInt($("#page_more").val())+1;
		$("#page_more").val(page);
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
		var hei = parseInt($("#hei_less").val())-1000;
		$("#hei_less").val(hei);
		var page = parseInt($("#page_less").val())-1;
		$("#page_less").val(page);
		document.less.submit();
	}
	function detail1() {
		$("#detail_div").dialog({
			title : "????????????",
			width : '350px',
			height : 'auto'
		});
		$( "#srchTraStDt" ).datepicker({
			dateFormat: 'yymmdd',
			monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
			monthNames: ['1???','2???','3???','4???','5???','6???','7???','8???','9???','10???','11???','12???'],
			dayNamesMin: ['???','???','???','???','???','???','???'],
			dayNames: ['?????????','?????????','?????????','?????????','?????????','?????????','?????????'],
			showMonthAfterYear:true,
			showOtherMonths: true,
			showOn : "button"
		});
		$("#detail_div").css("display", "block");
	}
	function loc_sel() {
		$("#area_div").dialog({
			title : "????????????"
		});
		$("#area_div").css("display", "block");
	}
	function ncs_sel() {
		$("#ncs_div").dialog({
			title : "????????????",
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