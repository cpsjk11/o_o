<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script src="../resources/js/summernote-lite.js"></script>
	<script src="../resources/js/lang/summernote-ko-KR.js"></script>
		
	<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<link rel="shortcut icon" href="../resources/ico/Frame.png">
    <link rel="stylesheet" href="../resources/css/helpSc.css">
	<link rel="stylesheet" href="../resources/css/summernote-lite.css">

    <!-- Custom fonts for this template -->
    <link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="../resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>
<style>
	#btn_area{
		text-align: center;
	}
	#contetn_area{
		width: 100%;
	}
	.note-editor{
		width: 1280px !important;
	}
	textarea{
		resize: none;
	}
</style>
<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <jsp:include page="a_nav.jsp"/>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content1">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">


                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
					<div id="wrap">
		
		<div id="write_area">
			
			<div id="bbs_b_area">
				<form action="write" method="post" 
			encType="multipart/form-data" id="write_panel" name="ff">
					<div id="title_area">
						<span>공지사항 : </span>
						<c:if test="${vo eq null }">
						<input type="text" class="form-control form-control-user str" id="subject" name="subject" style="width: 260px; display: inline-block; margin-bottom: 25px;" placeholder="공지사항을 적어주세요">
						</c:if>
						<c:if test="${vo ne null }">
						<input type="text" class="form-control form-control-user str" id="subject" name="subject" style="width: 260px; display: inline-block; margin-bottom: 25px;" value="${vo.subject }" placeholder="공지사항을 적어주세요">
						</c:if>
					</div>
					<div id="contetn_area">
					<c:if test="${vo eq null }">   
						<textarea name="content" id="content" rows="8"></textarea>
					</c:if>
					<c:if test="${vo ne null }">   
						<textarea name="content" id="content" rows="8">${vo.content }</textarea>
					</c:if>
					</div>
					<input hidden="bname" name="bname" id="bname" value="공지사항">
					<input hidden="bname" name="admin" value="admin">
					<input hidden="writer" name="writer" id="writer" value="${sessionScope.userName.name }">
					<input hidden="id" name="id" id="id" value="${sessionScope.userName.id }">
				</form>
				
			</div>
		</div>
		
	</div>
                  
                                

                                    
                                
                                
                            </div>
                            
                        <div id="btn_area">
							<input type="button" class="btn btn-primary" value="저장"
							onclick="sendData()"/>
							<input type="button" class="btn btn-primary" value="목록"
							onclick="javascript:location.href='a_QNA?bname=공지사항'"/>
						</div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
                    
            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
           
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	
	<script src="../resources/js/summernote-lite.js"></script>
	<script src="../resources/js/lang/summernote-ko-KR.js"></script>
    <!-- Bootstrap core JavaScript-->
    <script src="../resources/vendor/jquery/jquery.min.js"></script>
    <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../resources/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../resources/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../resources/js/demo/datatables-demo.js"></script>
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
			alert('저장완료')
			document.ff.submit();
			
			
		}

		
		
</script>
	
</body>

</html>