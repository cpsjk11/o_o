<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	
	<link href="../resources/css/header.css" rel="stylesheet" type="text/css"/>
	<link href="../resources/css/css.css" rel="stylesheet" type="text/css"/>
	<link href="../resources/css/회원정보관리.css" rel="stylesheet" type="text/css"/>
	<link rel="shortcut icon" href="../resources/ico/Frame.png">
	<style>
		.m-unit-body1 li:hover > a, .m-unit-body1 li.mul2 > a {
    	font-weight: 700;
    	color: #0598e0;
}

	</style>
</head>
<body>
	<!-- 상단영역 -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 상단영역끝 -->
	<!-- 왼쪽 메뉴 영역 -->
		<jsp:include page="menubar.jsp"></jsp:include>
	<!-- 왼쪽 메뉴 영역 끝-->
		<!-- 오른쪽 메뉴 -->
<div id="bbb_right">
			<div class="m_id">
				<h2>비밀번호변경</h2>
			</div>
			<div>
			<span class="fr-guide_txt">
			  <span class="req"></span>
				표시 필수입력사항
			</span>
			</div>
		<br/>
		<input type="hidden" id="mail" name="mail" value="${sessionScope.userName.email }"> 
		<table class="table_type01" 
		style="width: 900px">
			<colgroup>
				<col width="130px">
				<col width="*">  
			</colgroup>
			<tbody>
				<tr>
					<th>아이디</th>
					<td>${sessionScope.userName.id }<input type="hidden" id="id" value="${sessionScope.userName.id }"></td>
					 
				</tr>
				<tr>
					<th>
					 <span class="req"></span>
					 현재 비밀번호
					</th>
					<td>
					   <label for="s_pw" class="hidden">비밀번호</label>
					   <input type="password" name="pw" id="pw" class="join"/>
					  <span id="alert-success" style="display: none;">비밀번호가 일치합니다.</span>
    				<span id="alert-danger" style="display: none; color: #d92742; font-weight: bold;">비밀번호가 일치하지 않습니다.</span>
					</td>
				</tr>
				<tr>
					<th>
					 <span class="req"></span>
					 새로운 비밀번호
					</th>
					<td>
					  <p class="guide_txt">
					   안전을 위해 10개 이상의 문자조합
					   영문 대소문자 + 숫자 또는 특수문자를 
					   입력해 주세요.
					  </p>
					  <p>
					   <label for="new_pw" class="hidden">새로운 비밀번호</label>
					   <input type="password" name="new_pw" id="new_pw"
					    class="join"/>
					  </p>
					</td>
				</tr>
				<tr>
					<th>
					  <span class="req"></span>
					  비밀번호 확인
					</th>
					<td>
					  <p class="guide_txt">
					   입력하신 비밀번호 확인을 위해 
					   다시한번 입력해 주세요.
					  </p>
					  <p>
					   <label for="s_pw2" class="hidden" id="pw">비밀번호확인</label>
					   <input type="password" name="pw2" id="pw2"
					    class="join"/>			    
					  </p>
					</td>
				</tr>
			</tbody>
		</table>
		<div>
			<button type="button" class="btnType1" id="b_ok2">변경하기</button>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- 오른쪽 영역 끝 -->
	<!-- 하단영역 -->
	<!-- 하단영역끝 -->
	
	
	
	
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>	
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
	
$("#pw").bind("keyup", function() {

	 	// 비밀번호 확인
		var pw = $("#pw").val();
		var id = $("#id").val();
		param = "pw="+encodeURIComponent(pw)+"&id="+encodeURIComponent(id);
		
		$.ajax({
			url:"pwdss",
			data:param,
			type:"post",
			dataType:"json"
		}).done(function (data) {
			console.log(data);
			
			if(data.data == 1){
				  $("#alert-success").css('display', 'inline-block');
	              $("#alert-danger").css('display', 'none');
			}else{
	               $("#alert-success").css('display', 'none');
	               $("#alert-danger").css('display', 'inline-block');
	               return
	               
			}
		
	});		
});


$(function () {
	$("#b_ok").click(function() {
		var s_pw = $("#pw").val();
		var new_pw = $("#new_pw").val();
		var s_pw2 = $("#pw2").val();
		var id = $("#id").val();
		var num = new_pw.search(/[0-9]/g);
		var eng = new_pw.search(/[a-z]/ig);
		var spe = new_pw.search(/[`~!@#$%^&*|\\\;:/?)]/gi);
			
		param = "pw="+encodeURIComponent(new_pw)+"&id="+encodeURIComponent(id);
	
		if(!s_pw.trim()){
			alert("비밀번호를 입력하세요");
			$("#pw").focus();
			return
		}
		
		if(!new_pw.trim()){
			alert("새로운 비밀번호를 입력하세요");
			$("#new_pw").focus();
			return
		}
		
		
		if(new_pw.length < 10 || new_pw.length > 20){
			alert("10자리 ~ 20자리 이내로 입력해주세요.");
			return 
		}else if( (num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0)){
			alert("영문,숫자,특수문자 중 2가지 이상을 혼합하여 입력해주세요.");
			return
		}
		
		
		if(!s_pw2.trim()){
			alert("비밀번호 확인을 입력하세요");
			$("#pw2").focus();
			return
		}
		
		var result = confirm("변경하시겠습니까?");
		 
		if (result) {
			
			$.ajax({
				url:"pwd",
				data:param,
				type:"post",
				dataType:"json"
			}).done(function(data){
				if(data.result == 1){
					alert("비밀번호 변경완료");
					location.href="/";
				}else{
					alert("오류입니당/..");
					return;
				}
				
			}).fail(function(err){alert("서버 오류입니다. 관리자한테 문의해주세요")});
		}
			
			if(new_pw == s_pw2){
   	      		alert("변경이 완료되었습니다.");
   	      	}else{
   	      		
   	      		alert("비밀번호가 일치하지 않습니다.");
   	      		
   	      		$("#pw2").val("");
   	      		$("#pw2").focus();
   	      		
   	      		return
   	      	}
			
			location.href="/";
			 
 	    });
    	return
	})




</script>
</body>
</html>
