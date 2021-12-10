<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="../resources/css/header.css" rel="stylesheet" type="text/css"/>
	<link href="../resources/css/foot.css" rel="stylesheet" type="text/css"/>
	<link href="../resources/css/css.css" rel="stylesheet" type="text/css"/>
	<link href="../resources/css/회원정보관리.css" rel="stylesheet" type="text/css"/>
	<link rel="shortcut icon" href="../resources/ico/Frame.png"> 
	<style>
		.m-unit-body1 li:hover > a, .m-unit-body1 li.mul1 > a {
    	font-weight: 700;
    	color: #0598e0;
}
	</style>
</head>
	<!-- 상단영역 -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 상단영역끝 -->
<body>
	<!-- 왼쪽 메뉴 영역 -->
		<jsp:include page="menubar.jsp"></jsp:include>
	<!-- 왼쪽 메뉴 영역 끝-->
	<!-- 오른쪽 메뉴 -->
	
<div id="bbb_right">
			<div class="m_id">
				<h2>회원정보변경</h2>
			</div>
			<div>
			<span class="fr-guide_txt">
			  <span class="req"></span>
				표시 필수입력사항
			</span>
			</div>
		<br/>
		<table class="table_type01" 
		style="width: 900px">
			<colgroup>
				<col width="130px">
				<col width="*">
			</colgroup>
			<tbody>
				<tr>
					<th>
						이름
					</th>
					<td>${sessionScope.userName.name }</td>	
				</tr>
				<tr>
					<th>
					  <span class="req"></span>
					  주소
					</th>
					<td>
					  <p>
					   <input type="text" name="zonecode" id="zonecode"
					    class="join" value="${sessionScope.userName.zonecode }"/>
					    <button type="button" class="btnType" id="search_addr">우편번호 찾기</button>
					    <br/>
					   <input type="text" name="addr" id="addr"
					    class="join" value="${sessionScope.userName.addr }"/><br/>
					    
					   <input type="text" name="addr2" id="addr2"
					    class="join" value="${sessionScope.userName.addr2 }"/>
					    <input type="hidden" id="id" value="${sessionScope.userName.id }">
					</td>
				</tr>	
				<tr>
					<th>
					 휴대폰번호
					</th>
					<td>
					  <p class="guide_txt">
					  본인의 휴대폰번호를 입력해주세요.
					  </p>
					  <p>
					   <label for="s_phone" class="hidden">휴대폰번호</label>
					   <input type="text" name="phone" id="phone"
					    class="join" value="${sessionScope.userName.phone }"/>
						</p>
					</td>
				</tr>
				<tr>
					<th>
					  <span class="req"></span>
					  이메일(e-mail)
					</th>
					<td>
					  <p>
					   <label for="e-mail" class="hidden"></label>
					   <input type="email" id="e-mail" name="email"
					    class="join" value="${sessionScope.userName.email }"/>   
					  </p>
					</td>
				</tr>
			</tbody>
		</table>
	
		<div>
			<button type="button" class="btnType1" id="b_ok">변경하기</button>
		</div>
	</div>
	<!-- 오른쪽 영역 끝 -->
	<!-- 하단영역 -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- 하단영역끝 -->
	
	
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>	
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
$(function() {
	$("#search_addr").click(function () {
		
 new daum.Postcode({
        oncomplete: function(data) {
        	var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if(fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            console.log(data.zonecode);
            console.log(fullRoadAddr);
            
            
            $("[name=zonecode]").val(data.zonecode);
            $("[name=addr]").val(fullRoadAddr);
        }
    }).open();
	})
})

$(function () {
	$("#b_ok").click(function() {
		 var addr = $("#zonecode").val();
		 var addr1 = $("#addr").val();
		 var addr2 = $("#addr2").val();
		 var phone = $("#phone").val();
		 var email = $("#e-mail").val();
		 var id = $("#id").val();
		 
		
	     	if (!addr.trim()) {
	          alert("주소를 입력하십시오");
	          
	        $("#zonecode").focus();  
	     	return
	        }
	     
	     
	     	if(!email.trim()){
	     		alert("이메일을 입력하십시오");	
	     		
	     	$("#e-mail").focus();  	
	     	return
	     	}
	     	 
	     	 var result = confirm("변경하시겠습니까?");
			 if (result) {
				 
				
				 var param = "addr="+encodeURIComponent(addr1)+"&zonecode="+encodeURIComponent(addr)
							+"&phone="+encodeURIComponent(phone)+"&email="+encodeURIComponent(email)
							+"&id="+encodeURIComponent(id)+"&addr2="+encodeURIComponent(addr2);	
				 $.ajax({
					 url:"changess",
					 data:param,
					 type:"post",
					 dataType:"json"
				 }).done(function(data){
					 if(data.result == 1){
						 alert("변경이 완료되었습니다!");
					
					 }else
						 alert("실패");
				 }).fail(function(err){
					 alert("오류");
				 });
	    	       location.href="http://localhost:9090/";
	  	    } else {
	  	        
	  	    }
	     	return
	});
			
});

</script>
</body>
</html>
