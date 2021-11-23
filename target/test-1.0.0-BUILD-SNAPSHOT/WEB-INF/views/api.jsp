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
   		color: black;
   		text-decoration: none;
   }
   .paging{
   		list-style: none;
   		float: left;
   }
   ol.paging li {
       float:left;
       margin-right:8px;
       text-align: center;
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
   <form action="api" method="post" name="search">
   	  <select id="searchValue" name="srchTraArea1">
   	  	<option value="">지역을 선택해주세요</option>
   	  	<option value="11">서울</option>
   	  	<option value="26">부산</option>
   	  	<option value="27">대구</option>
   	  	<option value="28">인천</option>
   	  	<option value="29">광주</option>
   	  	<option value="30">대전</option>
   	  	<option value="31">울산</option>
   	  	<option value="36">세종</option>
   	  	<option value="41">경기</option>
   	  	<option value="42">강원</option>
   	  	<option value="43">충북</option>
   	  	<option value="44">충남</option>
   	  	<option value="45">전북</option>
   	  	<option value="46">전남</option>
   	  	<option value="47">경북</option>
   	  	<option value="48">경남</option>
   	  	<option value="50">제주</option>
   	  </select>
   	  <select id="searchValue" name="srchTraArea2">
   	  	<option value="">지역을 선택해주세요</option>
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
   	  	<option value="11620">관악구</option>
   	  </select>
   	  <select id="searchValue" name="srchKeco1">
   	  	<option value="">Ncs대분류</option>
   	  	<option value="20">정보통신</option>
   	  </select>
   	  <select id="searchValue" name="srchKeco2">
   	  	<option value="">Ncs중분류</option>
   	  	<option value="2001">정보기술</option>
   	  	<option value="2002">통신기술</option>
   	  	<option value="2003">화학·방송기술</option>
   	  </select>
   	  <select id="searchValue" name="srchKeco3">
   	  	<option value="">Ncs소분류</option>
   	  	<option value="200101">정보기술전략·계획</option>
   	  </select>
   	  <select id="searchValue" name="srchKeco4">
   	  	<option value="">Ncs세분류</option>
   	  	<option value="20010101">정보기술전략</option>
   	  	<option value="20010102">정보기술컨설팅</option>
   	  	<option value="20010103">정보기술기획</option>
   	  	<option value="20010104">정보기술기획</option>
   	  	<option value="20010105">빅데이터분석</option>
   	  	<option value="20010106">IoT융합서비스기획</option>
   	  	<option value="20010107">빅데이터기획</option>
   	  	<option value="20010108">핀테크기술기획</option>
   	  </select>
   	  <label for="search">시작날짜</label>
		<input id="search" name="srchTraStDt" class="search">
		<label for="search">마감날짜</label>
		<input id="search2" name="srchTraEndDt" class="search">
		<label>훈련기관:</label>
		<input name="srchTraOrganNm" class="value" id="se1">
		<label>훈련과정:</label>
		<input name="srchTraProcessNm" class="value" id="se2">
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
         	
         </thead>
         <tbody>
            <c:forEach var="vo" items="${list }" varStatus="st">
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
               
               
                  
            </c:forEach>
         </tbody>
      </table>
      
   </div>
   ${page}
   <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
   <script>
   
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
	   var result1 = $("#se1").val();
	   var result2 = $("#se2").val();
	   
	  $("#se1").val(encodeURIComponent(result1));
	  $("#se2").val(encodeURIComponent(result2));
	   
	   document.search.submit();
   }
   
   </script>
</body>
</html>