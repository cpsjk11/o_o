<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src="resources/js/summernote-lite.js"></script>
<script src="resources/js/lang/summernote-ko-KR.js"></script>


<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="shortcut icon" href="resources/ico/Frame.png">

<%-- css링크구역!! --%>
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/home.css">
<link rel="stylesheet" href="resources/css/foot.css">
<link rel="stylesheet" href="resources/css/helpSc.css">
<link rel="stylesheet" href="resources/css/summernote-lite.css">


<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap');
	#write_area{
		margin: 0 auto;
		width: 60%;
	}
	#bbs_b_area{
		margin: 0 auto;
	}
	#write_panel{
		margin: 0 auto;
		width: 90%;
	}
	#title_area{
		margin: 1em 0 1em 0;
		width: 70%;
		height: 5%;
		vertical-align: middle;
		font-family: 'Noto Sans KR','Roboto', sans-serif;
		font-size: 0.8em;
	}
	#title_area span{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
		font-size: 1.2em;
	}
	#title_area input{
		width: 80%;
		height: 40%;
		font-family: 'Noto Sans KR','Roboto', sans-serif;
		font-size: 1em;
		padding: 7px;
		border: 0.6px solid #ababab;
		border-radius:7px; 
	}
	#content{
		margin: 20px auto 20px;
		width: 70%;
		height: 40%;
		border: 1px solid #ababab;
		padding: 1em;
		vertical-align: middle;
		text-align: center;
	}
	
	#btn_area{
		width: 90%;
		margin: 20px auto 0;
	}
	#btn_area input{
		margin: 1em 0 1em 0;
		float: right;
		font-family: 'Noto Sans KR','Roboto', sans-serif;
		font-size: 0.8em;
		color: #3A2F2F;
		margin-left: 1.2em;
		width: 6%;
		height: 53%;
		color: #3A2F2F;
		background-color: white;
		border: 0.6px solid #bcbcbc;
	}
	#btn_area input:hover{
		background-color: #efefef;
	}
</style>

</head>
<body>
	<div id="wrap">
		<jsp:include page="header.jsp"/>
		<div id="write_area">
			<jsp:include page="helpCategory.jsp"/>
			<div id="bbs_b_area">
				<form action="/write" method="post" 
			encType="multipart/form-data" id="write_panel">
					<div id="title_area">
						<span>제목 : </span>
						<input type="text" id ="subject" name="subject" placeholder="제목을 입력해주세요" maxlength="30">
					</div>
					<div id="contetn_area">
						<textarea name="content" id="content" 
							rows="8"></textarea>
					</div>
					<input hidden="bname" name="bname" id="bname" value="${bname }">
					<input hidden="writer" name="writer" id="writer" value="${sessionScope.userName.name }">
				</form>
				<div id="btn_area">
					<input type="button" value="저장"
					onclick="sendData()"/>
					<input type="button" value="목록"
					onclick="javascript:location.href='helpSc'"/>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"/>
	</div>
	
	
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
			var t1 = $("#subject");
			var t2 = $("#content");
			
			if(t1.val().trim().length < 1){
				alert("제목을 입력하세요.");
				document.forms[0].subject.focus();
				return;//수행 중단
			}
			if(t2.val().trim().length < 2){
				alert("내용을 입력해주세요.");
				document.forms[0].content.focus();
				return;//수행 중단
			}
	
			document.forms[0].submit();
			
			
		}

		
		
</script>
</body>
</html>












