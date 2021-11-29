<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700' rel='stylesheet' type='text/css'>
<%-- css링크구역!! --%>
<link rel="shortcut icon" href="resources/ico/Frame.png">
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/home.css">
<link rel="stylesheet" href="resources/css/foot.css">
<link rel="stylesheet" href="resources/css/ujoin.css">

<style type="text/css">
	
</style>
</head>
<body>
<%--헤더 --%>
		<jsp:include page="header.jsp"/>
		<%--헤더 --%>
			<div id="join_panel">
				<div id="join_form">
					<div id="join_text_box">
						<span>기업회원</span><br/><br/><br/>
						<span>국삐 서비스를 사용하기 위해 회원가입을 해주세요.</span>
					</div>
					<div id="text_area">
						<span class="info">기업인증</span>
						<form action="userAdd"method="POST">
							<input type="text" name="id" id="id" placeholder="아이디를 입력해주세요." maxlength="20"  oninput="handleOnInput(this)"><div class="checkBox"><span id="id_checkBox" class="checkBox"></span></div>
							<input type="password" name="pw" id="pw" placeholder="비밀번호를 입력해주세요." maxlength="20"><div class="checkBox"><span id="pw_checkBox" class="checkBox"></span></div>
							<input type="password" name="rPw" id="rPw" placeholder="비밀번호 재확인" maxlength="20"><div class="checkBox"><span id="repw_checkBox" class="checkBox"></span></div>
							<span class="infoTo">이름</span>
							<input type="text" name="name" id="name" placeholder="이름을 입력해주세요." maxlength="10">
							<span class="infoTo">사업자등록번호</span>
							<input type="text" name="c_num" id="c_num" placeholder="사업자 등록번호를 입력해주세요." maxlength="12"><div class="checkBox"><span id="c_num_checkBox" class="checkBox"></span></div>
							<span class="infoTo">이메일</span>
							<input type="email" name="email" id="email" placeholder="담당자 이메일을 입력해주세요." maxlength="40"><div class="checkBox"><span id="email_checkBox" class="checkBox"></span></div>
							<input type="button" name="email_chk" id="email_chk" value="인증코드 보내기" onclick="sends()"/>
							<input type="text" name="email_chkOk" id="email_chkOk" style="display: none;" placeholder="인증코드를 입력해주세요.">
							<span id="test"></span>
							<span class="infoTo">전화번호</span>
							<input type="tel" name="phone" id="phone" placeholder="휴대폰번호를 -기호를 빼고 입력해주세요." maxlength="11" >
							<input type="hidden" id="chkID"/>
							<input type="hidden" id="chkPW"/>
							<input type="hidden" id="chkRPW"/>
							<input type="hidden" id="chkEMAIL"/>
							<input type="hidden" id="chkEMAIL1"/>
							<input type="hidden" name="stat" value="1"/>
						</form>
						<form action="email" method="post" name="ff">
							
						</form>
						<!-- <div class="chk_area">
							<span  class="info">약관동의</span>
							<div id="consent_box" class="el_login">
								<div id="all_chk">
									<span>전체동의</span>
									<div id="chkImg" style="background: url('resources/img/3.png') no-repeat; width: 100%;"></div>
									<input type="checkbox">
								</div>
							</div>
						</div> -->
						
						<div id="btn_area">
							<input type="button" id="join_btn" name="join_btn" value="회원가입" onclick="userAdd()">
						</div>
					</div>
				</div>
			</div>
		<%-- 푸터에용~ --%>
		<jsp:include page="footer.jsp"/>
		<%-- 푸터에용~ --%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	function handleOnInput(e){
		e.value = e.value.replace(/[^A-Za-z0-9]/ig , '');
	}
	
	 $(function(){	$("#id").bind("keyup", function(){
			// 사용자의 아이디를 중복확인!!!
			var id = $("#id").val();
			// 이제 여기서 2글자 이상 누를시 서버로 비동기식 통신시작 아이디 값 비교
			if(id.trim().length > 1){
				$.ajax({
					url:"checkId",
					data:"id="+encodeURIComponent(id),
					type:"post",
					dataType:"json",
				}).done(function(data){
					if(data.overlap == 1){
						$("#id_checkBox").html("사용가능").css("color","#12b886");
						$("#chkID").val("");
					}
					else{
						$("#id_checkBox").html("중복").css("color","red");
						$("#chkID").val("1");
					}
				}).fail(function(err){
					
				});
			}else if(id.trim().length < 1){
				// 사용자가 입력한 id값의 길이가 1자 미만이면 아이디가
				// box인 요소의 내용을 없앤다.
				$("#id_checkBox").html("");
			}
		});
	 
		$("#pw").bind("keyup",function(){
			// 사용자의 비밀번호 확인하는 기능!!
			var pw = $("#pw").val();
			console.log(pw);
			if(pw.trim().length > 0){
				$.ajax({
					url:"checkPw",
					data:"m_pw="+encodeURIComponent(pw),
					type:"post",
					dataType:"json",
				}).done(function(data){
					if(data.check == 1){
						$("#pw_checkBox").html("");
						$("#pw_checkBox").html("문자열의 길이가 짧습니다.").css("color","red");
						$("#chkPW").val("1");
					}
					else if(data.check == 2){
						$("#pw_checkBox").html("");
						$("#pw_checkBox").html("사용 가능한 비밀번호 입니다.").css("color","#12b886");
						$("#repw_checkBox").val("비밀번호를 확인해주세요.").css("color","red");	
						$("#chkPW").val("");
						
					}
					else if(data.check == 3){
						$("#pw_checkBox").html("");
						$("#pw_checkBox").html("지정한 특수기호가 없습니다.").css("color","red");
						$("#chkPW").val("1");
					}
				}).fail(function(err){
					
				});
			}
			if(pw.trim().length < 1){
				$("#pw_checkBox").html("");
			}
		});
		
		$("#rPw").bind("keyup",function(){
		 	// 비밀번호 재확인 확인
			var pw = $("#pw").val();
			var repw = $("#rPw").val();
			// 비교해서 서로의 값이 같다면 일치라는 문장을 넣어주자!
			if(repw == pw){
				$("#repw_checkBox").html("비밀번호가 일치합니다.").css("color","#12b886");
				$("#chkRPW").val("");
			}
			else if(repw != pw){
				$("#repw_checkBox").html("비밀번호가 일치하지 않습니다.").css("color","red");
				$("#chkRPW").val("1");
			}
		
		});
		 
		$("#email").bind("keyup", function(){
			var email = $("#email").val();
			var reg = /^((\w|[\-\.])+)@((\w|[\-\.])+)\.([A-Za-z]+)$/;			
			// 이제 여기서 2글자 이상 누를시 서버로 비동기식 통신시작 이메일 값 비교
			if(email.trim().length > 1){
				$.ajax({
					url:"checkEmail",
					data:"email="+encodeURIComponent(email),
					type:"post",
					dataType:"json",
				}).done(function(data){
					if(reg.test(email) == false){
						$("#email_checkBox").text("올바른 이메일 형식이 아닙니다.").css("color","red");
					}
					if(data.overlap == 1 && reg.test(email)){
						$("#email_checkBox").html("사용가능").css("color","#12b886");
						$("#chkEMAIL1").val("");
					}
					else if(data.overlap == 2){
						$("#email_checkBox").html("중복").css("color","red");
						$("#chkEMAIL1").val("1");
					}
				}).fail(function(err){
					
				});
			}else if(email.trim().length < 1){
				// 사용자가 입력한 id값의 길이가 1자 미만이면 아이디가
				// box인 요소의 내용을 없앤다.
				$("#email_checkBox").html("");
			}
		});
		

	 	$("#c_num").bind("keyup", function(){
	 	var c_num = $("#c_num").val();
	 	var reg = /([0-9]{3})-?([0-9]{2})-?([0-9]{5})/

	 	if(c_num.trim().length > 1){
	 		$.ajax({
	 			url:"checkCnum",
				data:"c_num="+encodeURIComponent(c_num),
				type:"post",
				dataType:"json",
	 		}).done(function(data){
	 			if(reg.test(c_num) == false || data.overlap == 2){
					$("#c_num_checkBox").text("사업자 번호가 올바르지 않거나 이미 등록된 번호입니다.").css("color","red");
				}else if(reg.test(c_num) == true && data.overlap == 1){
					$("#c_num_checkBox").html("사용가능").css("color","#12b886");
				}
	 		});
	 	}
	 		
	 	});
		
		 $("#email_chkOk").bind("input",function(){
		 // 메일 인증번호 확인 기능
		 	var value = $("#email_chkOk").val();
				$.ajax({
					url:"check",
					data:{"value":value},
					type:"post",
					dataType:"json",
				}).done(function(data){
					if(data.result == 1){
						// 인증 성공했을때.
						$("#test").text("");
						$("#test").text("인증성공");
						$("#chkEMAIL").val("");
					}
					else if(data.result == 2){
						$("#test").text("");
						$("#test").text("인증실패");
						$("#chkEMAIL").val("1");
					}
				}).fail(function(err){
					
				});
			});
		 
	}); 
	
	
	function sends(){
		// 이메일을 중복되었다면 바로 return해준다.
		
		if($("#email").val().trim().length < 1){
			alert("이메일을 입력해주세요");
			$("#email").val("");
			$("#email").focus();
			return;
		}

		if($("#chkEMAIL1").val() == 1){
			alert("이메일이 중복되었습니다");
			return;
		}
		// 사용자가 입력한 이메일에 메일 전송 기능!
		var mail = $("#email").val();
		$("#email_chkOk").slideDown(500);
		$.ajax({
			url:"email",
			data:{"userMail":mail},
			type:"post",
			dataType:"json",
		}).done(function(data){
			
		});
	}
	
	 
	function userAdd(){
		// 사용자가 필수로 입력한 값들을 입력했는지 이메일인증은 했는지를 구별해서 유효성 검사해서 회원가입을 시켜야 한다.
		if($("#id").val().trim().length < 1){
			alert("아이디를 입력해 주세요");
			$("#id").val("");
			$("#id").focus();
			return;
		}
		if($("#pw").val().trim().length < 1){
			alert("비밀번호를 입력해 주세요");
			$("#pw").val("");
			$("#pw").focus();
			return;
		}
		if($("#rPw").val().trim().length < 1){
			alert("비밀번호 재확인을 입력해 주세요");
			$("#rPw").val("");
			$("#rPw").focus();
			return;
		}
		if($("#email").val().trim().length < 1){
			alert("이메일을 입력해주세요");
			$("#email").val("");
			$("#email").focus();
			return;
		}
		if($("#email_chkOk").val().trim().length < 1){
			alert("인증코드를 입력해 주세요");
			$("#email_chkOk").val("");
			$("#email_chkOk").focus();
			return;
		}
		if($("#name").val().trim().length < 1){
			alert("이름을 입력해 주세요");
			$("#name").val("");
			$("#name").focus();
			return;
		}
		if($("#chkID").val() == 1){
			alert("아이디 중복확인을 해주세요");
			return;
		}
		if($("#chkPW").val() == 1){
			alert("비밀번호를 확인해주세요");
			return;
		}
		if($("#chkRPW").val() == 1){
			alert("비밀번호 재확인을 확인해주세요");
			return;
		}
		if($("#chkEMAIL").val() == 1){
			alert("인증코드가 일치하지 않습니다");
			return;
		}
		if($("#chkC_num").val() == 1){
			alert("사업자등록번호가 올바르지 않습니다.");
			return;
		}
		document.forms[0].submit();
	}

	
</script>
</body>

</html>