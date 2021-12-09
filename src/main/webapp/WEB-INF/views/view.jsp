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
		width: 1200px;
		height: 2100px;
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
		height: 150px;
	}
	div#center_div {
		width: 1200px;
		height: 100px;
	}
	div#center2_div {
		width: 1200px;
		height: 400px;
	}
	div#bottom_div {
		width: 1200px;
		height: 400px;
	}
	div#bottom2_div {
		width: 1200px;
		height: 400px;
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
		width: 100%;
		border-top: 1px solid #ddd;
	}
	table#tra_table th, td{
		padding: 15px 0;
	    border-bottom: 1px solid #ddd;
	}
	table#com_table tr, th{
		padding: 15px 0;
	    border-bottom: 1px solid #ddd;
	}
	table#com_table tr th:first-child{
		background-color: #ddd;
	}
	.hidden {
		display: none;
	}
	table#after_table th, td, table#help_bbs_table th, td{
		padding: 15px 0;
		border-bottom: 1px solid #ddd;
		text-align: left;
	}
	#add_btn, #add2_btn{
		float: right;
		width: 75px;
		height: 30px;
		background: #EFEFEF;
		border-radius: 6px;
		text-align: center;
		font-weight: 600;
		font: #3A2F2F;
		line-height: 30px;
	}
	#iw_inner{
		text-align: center;
		height: 40px;
	}
	#iw_inner>h5{
		margin-top: 5px;
		margin-bottom: 0;
	}
	#iw_inner>h6{
		margin-top: 5px;
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
				<a href="register?u_id=${userName.id}&TRPR_ID=${vo.TRPR_ID}" target="_blank" ><button type="button" class="btn2" id="register_btn">수강신청</button></a>&nbsp;&nbsp;
				<c:if test="${like eq 'false'}">
				<button type="button" class="btn" id="like_btn" onclick="like()" style="background-color: #EFEFEF;">관심&#x1f49b;</button>
				</c:if>
				<c:if test="${like eq 'true'}">
				<button type="button" class="btn" id="like_btn" onclick="like()" style="background-color: red;">관심&#x1f49b;</button>
				</c:if>
				<button type="button" class="btn" id="list_btn" onclick="list()" style="float:right;">목록</button>
			</div>
		</div>
		
		<div id="top2_div">
			<table id="tra_table">
				<colgroup>
					<col width="10%"/>
					<col width="30%"/>
					<col width="10%"/>
					<col width="50%"/>
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
						<th>
						${vo.ADDR1} <c:if test="${vo.ADDR2 ne null}">${vo.ADDR2}</c:if>
						</th>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div id="map" style="width:100%;height:400px;"></div>
		
		<div id="center_div">
			<h2>훈련과정 개요(훈련목표)</h2>
			<a href="https://www.hrd.go.kr/hrdp/co/pcobo/PCOBO0100P.do?tracseId=${vo.TRPR_ID}&tracseTme=${vo.TRPR_DEGR}&crseTracseSe={vo.TRPR_GBN}&trainstCstmrId=${TRAINST_CST_ID}#undefined" target="_blank" style="color:#ff0000;">자세한 정보는 여기를 누르세요</a>
			<%-- <h3>시간표</h3> --%>
		</div>
		
		<div id="center2_div">
			<h2>훈련기관 정보</h2>
			<div id="com_div">
				<table id="com_table">
					<colgroup>
						<col width="10%"/>
						<col width="90%"/>
					</colgroup>
					<tbody>
						<tr>
							<th>기관명</th>
							<th>${vo.INO_NM}</th>
						</tr>
						<tr>
							<th>주소</th>
							<th>${vo.ADDR1} <c:if test="${vo.ADDR2 ne null}">${vo.ADDR2}</c:if></th>
						</tr>
						<tr>
							<th>전화번호</th>
							<th>${vo.TRPR_CHAP_TEL}</th>
						</tr>
							<th>이메일</th>
							<th>${vo.TRPR_CHAP_EMAIL}</th>
						<tr>
							<th>홈페이지</th>
							<th><a href="${vo.HP_ADDR}" target="_blank">${vo.HP_ADDR}</a></th>
						</tr>
						<tr>
							<th>취업률</th>
							<th>
								<c:if test="${rate3 >= rate6}"> ${rate3}% </c:if>
								<c:if test="${rate3 < rate6}"> ${rate6}% </c:if>
							</th>
						</tr>
					</tbody>
				<%-- 
				<h3>${vo.INO_NM}</h3>
				<span>훈련기관 주소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${vo.ADDR1} <c:if test="${vo.ADDR2 ne null}">${vo.ADDR2}</c:if></span><br/>
				<span>훈련기관 전화번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${vo.TRPR_CHAP_TEL}</span><br/>
				<span>이메일(e-mail)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${vo.TRPR_CHAP_EMAIL}</span><br/>
				<span>홈페이지&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="${vo.HP_ADDR}" target="_blank">${vo.HP_ADDR}</a></span><br/>
				<span>취업률&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				<c:if test="${rate3 >= rate6}"> <progress value="${rate3}" max="100" style="width: 600px; height: 50px; color: red;">${rate3}%</progress> </c:if>
				<c:if test="${rate3 < rate6}"> <progress value="${rate6}" max="100" style="width: 600px; height: 50px; color: red;">${rate6}%</progress> </c:if>		
				</span><br/><br/>
				--%>
				</table>
				<a href="https://www.hrd.go.kr/hrdp/co/pcoco/PCOCO0100P.do?tracseId=${vo.TRPR_ID}&tracseTme=${vo.TRPR_DEGR}&trainstCstmrId=${TRAINST_CST_ID}&crseTracseSe={vo.TRPR_GBN}&pageId=" target="_blank" style="color:#ff0000;">자세한 정보는 여기를 누르세요</a>
			</div>
			
		</div>
		
		<div id="bottom_div">
			<h2 style="margin-bottom:0;">훈련문의</h2>
			<input type="button" id="add2_btn" value="문의 등록" onclick="add2()"/>
			<table id="help_bbs_table">
				<tbody>
				<c:forEach var="hvo" items="${hvo}" varStatus="st">
					<tr>
						<th>&#187; ${hvo.content}</th>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>  
		
		<div id="bottom2_div">
			<h2 style="margin-bottom:0;">수강후기</h2>
			<h6 style="margin-top:0; margin-bottom:0; color:gray">수강후기는 한번만 등록이 가능하며 수정이 불가합니다. 수정이 필요할 시 고객센터에 문의하시기 바랍니다.</h6>
			<input type="button" id="add_btn" value="후기 등록" onclick="add1()"/>
			<table id="after_table">
				<tbody>
				<c:forEach var="afvo" items="${afvo}" varStatus="st">
					<tr>
						<th>&#187; ${afvo.content}</th>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		
		<div id="add_div" class="hidden">
			<form action="view" name="add_after" method="post">
				<input type="hidden" id="u_id" name="u_id" value="${u_id}"/>
				<input type="hidden" id="TRPR_ID" name="TRPR_ID" value="${vo.TRPR_ID}"/>
				<input type="hidden" id="TRPR_DEGR" name="TRPR_DEGR" value="${vo.TRPR_DEGR}"/>
				<input type="hidden" id="TRAINST_CST_ID" name="TRAINST_CST_ID" value="${TRAINST_CST_ID}"/>
				<input type="hidden" id="add1" name="add" value="1"/>
				<textarea id="content" name="content" rows="5" cols="30"></textarea>
				<input type="button" id="ok_btn" value="확인" onclick="ok1()"/>
				<input type="button" id="cancel_btn" value="취소" onclick="cancel1()"/>
			</form>
		</div>
				
		<div id="add_help" class="hidden">
			<form action="view" name="add_help" method="post">
				<input type="hidden" id="u_id" name="u_id" value="${u_id}"/>
				<input type="hidden" id="TRPR_ID" name="TRPR_ID" value="${vo.TRPR_ID}"/>
				<input type="hidden" id="TRPR_DEGR" name="TRPR_DEGR" value="${vo.TRPR_DEGR}"/>
				<input type="hidden" id="TRAINST_CST_ID" name="TRAINST_CST_ID" value="${TRAINST_CST_ID}"/>
				<input type="hidden" id="add2" name="add" value="2"/>
				<input type="hidden" id="help" name="help" value="true"/>
				<textarea id="content" name="content" rows="5" cols="30"></textarea>
				<input type="button" id="ok_btn2" value="확인" onclick="ok2()"/>
				<input type="button" id="cancel_btn2" value="취소" onclick="cancel2()"/>
			</form>
		</div>
		
		<div id="like_div" class="hidden">
			<form action="view" name="like_form" method="post">
				<input type="hidden" id="u_id" name="u_id" value="${u_id}"/>
				<input type="hidden" id="TRPR_ID" name="TRPR_ID" value="${vo.TRPR_ID}"/>
				<input type="hidden" id="TRPR_DEGR" name="TRPR_DEGR" value="${vo.TRPR_DEGR}"/>
				<input type="hidden" id="INO_NM" name="INO_NM" value="${vo.INO_NM}"/>
				<input type="hidden" id="TRAINST_CST_ID" name="TRAINST_CST_ID" value="${TRAINST_CST_ID}"/>
				<input type="hidden" id="TR_STA_DT" name="TR_STA_DT" value="${vo3.TR_STA_DT}"/>
				<input type="hidden" id="TR_END_DT" name="TR_END_DT" value="${vo3.TR_END_DT}"/>
				<input type="hidden" id="like" name="like" value="${like}"/>
				<input type="hidden" id="add3" name="add" value="3"/>
			</form>
		</div>
	</div>		
	
	<div id="footer">
		<jsp:include page="footer.jsp"/>
	</div>
