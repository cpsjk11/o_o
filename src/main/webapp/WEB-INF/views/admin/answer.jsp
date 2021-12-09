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

                </nav>                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
					<div id="wrap">
		
		<div id="write_area">
			
			<div id="bbs_b_area">
				<div id="wrap">
			<div id="bbs_area">
				<div id="v_bbs_b_area">
				<div class="card-header py-3">
				<c:if test="${vo.status ne '6' }">
					<h6 class="m-0 font-weight-bold text-primary">QNA댓글</h6>
				</c:if>
				<c:if test="${vo.status eq '6' }">
					<h6 class="m-0 font-weight-bold text-primary">제휴문의</h6>
				</c:if>
				</div>
				<div class="card-body" style="background-color: #fff;">
				<c:if test="${vo.status ne '6' }">
						<div class="v_bbs">
							<div id="v_bbs_title">
								<div id="v_bbs_title_area">
									<span>제목 :&nbsp;</span>
									<span>${vo.subject } &nbsp;&nbsp;</span>
									<span>작성날짜 :&nbsp;&nbsp;</span>
									<span>
										<c:if test="${vo.write_date ne null }">
											${fn:substring(vo.write_date, 0, 11) }&nbsp;&nbsp;작성자 : &nbsp;&nbsp;
										</c:if>
									</span>
									<span>${vo.writer }</span>
								</div>
									
							</div>
							<div id="v_bbs_content">
								<span>내용 : </span><br/>
								<span>${vo.content }</span>
							</div>
							<span>댓글 : ${vo.writer}</span><br/>
							
						</div>
					</c:if>
					
					<c:if test="${vo.status eq '6' }">
						<div class="v_bbs">
							<div id="v_bbs_title">
								<div id="v_bbs_title_area">
								<p>회사명 : &nbsp;&nbsp; ${vo.writer }</p>
									<p>제목 :&nbsp;${vo.subject }</p>
									<div id="v_bbs_content">
										<p>내용 : ${vo.content }</p>
									</div>
									<p>작성날짜 :&nbsp;&nbsp;<c:if test="${vo.write_date ne null }">${fn:substring(vo.write_date, 0, 11) }&nbsp;&nbsp;</c:if></p>
								</div>
							</div>
						</div>
					</c:if>
				
				
				<c:forEach var="cvo" items="${vo.c_list }" varStatus="st">
					<span>${cvo.writer}</span>
					<span>${cvo.content }</span>
					<c:if test="${cvo.write_date ne null }">
						${fn:substring(cvo.write_date, 0, 16) }
					</c:if>
					<br/>
				</c:forEach>
				</div>
				</div>
				<div id="coment_write_area" >
					<form action="/ansWrite" method="POST" name="ff">
						<c:if test="${vo.status ne '6' }">
							
						<div style="text-align: center; id="coment_btn_area" >
							
							<div class = "card-body" >
								<textarea rows="10%" cols="85%" name="content"  id="content" placeholder="QNA 답변 칸"></textarea>
							</div>
							<input type="hidden" name="bnmae" value=${vo.bname }>
							<input type="hidden" name="b_idx" value=${vo.b_idx }>
							<input type="hidden" name="page" value=${page }>
							<input type="hidden" name="writer" value="${vo.writer}">
							<input type="hidden" name="admin" value="admin">
							<input class="btn btn-primary" type="submit" value="댓글달기" id="coment_btn">
							<input class="btn btn-primary" type="button" value="답변완료" onclick="send('${vo.b_idx }')"/>
						</div>
						</c:if>
						
					</form>
				</div>
				<div id="coment_area">
					<div id="c_writer_area">
						<span>${cvo.writer}</span>
					</div>
					<div id="c_content_area">
						<span>${cvo.content }</span>
					</div>
					<div id="c_write_date_area">
						<span>
							<c:if test="${cvo.write_date ne null }">
								${fn:substring(cvo.write_date, 0, 16) }
							</c:if>
						</span>
					</div>
				</div>
			</div>
	</div>
				
			</div>
		</div>
		
	</div>
                  
                                

                                    
                                
                                
                            </div>
                            
                       
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
                    
   
            <!-- End of Main Content -->

            <!-- Footer -->
           
            <!-- End of Footer -->

        <!-- End of Content Wrapper -->


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
    	function send(idx){
    		$.ajax({
    			url: "a_qnaSuccess",
    			data: {"b_idx":idx},
    			type:"post",
    			dataType:"json",
    		}).done(function(data){
    			if(data.result == 1){
    				alert("답변완료");
    				location.href = "a_QNA?status=4";
    			}else{
    				alert("답변실패");
    				location.href = "a_QNA?status=5";
    			}
    		}).fail(function(err){
    			
    		});
    		/*document.ff.action = "a_qnaSuccess";
    		document.ff.submit();*/
    	}
    </script>