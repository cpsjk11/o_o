<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제휴문의</title>

<link href="../resources/css/header.css" rel="stylesheet" type="text/css"/>
<link href="../resources/css/foot.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="../resources/css/summernote-lite.css">
<link rel="shortcut icon" href="../resources/ico/Frame.png">

<link rel="stylesheet" href="../resources/css/summernote-lite.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="../resources/js/summernote-lite.js"></script>
<script src="../resources/js/lang/summernote-ko-KR.js"></script>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap');
	
	span,p{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
	}
	#wrap{
		margin: 0 auto 5em;
		padding: 0;
		width: 100%;
	 }
	#c_category{
		margin: 6.5em auto;
	   width: 60%;
	   height: 5em;
	   margin-bottom: 5em;
	   display: flex;
	}
	#c_category div{
		width: 100%;
		height: 70%; 
		line-height: 3.5em;
		text-align: center;
		border: 0.6 solid #eee;
		background-color: #fff7f7;
		cursor: pointer; 
		transition-property:background-color;
		transition-duration:0.2s;
	}
	#c_category div:hover{
		background-color: #fbe9e9;
	}
	#c_category div span{
		color: #565656;
		font-size: 1.1em;
		font-weight: 500; 
	}
	#content_area{
		margin: 0 auto;
		width: 50%;
		border: 0.6px solid #eee;
		padding: 1em; 
	}
	#con_name{
		margin: 0 auto;
		width: 90%;
	}
	#con_name span{
		font-weight: 600;
	    font-size: 1.6em;
	    color: #4e4e4e;
	}
	#c_info{
		margin: 2em auto 0;
		width: 70%;
	}
	#c_info div{
		height: 10%;
		border-bottom: 0.6px solid #eee; 
		margin-bottom: 1em;
		line-height: 3.3em;
	}
	#c_info div span:nth-child(1){
		color: #5e5e5e;
		margin-left: 1em;
		width: 30%;
	    display: inline-block;
	}
	#c_info div span:nth-child(2){
		color: #5e5e5e;
	}
	#content_area{
	    margin-top: 2em;
	}
	#note_area{
		margin-top: 2em;
	}
	#btn_area{
		text-align: center;
		width: 100%;
	}
	#btn{
		margin: 2em auto; 
		width: 20%;
		height: 2em;
		line-height: 2em;
		border: none;
		background-color: #b0daff;
    	color: #525252;
	    font-size: 1em;
	    font-weight: 500;
	    cursor: pointer;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="wrap">
		<jsp:include page="c_category.jsp"/>
		<form action="/write" method="POST">
			<div id="content_area">
				<div id="con_name"><span>제휴문의</span></div>
				<div id="note_area">
					<textarea name="content" id="content" name="content"
						rows="8"></textarea>
				</div>
				<div id="btn_area">
					<div id="btn" onclick="sendData()">제휴신청하기</div>
				</div>
			</div>
			<input type="hidden" name="bname" value="제휴문의">
			<input type="hidden" name="status" value="6">
			<input type="hidden" name="writer" value="${sessionScope.userName.name }">
			<input type="hidden" name="id" value="${sessionScope.userName.id }">
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
<script>
		$(function(){
			$("#content").summernote({
				height: 500,
				minHeight: null,
				maxHeight: null,  
				leng: "ko-KR",
				focus: true, /* 커서를 미리 가져다 놓는다. */
				toolbar: [
				    // [groupName, [list of button]]
				    ['fontname', ['fontname']],
				    ['fontsize', ['fontsize']],
				    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
				    ['color', ['forecolor','color']],
				    ['table', ['table']],
				    ['para', ['ul', 'ol', 'paragraph']],
				    ['height', ['height']],
				    ['insert',['picture','link','video']],
				    ['view', ['fullscreen', 'help']]
				  ],
				fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
				fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
				callbacks:{
					onImageUpload: function(files, editor){
						//이미지가 에디터에 추가될 때마다 수행하는 곳!
						//추가되어 들어온 이미지가 배열로 인식됨!
						for(var i=0; i<files.length; i++)
							sendImage(files[i], editor);//서버로 비동기식 통신으로
											//이미지를 서버로 업로드시킨다.
					}
				}
			});
		});
		
		function sendImage(file, editor){
			var frm = new FormData();
			//파일을 보내야할때는 폼에 담아서 보내야한다.
			
			//보내고자 하는 자원을 위해서 만든 폼객체에 파라미터로 넣어준다.
			frm.append("s_file", file);
			
			//비동기식 통신
			$.ajax({
				url: "saveImg",
				data: frm,
				type: "post",
				contentType: false,//파일의형식 - enpType으로 가기 위해서 파일의 형식을 없애버렸다.
				processData: false,
				cache: false,
				dataType: "json", // 서버로부터 받을 데이터 형식
			}).done(function(data){
				$("#content").summernote("editor.insertImage", data.url+"/"+data.fname);
			}).fail(function(err){
				alert("서버오류");
			});
		}
		/* function removeHTML(str){
			str = str.replace(/<br\/>/ig, "\n");
			str = str.replace(/<(\/)?([a-zA-Z]*)(\s[a-zA-Z]*=[^>]*)?(\s)*(\/)?>/ig, "");
			
			return str;
		} */
		
		function sendData(){
			var t1 = $("#content");
			
			if(t1.val().trim().length < 2){
				alert("내용을 입력해주세요.");
				document.forms[0].content.focus();
				return;//수행 중단
			}
			document.forms[0].submit();
		}
</script>
</body>
</html>