</div>
	
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=4txv35ahqp"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script>
	
	$(function() {
		var map = new naver.maps.Map('map', {
		    center: new naver.maps.LatLng(${y}, ${x}),
		    zoom: 11,
		    mapTypeControl: true,
		    zoomControlOptions: {
		    	style: naver.maps.ZoomControlStyle.SMALL,
		    	position: naver.maps.Position.TOP_RIGHT
		    },
		    zoomControl: true
		});

		var marker = new naver.maps.Marker({
		    position: new naver.maps.LatLng(${y}, ${x}),
		    map: map
		});
		
		var contentString = [
		    '<div id="iw_inner">',
		    '<h5><c:if test="${vo.ADDR2 ne null}">${vo.ADDR2}</c:if></h5>',
		    '<h6>${vo.ADDR1}</h6>',
		    '</div>'
		].join('');
		
		var infowindow = new naver.maps.InfoWindow({
		    content: contentString
		});

		naver.maps.Event.addListener(marker, "click", function(e) {
		    if (infowindow.getMap()) {
		        infowindow.close();
		    } else {
		        infowindow.open(map, marker);
		    }
		});

	});
	
	function list() {
		location.href="search";
	}
	function like() {
		document.like_form.submit();
	}
	function add1() {
		if($("#u_id").val() != null && $("#u_id").val().length > 1) {
			$("#add_div").dialog({
				title:"후기등록"
			});
		}else{
			alert("수강완료한 인원만 등록이 가능합니다.");
		}
	}
	function add2() {
		if($("#u_id").val() != null && $("#u_id").val().length > 1) {
			$("#add_help").dialog({
				title:"문의등록"
			});
		}else{
			alert("로그인 후 이용가능합니다.");
		}
	}
	function cancel1() {
		$("#add_div").dialog("close");
		$("#add_div").css("display", "none");
	}
	function ok1() {
		$("#add_div").dialog("close");
		$("#add_div").css("display", "none");
		document.add_after.submit();
	}
	function cancel2() {
		$("#add_help").dialog("close");
		$("#add_help").css("display", "none");
	}
	function ok2() {
		$("#add_help").dialog("close");
		$("#add_help").css("display", "none");
		document.add_help.submit();
	}
</script>
</html>