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

    <title>SB Admin 2 - Tables</title>

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

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <jsp:include page="a_nav.jsp"/>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

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

                    <!-- Page Heading -->
                    <c:if test="${status eq '5' }">
                    <h1 class="h3 mb-2 text-gray-800">답변을 기다리는 QNA</h1>
                    </c:if>
                    <c:if test="${status eq '4' }">
                    <h1 class="h3 mb-2 text-gray-800">답변 완료 QNA</h1>
                    </c:if>
                    <c:if test="${status eq null }">
                    <h1 class="h3 mb-2 text-gray-800">공지사항 목록</h1>
                    </c:if>
                    <c:if test="${status eq null }">
                    <h1 class="h3 mb-2 text-gray-800"><p class="mb-4"><a target="_blank"href="javascript:void(0)">공지사항</a></p></h1>
                    </c:if>
                    <c:if test="${status eq '6' }">
                    <h1 class="h3 mb-2 text-gray-800"><p class="mb-4"><a target="_blank"href="javascript:void(0)">제휴문의</a></p></h1>
                    </c:if>
                    <c:if test="${status ne null }">
                    <p class="mb-4"><a target="_blank"
                            href="javascript:void(0)">QNA</a></p>
                    </c:if>
                    <div class="card shadow mb-4">
                        <div class="card-header py-3" style="display: inline-block;">
                            
                   
					<!-- Page Heading -->
                    
                    <!-- DataTales Example -->
                    		<div class="row">
                    		<div class="col-sm-12 col-md-6">
                    		<div class="dataTables_length" id="dataTable_length">
                    		</div>
                    		</div>
                    		<div class="col-sm-12 col-md-6">
                            <div id="dataTable_filter" class="dataTables_filter">
	                            <form action="a_user" method="post" name="ff">
		                            <select name="listnum" id="listNum"  style="width: 80px; margin-top:2px; float: right; height: 100%;" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm">
		                            <c:if test="${listnum > 0 }">
		                            <option  value="null" style="display: none;">${listnum }</option>
		                            </c:if>
		                            <c:if test="${listnum < 1 }">
		                            <option value="null">${listnum }</option>
		                            </c:if>
		                            <option value="5">5</option>
		                            <option value="10">10</option>
		                            <option value="25">25</option>
		                            <option value="50">50</option>
		                            <option value="100">100</option>
		                            </select>
		                            <input type="hidden" name="page" id="page" value="${pa }"/>
		                            <input type="hidden" name="member" id="member" value="${member}"/>
		                        </form>
                            </div>
                            
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                    	<c:if test="${status ne '6' }">
                                        <tr>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>제목</th>
                                            <th>작성한 날짜</th>
                                            <!-- <th>ip</th> -->
                                            <th>상태</th>
                                        </tr>
                                        </c:if>
                                        <c:if test="${status eq '6' }">
                                        <tr>
                                            <th>b_idx</th>
                                            <th>회사명</th>
                                            <th>제목</th>
                                            <th>작성한 날짜</th>
                                            <!-- <th>ip</th> -->
                                            <th>담당자 전화번호</th>
                                            <th>담당자 이메일</th>
                                            <th>상세보기</th>
                                        </tr>
                                        </c:if>
                                    </thead>
                                    
                                    <tbody>
                                    	<c:forEach var="uvo" items="${qna}" varStatus="st">
	                                       
	                                        <tr>
	                                            <td>${uvo.b_idx}</td>
	                                            <td>${uvo.writer}</td>
	                                            <td>${uvo.subject}</td>
	                                            <c:if test="${uvo.write_date ne null }">
													<td>${fn:substring(uvo.write_date, 0, 16) }</td>
												</c:if>
												<c:if test="${uvo.write_date eq null }">
													<td></td>
												</c:if>
	                                           
	                                            <c:if test="${uvo.status eq 5}">
		                                            <td>
		                                        		<a href="a_answer?b_idx=${uvo.b_idx}&page=${pa}">답변대기</a>
		                                        	</td>
	                                            </c:if>
	                                            <c:if test="${uvo.status eq 0 && bname eq '공지사항'}">
	                                            	<td>
		                                        		<a href="a_edit?b_idx=${uvo.b_idx}&page=${pa}">수정하기</a>
		                                        	</td>
	                                            </c:if>
	                                             <c:if test="${uvo.status eq 4}">
		                                            <td>
		                                        		답변완료
		                                        	</td>
	                                            </c:if>
	                                             <c:if test="${uvo.status eq 6}">
		                                            <td>
		                                        		${uvo.file_name}
		                                        	</td>
	                                            </c:if>
	                                             <c:if test="${uvo.status eq 6}">
		                                            <td>
		                                        		${uvo.ori_name}
		                                        	</td>
	                                            </c:if>
	                                            <c:if test="${uvo.status eq 6}">
		                                            <td>
		                                        		<a href="a_answer?b_idx=${uvo.b_idx}&page=${pa}&status=${uvo.status}">상세보기</a>
		                                        	</td>
	                                            </c:if>
	                                            	
	                                        </tr>
	                                        
	                                       
	                                        
                                        </c:forEach>
                                    </tbody>
                                   
                                       

                                    
                                </table>
                                
                            </div>
                            
                        </div>
                        ${paging}
                    </div>

                </div>
                <!-- /.container-fluid -->
                    
            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
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
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
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
	
	</script>
</body>

</html>