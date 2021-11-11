<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<style>
   @font-face {
       font-family: 'HSSaemaul-Regular';
       src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/HSSaemaul-Regular.woff') format('woff');
       font-weight: normal;
       font-style: normal;
   }
   @font-face {
       font-family: 'BinggraeSamanco-Bold';
       src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/BinggraeSamanco-Bold.woff') format('woff');
       font-weight: normal;
       font-style: normal;
   }
   table{
      width: auto;
      border-collapse: collapse;
      margin: 10px auto;
      font-family: 'BinggraeSamanco-Bold';
   }
   
   table th, table td{
      border: 2px solid #D2D3F2;;
      padding: 4px;
      text-align: center;
   }
   header{
      margin: 0px auto;
      text-align: center;
      color: #C2C3F2;
      font-family: 'BinggraeSamanco-Bold';
   }
   .hand{
      cursor: pointer;
   }
   .divBox{
      display: none;
   }
   a{
   		
   		text-decoration: none;
   }
   
</style>
</head>
<body>
<div id="ex">
   <header>
      <h1>Hrd</h1>
   </header>
   </div>
   <div>
   <form action="hrd.search" method="post" name="search">
   	  <select id="searchValue" name="searchValue">
   	  	<option>지역을 선택해주세요</option>
   	  	<option value="11">서울</option>
   	  	<option value="41">경기</option>
   	  	<option value="28">인천</option>
   	  	<option value="30">대전</option>
   	  	<option value="36">세종</option>
   	  	<option value="42">강원</option>
   	  	<option value="43">충북</option>
   	  	<option value="44">충남</option>
   	  	<option value="47">경북</option>
   	  	<option value="48">경남</option>
   	  	<option value="31">울산</option>
   	  	<option value="26">부산</option>
   	  	<option value="45">전북</option>
   	  	<option value="46">전남</option>
   	  	<option value="29">광주</option>
   	  	<option value="27">대구</option>
   	  	<option value="50">제주</option>
   	  </select>
   	  
   	  <select id="searchValue" name="searchValue2">
   	  	<option>시,구,군을(를)선택해주세요</option>
   	  	<!-- 서울 -->
   	  	<option value="11110">종로구</option>
   	  	<option value="11140">중구</option>
   	  	<option value="11170">용산구</option>
   	  	<option value="11200">성동구</option>
   	  	<option value="11215">광진구</option>
   	  	<option value="11230">동대문구</option>
   	  	<option value="11260">중랑구</option>
   	  	<option value="11290">성북구</option>
   	  	<option value="11305">강북구</option>
   	  	<option value="11320">도봉구</option>
   	  	<option value="11350">노원구</option>
   	  	<option value="11380">은평구</option>
   	  	<option value="11410">서대문구</option>
   	  	<option value="11440">마포구</option>
   	  	<option value="11470">양천구</option>
   	  	<option value="11500">강서구</option>
   	  	<option value="11530">구로구</option>
   	  	<option value="11545">금천구</option>
   	  	<option value="11560">영등포구</option>
   	  	<option value="11590">동작구</option>
   	  	<option value="11620">관악구</option>
   	  	<option value="11650">서초구</option>
   	  	<option value="11680">강남구</option>
   	  	<option value="11710">송파구</option>
   	  	<option value="11740">강동구</option>
   	  	<!-- 경기 -->
   	  	<option value="41110">수원시</option>
   	  	<option value="41111">수원시 장안구</option>
   	  	<option value="41113">수원시 권선구</option>
   	  	<option value="41115">수원시 팔달구</option>
   	  	<option value="41117">수원시 영통구</option>
   	  	<option value="41130">성남구</option>
   	  	<option value="41131">성남시 수정구</option>
   	  	<option value="41133">성남시 중원구</option>
   	  	<option value="41135">성남시 분당구</option>
   	  	<option value="41150">의정부시</option>
   	  	<option value="41170">안양시</option>
   	  	<option value="41171">안양시 만안구</option>
   	  	<option value="41173">안양시 동안구</option>
   	  	<option value="41190">부천시</option>
   	  	<option value="41195">부천시 원미구</option>
   	  	<option value="41197">부천시 소사구</option>
   	  	<option value="41199">부천시 오정구</option>
   	  	<option value="41210">광명시</option>
   	  	<option value="41220">평택시</option>
   	  	<option value="41250">동두천시</option>
   	  	<option value="41270">안산시</option>
   	  	<option value="41271">안산시 상록구</option>
   	  	<option value="41273">안산시 단원구</option>
   	  	<option value="41280">고양시</option>
   	  	<option value="41281">고양시 덕양구</option>
   	  	<option value="41283">고양시 일산구</option>
   	  	<option value="41285">고양시 일산동구</option>
   	  	<option value="41287">고양시 일산서구</option>
   	  	<option value="41290">과천시</option>
   	  	<option value="41310">구리시 </option>
   	  	<option value="41360">남양주시</option>
   	  	<option value="41370">오산시</option>
   	  	<option value="41390">시흥시</option>
   	  	<option value="41410">군포시</option>
   	  	<option value="41430">의왕시</option>
   	  	<option value="41450">하남시</option>
   	  	<option value="41460">용인시</option>
   	  	<option value="41461">용인시 처인구</option>
   	  	<option value="41463">용인시 기흥구</option>
   	  	<option value="41465">용인시 수지구</option>
   	  	<option value="41480">파주시</option>
   	  	<option value="41500">이천시</option>
   	  	<option value="41550">안성시</option>
   	  	<option value="41570">김포시</option>
   	  	<option value="41590">화성시</option>
   	  	<option value="41610">광주시</option>
   	  	<option value="41630">양주시</option>
   	  	<option value="41650">포천시</option>
   	  	<option value="41670">여주시</option>
   	  	<option value="41710">양주군</option>
   	  	<option value="41730">여주군</option>
   	  	<option value="41800">연천군</option>
   	  	<option value="41810">포천군</option>
   	  	<option value="41820">가평군</option>
   	  	<option value="41830">양평군</option>
   	  	<!--인천-->
   	  	<option value="28110">중구</option>
   	  	<option value="28140">동구</option>
   	  	<option value="28177">미추홀구</option>
   	  	<option value="28185">연수구</option>
   	  	<option value="28200">남동구</option>
   	  	<option value="28237">부평구</option>
   	  	<option value="28245">계양구</option>
   	  	<option value="28260">서구</option>
   	  	<option value="28710">강화군</option>
   	  	<option value="28720">옹진군</option>
   	  	<!--대전-->
   	  	<option value="30110">동구</option>
   	  	<option value="30140">중구</option>
   	  	<option value="30170">서구</option>
   	  	<option value="30200">유성구</option>
   	  	<option value="30230">대덕구</option>
   	  	<!--세종-->
   	  	<option value="36110">세종</option>
   	  	<!-- 강원 -->
   	  	<option value="42110">춘천시</option>
   	  	<option value="42130">원주시</option>
   	  	<option value="42150">강릉시</option>
   	  	<option value="42170">동해시</option>
   	  	<option value="42190">태백시</option>
   	  	<option value="42210">속초시</option>
   	  	<option value="42230">삼척시</option>
   	  	<option value="42720">홍천군</option>
   	  	<option value="42730">횡성군</option>
   	  	<option value="42750">영월군</option>
   	  	<option value="42760">평창군</option>
   	  	<option value="42770">정선군</option>
   	  	<option value="42780">철원군</option>
   	  	<option value="42790">화천군</option>
   	  	<option value="42800">양구군</option>
   	  	<option value="42810">인제군</option>
   	  	<option value="42820">고성군</option>
   	  	<option value="42830">양양군</option>
   	  	<!-- 충북 -->
   	  	<option value="43110">청주시</option>
   	  	<option value="43111">청주시 상당구</option>
   	  	<option value="43112">청주시 서원구</option>
   	  	<option value="43113">청주시 흥덕구</option>
   	  	<option value="43114">청주시 청원구</option>
   	  	<option value="43130">충주시</option>
   	  	<option value="43150">제천시</option>
   	  	<option value="43710">청원군</option>
   	  	<option value="43720">보은군</option>
   	  	<option value="43730">옥천군</option>
   	  	<option value="43740">영동군</option>
   	  	<option value="43745">증평군</option>
   	  	<option value="43750">진천군</option>
   	  	<option value="43760">괴산군</option>
   	  	<option value="43770">음성군</option>
   	  	<option value="43800">단양군</option>
   	  	<!-- 충남 -->
   	  	<option value="44130">천안시</option>
   	  	<option value="44131">천안시 동남구</option>
   	  	<option value="44132">천안시 서북구</option>
   	  	<option value="44133">천안시 서북구</option>
   	  	<option value="44150">공주시</option>
   	  	<option value="44180">보령시</option>
   	  	<option value="44200">아산시</option>
   	  	<option value="44210">서산시</option>
   	  	<option value="44230">논산시</option>
   	  	<option value="44250">계룡시</option>
   	  	<option value="44270">당진시</option>
   	  	<option value="44710">금산군</option>
   	  	<option value="44730">연기군</option>
   	  	<option value="44760">부여군</option>
   	  	<option value="44770">서천군</option>
   	  	<option value="44790">청양군</option>
   	  	<option value="44800">홍성군</option>
   	  	<option value="44810">예산군</option>
   	  	<option value="44825">태안군</option>
   	  	<option value="44830">당진군</option>
   	  	<!-- 경북 -->
   	  	<option value="47110">포항시</option>
   	  	<option value="47111">포항시 남구</option>
   	  	<option value="47113">포항시 북구</option>
   	  	<option value="47130">경주시</option>
   	  	<option value="47150">김천시</option>
   	  	<option value="47170">안동시</option>
   	  	<option value="47190">구미시</option>
   	  	<option value="47210">영주시</option>
   	  	<option value="47230">영천시</option>
   	  	<option value="47250">상주시</option>
   	  	<option value="47280">문경시</option>
   	  	<option value="47290">경산시</option>
   	  	<option value="47720">군위군</option>
   	  	<option value="47730">의성군</option>
   	  	<option value="47750">청송군</option>
   	  	<option value="47760">영양군</option>
   	  	<option value="47770">영덕군</option>
   	  	<option value="47820">청도군</option>
   	  	<option value="47830">고령군</option>
   	  	<option value="47840">성주군</option>
   	  	<option value="47850">칠곡군</option>
   	  	<option value="47900">예천군</option>
   	  	<option value="47920">봉화군</option>
   	  	<option value="47930">울진군</option>
   	  	<option value="47940">울릉군</option>
   	  	<!-- 경남 -->
   	  	<option value="48110">창원시</option>
   	  	<option value="48120">창원시</option>
   	  	<option value="48121">창원시 의창구</option>
   	  	<option value="48123">창원시 성산구</option>
   	  	<option value="48125">창원시 마산합포구</option>
   	  	<option value="48127">창원시 마산회원구</option>
   	  	<option value="48129">창원시 진해구</option>
   	  	<option value="48160">마산시</option>
   	  	<option value="48170">진주시</option>
   	  	<option value="48190">진해시</option>
   	  	<option value="48220">통영시</option>
   	  	<option value="48240">사천시</option>
   	  	<option value="48250">김해시</option>
   	  	<option value="48270">밀양시</option>
   	  	<option value="48310">거제시</option>
   	  	<option value="48330">양산시</option>
   	  	<option value="48720">의령군</option>
   	  	<option value="48730">함안군</option>
   	  	<option value="48740">창녕군</option>
   	  	<option value="48820">고성군</option>
   	  	<option value="48840">남해군</option>
   	  	<option value="48850">하동군</option>
   	  	<option value="48860">산청군</option>
   	  	<option value="48870">함양군</option>
   	  	<option value="48880">거창군</option>
   	  	<option value="48890">합천군</option>
   	  	<!-- 울산 -->
   	  	<option value="31110">중구</option>
   	  	<option value="31140">남구</option>
   	  	<option value="31170">동구</option>
   	  	<option value="31200">북구</option>
   	  	<option value="31710">울주군</option>
   	 	<!-- 부산 --> 	
   	  	<option value="26110">중구</option>
   	  	<option value="26140">서구</option>
   	  	<option value="26170">동구</option>
   	  	<option value="26200">영도구</option>
   	  	<option value="26230">부산진구</option>
   	  	<option value="26260">동래구</option>
   	  	<option value="26290">남구</option>
   	  	<option value="26320">북구</option>
   	  	<option value="26350">해운대구</option>
   	  	<option value="26380">사하구</option>
   	  	<option value="26410">금정구</option>
   	  	<option value="26440">강서구</option>
   	  	<option value="26470">연제구</option>
   	  	<option value="26500">수영구</option>
   	  	<option value="26530">사상구</option>
   	  	<option value="26710">기장군</option>
   	  	<!-- 전북 -->
   	  	<option value="45110">전주시</option>
   	  	<option value="45111">전주시 완산구</option>
   	  	<option value="45113">전주시 덕진구</option>
   	  	<option value="45130">군산시</option>
   	  	<option value="45140">익산시</option>
   	  	<option value="45180">정읍시</option>
   	  	<option value="45190">남원시</option>
   	  	<option value="45210">김제시</option>
   	  	<option value="45710">완주군</option>
   	  	<option value="45720">진안군</option>
   	  	<option value="45730">무주군</option>
   	  	<option value="45740">장수군</option>
   	  	<option value="45750">임실군</option>
   	  	<option value="45770">순창군</option>
   	  	<option value="45790">고창군</option>
   	  	<option value="45800">부안군</option>
   	  	<!-- 전남 -->
   	  	<option value="46110">목포시</option>
   	  	<option value="46130">여수시</option>
   	  	<option value="46150">순천시</option>
   	  	<option value="46170">나주시</option>
   	  	<option value="46230">광양시</option>
   	  	<option value="46710">담양군</option>
   	  	<option value="46720">곡성군</option>
   	  	<option value="46730">구례군</option>
   	  	<option value="46770">고흥군</option>
   	  	<option value="46780">보성군</option>
   	  	<option value="46790">화순군</option>
   	  	<option value="46800">장흥군</option>
   	  	<option value="46810">강진군</option>
   	  	<option value="46820">해남군</option>
   	  	<option value="46830">영암군</option>
   	  	<option value="46840">무안군</option>
   	  	<option value="46860">함평군</option>
   	  	<option value="46870">영광군</option>
   	  	<option value="46880">장성군</option>
   	  	<option value="46890">완도군</option>
   	  	<option value="46900">진도군</option>
   	  	<option value="46910">신안군</option>
   	  	<!-- 광주 -->
   	  	<option value="29110">동구</option>
   	  	<option value="29140">서구</option>
   	  	<option value="29155">남구</option>
   	  	<option value="29170">북구</option>
   	  	<option value="29200">광산구</option>
   	  	<!-- 대구 -->
   	  	<option value="27110">중구</option>
   	  	<option value="27140">동구</option>
   	  	<option value="27170">서구</option>
   	  	<option value="27200">남구</option>
   	  	<option value="27230">북구</option>
   	  	<option value="27260">수성구</option>
   	  	<option value="27290">달서구</option>
   	  	<option value="27710">달성군</option>
   	  	<!-- 제주 -->
   	  	<option value="50110">제주시</option>
   	  	<option value="50130">서귀포시</option>
   	  </select>
   	  
   	  
   	  <label for="search">시작날짜</label>
		<input id="search" name="startDate" class="search">
		<label for="search">마감날짜</label>
		<input id="search2" name="endDate" class="search">
   	  <input type="button" onclick="search1()" value="검색"/>
   	  </form>
      <table id="t1">
         <colgroup>
            <%-- <col width="80px">
            <col width="*">
            <col width="150px">
            <col width="80px"> --%>
         </colgroup>
         <thead>
            <tr>
               <th>아이콘</th>
               <th>주소</th>
               <th>제목</th>
               <th>수강비</th>
               <th>자가부담비</th>
               <th>취업률</th>
            </tr>
            
            <tr>
            
            </tr>
         	
         </thead>
         <tbody>
            <c:forEach var="vo" items="${hrd }" varStatus="st">
               <tr class="hand"  />
                  <td>
                  	${n - ((p-1) * 100 + st.index) }
                  </td>
                  <td>${vo.ADDRESS }</td>
                  <td hidden="">
                  	${vo.TRPR_DEGR }
                  	<input id="cid${n - ((p-1) * 100 + st.index) }"  value="${vo.TRAINST_CST_ID }"/>
                  	<input id="degr${n - ((p-1) * 100 + st.index) }"  value="${vo.TRPR_DEGR }"/>
                  	<input id="t_id${n - ((p-1) * 100 + st.index) }"  value="${vo.TRPR_ID }"/>
                  </td>
                  <td><a href="javascript:sendKey('${n - ((p-1) * 100 + st.index) }')">${vo.TITLE}</a></td>
                  <td><fmt:formatNumber value="${vo.COURSE_MAN }" type="currency" currencySymbol="수강료" /></td>
                  <td><fmt:formatNumber value="${vo.REAL_MAN }" type="currency" currencySymbol="자기부담금" /></td>
                  <td>${vo.EI_EMPL_RATE6}</td>
               </tr>
               <%-- <tr>
                  <td id="divBox${vo.employee_id}" style="display: none;" colspan="4">
                     <label>사번:</label>
                     <span id="emp${vo.employee_id}"></span>
                     <label>이름:</label>
                     <span id="emp1${vo.employee_id}"></span><br/>
                     <label>직종:</label>
                     <span id="emp2${vo.employee_id}"></span>
                     <label>부서:</label>
                     <span id="emp3${vo.employee_id}"></span>
                  </td>
               </tr>
               <tr>
                  <td id="map${vo.employee_id}" style="width:100%; height:100px; display: none;" colspan="4"/>
                     
                  
               </tr> --%>
               
                  
            </c:forEach>
         </tbody>
         ${page}
      </table>
      <form action="hrd" method="post" name="ff">
            <input type="hidden" name="page" id="page">
      </form>
      <form action="hrd.res" method="post" name="f">
			      	<input type="hidden" name="TRAINST_CST_ID1" id="cstid" value="">
			      	<input type="hidden" name="TRPR_DEGR1" id="degr" value="">
			      	<input type="hidden" name="TRPR_ID1" id="t_id" value="">
			      	<input type="hidden" name="authKey1"value="${k}">
			      </form>
   </div>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=461f39a1f53263909112d29e0b0e5b61"></script>
   <script>
   
   var table = document.getElementById("t1");
   var total = null;
  
   $(function(){
		$("#search").bind("click",function(){
			$( "#search" ).datepicker({
				dateFormat: 'yymmdd',
				monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
				monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
				dayNamesMin: ['일','월','화','수','목','금','토'],
				dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'],
				showMonthAfterYear:true,
				showOtherMonths: true
			});
		});
		$("#search2").bind("click",function(){
			$( "#search2" ).datepicker({dateFormat: 'yymmdd',
				monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
				monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
				dayNamesMin: ['일','월','화','수','목','금','토'],
				dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'],
				showMonthAfterYear:true,
				showOtherMonths: true
			});
		});
	});
   
   
   function search1(){
	   document.search.submit();
   }
   
   function sendKey(i){
	   
	   $("#cstid").val($("#cid"+i).val());
	   $("#degr").val($("#degr"+i).val());
	   $("#t_id").val($("#t_id"+i).val());
	   
	   document.f.submit();
   }
   
  
   function send(frm){
	   var s = $("#page").val();
	   var c = s+1;
	   $("#page").val(2);
	  var st =  $("#page").val();
	   alert(st);
	  document.ff.submit();
   }
   
   // 검색했을때 비동기식으로 값 가져오기
   function search(){
	   var searchType = $("#searchType").val();
	   var searchValue = $("#searchValue").val();
	   $.ajax({
		   url:"hrd.search",
		   data:{"searchValue":searchValue},
		   type:"post",
		   dataType:"json",
	   }).done(function(data){
		   
	   }).fail(function(err){
		   
	   });
   }
   
   /* function viewdata(emp){
      // 받은 사번을 특정경로를 호출하면서 보내면 된다.
      //location.href="view.my?empno="+emp;
      $.ajax({
         url: "views.my",
         data:{"empno":emp},
         type:"post",
         dataType:"json",
      }).done(function(data){
             $("#emp"+emp).text(data.empno);
             $("#emp1"+emp).text(data.name);
             $("#emp2"+emp).text(data.job);
             $("#emp3"+emp).text(data.dept);
          $("#divBox"+emp).slideToggle(400);
          $("#map"+emp).slideToggle(400);
      }).fail(function(err){
         arlet("실패");
      });
   var mapContainer = document.getElementById('map'+emp), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 5 // 지도의 확대 레벨
    };

   // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
   var map = new kakao.maps.Map(mapContainer, mapOption);
   } */
   
   </script>
</body>
</html>