<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="../resources/css/css.css" rel="stylesheet" type="text/css"/>
	<link href="../resources/css/회원정보관리.css" rel="stylesheet" type="text/css"/>
	<link rel="shortcut icon" href="resources/ico/Frame.png">
	<style>
		.m-unit-body1 li:hover > a, .m-unit-body1 li.mul2 > a {
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
				<h2>비밀번호변경</h2>
			</div>
			<div>
			<span class="fr-guide_txt">
			  <span class="req"></span>
				표시 필수입력사항
			</span>
			</div>
		<br/>
		<c:forEach var="vo" items="${vo }">
		<table class="table_type01" 
		style="width: 900px">
			<colgroup>
				<col width="130px">
				<col width="*">
			</colgroup>
			<tbody>
				<tr>
					<th>아이디</th>
					<td>${vo.id }</td>
					 <input type="hidden" id="id" value="${vo.id}">
				</tr>
				<tr>
					<th>
					 <span class="req"></span>
					 현재 비밀번호
					</th>
					<td>
					   <label for="s_pw" class="hidden">비밀번호</label>
					   <input type="password" name="pw" id="pw" class="join"/>
					  <font name="check" size="2" color="red"></font>
					  <font name="check2" size="2" color="blue"></font>
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
		</c:forEach>
		<div>
			<button type="button" class="btnType1" id="b_ok">변경하기</button>
		</div>
	</div>
	<!-- 오른쪽 영역 끝 -->
	<!-- 하단영역 -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- 하단영역끝 -->
	
	
	
	
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>	
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
			
		})
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
			
			
			if(new_pw == s_pw2){
   	      		alert("변경이 완료되었습니다.");
   	      	}else{
   	      		
   	      		alert("비밀번호가 일치하지 않습니다.");
   	      		
   	      		$("#pw2").val("");
   	      		$("#pw2").focus();
   	      		
   	      		return
   	      	}
			
			location.href="http://localhost:9090/";
			 
 	    }
    	return
	})
})



</script>
</body>
</html>
