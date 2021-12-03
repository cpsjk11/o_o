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
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 12, 2019</div>
                                        <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 7, 2019</div>
                                        $290.29 has been deposited into your account!
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 2, 2019</div>
                                        Spending Alert: We've noticed unusually high spending for your account.
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                            </div>
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                            problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler · 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_2.svg"
                                            alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">I have the photos that you ordered last month, how
                                            would you like them sent to you?</div>
                                        <div class="small text-gray-500">Jae Chun · 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_3.svg"
                                            alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Last month's report looks great, I am very happy with
                                            the progress so far, keep up the good work!</div>
                                        <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                                            told me that people say this to all dogs, even if they aren't good...</div>
                                        <div class="small text-gray-500">Chicken the Dog · 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                                <img class="img-profile rounded-circle"
                                    src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <c:if test="${member eq '0' }">
                    <h1 class="h3 mb-2 text-gray-800">일반회원</h1>
                    <p class="mb-4"><a target="_blank"
                            href="javascript:void(0)">일반회원 목록입니다.</a></p>
                    <div class="card shadow mb-4">
                        <div class="card-header py-3" style="display: inline-block;">
                            <h6 class="m-0 font-weight-bold text-primary">일반 유저</h6>
                    </c:if>
					<!-- Page Heading -->
                    <c:if test="${member eq '1' }">
                    <h1 class="h3 mb-2 text-gray-800">기업회원</h1>
                    <p class="mb-4"><a target="_blank"
                            href="javascript:void(0)">기업회원 목록입니다.</a></p>
                    <div class="card shadow mb-4">
                        <div class="card-header py-3" style="display: inline-block;">
                            <h6 class="m-0 font-weight-bold text-primary">기업 유저</h6>
                    </c:if>
                    <!-- DataTales Example -->
                    		<div class="row">
                    		<div class="col-sm-12 col-md-6">
                    		<div class="dataTables_length" id="dataTable_length">
                    		<form action="a_user" method="post">
                    			<select name="search" id="search"  style="width: 120px; float:left; margin-right: 10px; margin-top:2px; height: 100%;" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm">
                            		<option  value="null" style="display: none;"></option>
		                            <option value="id">ID검색</option>
		                            <option value="name">이름검색</option>
		                            <option value="email">이메일검색</option>
		                            <option value="addr">주소검색</option>
		                            <option value="stat">상태검색</option>
		                            <option value="u_date">가입날짜검색</option>
                            	</select>
                            	<input type="hidden" name="member" value="${member}">
                    			<input type="text" id="value" name="value" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" style="display: inline-block; width: 220px; height: 100%; background-color: #fff;" aria-describedby="basic-addon2">
                    			<button class="btn btn-primary" style="height: 34px; text-align: center; line-height: 100%;" type="button" onclick="send(this.form)">GO</button>
                            </form>
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
                                    <colgroup>
                                    	<col width="345px">
                                    	<col width="120px">
                                    	<col width="250px">
                                    	<col width="*">
                                    	<col width="120px">
                                    	<col width="120px">
                                    	<col width="80px">
                                    </colgroup>
                                        <tr>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>이메일</th>
                                            <th>주소</th>
                                            <th>회원상태</th>
                                            <th>가입날짜</th>
                                            <!-- <th>ip</th> -->
                                            <th>삭제</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                    	<c:forEach var="uvo" items="${all}" varStatus="st">
	                                        <tr>
	                                            <td>${uvo.id}</td>
	                                            <td>${uvo.name}</td>
	                                            <td>${uvo.email}</td>
	                                            <td>${uvo.addr}</td>
	                                            <c:if test="${uvo.stat eq 0 || uvo.stat eq 1}">
	                                            	<td>회원</td>
	                                            </c:if>
	                                            <c:if test="${uvo.stat eq -1 || uvo.stat eq -2}">
	                                            	<td>탈퇴회원</td>
	                                            </c:if>
	                                            <c:if test="${uvo.u_date ne null }">
	                                            	<td>${fn:substring(uvo.u_date,0,11)}</td>
	                                            </c:if>
	                                            <c:if test="${uvo.u_date eq null }">
	                                            	<td></td>
	                                            </c:if>
	                                            <%-- <td>${uvo.ip}</td> --%>
	                                            <c:if test="${uvo.stat eq -1 || uvo.stat eq -2}">
	                                            	<td><button class="btn btn-primary" style="height: 34px; width:100%; text-align: center; line-height: 100%; font-size: 12px; margin: auto;" disabled="disabled" type="button">삭제</button></td>
	                                            </c:if>
	                                            <c:if test="${uvo.stat ne -1 && uvo.stat ne -2}">
		                                            <td>
		                                        		<button class="btn btn-primary" style="height: 34px; width:100%; text-align: center; line-height: 100%; font-size: 12px; margin: auto;" type="button" id="del${uvo.id}" value="${uvo.id}" onclick="delSend('${uvo.id}')">삭제</button>
		                                        	</td>
	                                            </c:if>
	                                            	
	                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                   
                                       

                                    
                                </table>
                                
                            </div>
                            
                        </div>
                        ${page}
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
	
	
	
	function delSend(ss){
		
		var id = $("#del"+ss).val();
		var stat = ${member};
		alert(stat);
		if (!confirm("삭제를 확인합니다.")) {
	        // 취소(아니오) 버튼 클릭 시 이벤트
	        return;
	    } else {
			$.ajax({
				url:"a_del",
				data: {"id":id,"stat":stat},
				type:"post",
				dataType:"json",
			}).done(function(data){
				if(data.value == 1){
					//수정의 성공했을때!!
					alert("삭제완료");
					location.href="a_user?member="+${member};
				}else
					alert("삭제실패");
			}).fail(function(err){
				alert("오류 이한영씨가 고쳐주셈");
			});
	    }
					
	}
		
		$(function(){
			$("#listNum").bind("input",function(){
				document.ff.submit();
			});
			
		});
		function send(frm){
			var result = $("#search").val();
			var value = $("#value").val();
			var id = $("#id").val();
			var stat = ${member};
			
			
			if(result.trim().length < 1 && result != 'null'){
				alert("입력해유~");
				return;
			}
			if(value.trim().length < 1 && result != 'null'){
				alert("입력해유~");
				return;
			}
			if(result == 'stat'){
				if(value == '회원' || value == '탈퇴' || value == '탈퇴회원'){
					
					if(stat == 0 && value == '탈퇴' || value == '탈퇴회원')
						value = "-1";
					
					if(stat == 0 && value == '회원')
						value = "0";
					
					if(stat == 1 && value == '탈퇴' || value == '탈퇴회원')
						value = "-2";
					
						
					if(stat == 1 && value == '회원')
						value = "1";
					
					
				}else{
					alert("잘못입력했습니다");
					return;
				}
			}
			alert(value);
			$("#value").val(value);
			
			frm.submit();
			
		}
	</script>
</body>

</html>