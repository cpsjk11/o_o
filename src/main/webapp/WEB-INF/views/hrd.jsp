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