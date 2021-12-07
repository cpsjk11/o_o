<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>관리자 페이지 메뉴</title>

    <!-- Custom fonts for this template-->
    <link href="../resources/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">
	<style >
		.str{
			margin: 10px auto;
		}
	</style>
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
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow" style="background-color: #4e73df">
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

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">관리자 페이지</h1>
                        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> 다른 관리자 호출</a>
                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                총 회원수</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${userNum}명</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                기업 회원수</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${companyNum }명</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-info shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">수강신청률
                                            </div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                                                </div>
                                                <div class="col">
                                                    <div class="progress progress-sm mr-2">
                                                        <div class="progress-bar bg-info" role="progressbar"
                                                            style="width: 50%" aria-valuenow="50" aria-valuemin="0"
                                                            aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                최근 추가된 질문</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${searchNum }개</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-comments fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Content Row -->

                    <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-8 col-lg-7">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">회원가입수 현황</h6>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                            <div class="dropdown-header">Dropdown Header:</div>
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="myAreaChart">
                                        	
                                        </canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
						
						<input id="x" type="hidden" value=""/>
						<input id="y" type="hidden" value="${y}"/>
						
                        <!-- Pie Chart -->
                        <div class="col-xl-4 col-lg-5">
	                        <div
	                          class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
	                         <h6 class="m-0 font-weight-bold text-primary">추천학원 저장</h6>
	                        </div>
	                        <div class="card-body" style="background-color: #fff">
	                        	<h5 class="m-0 font-weight-bold" style="color: #4f4f4f; text-align: center; margin-bottom: 5px;">추천학원 저장</h5>
	                        	<form action="admin" method="post" name="addform">
		                        	<input type="text" class="form-control form-control-user str" id="rank" name="r_rank" style="width: 260px;" placeholder="등급">
									<input type="text" class="form-control form-control-user str" id="Id" name="srchTrprId" style="width: 260px;" placeholder="과정 아이디">
									<input type="text" class="form-control form-control-user str" id="Degr" name="srchTrprDegr" style="width: 260px;" placeholder="과정 회차">
									<input type="text" class="form-control form-control-user str" id="addr" name="addr" style="width: 260px;" placeholder="주소">
									<input type="text" class="form-control form-control-user str" id="title" name="title" style="width: 260px;" placeholder="제목">
									<input type="text" class="form-control form-control-user str" id="sub" name="subject" style="width: 260px;" placeholder="회사명">
								</form>
								<a href="javascript:insertSend()" class="btn btn-primary btn-user btn-block str" style="width: 260px;">
                                   저장
                                </a>
	                        </div>
                   		</div>

                    <!-- Content Row -->
                    <div class="container-fluid">

                       <div class="card-header py-3" style="width: 100%;">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">추천학원 목록</h6>
                                    
                                </div>
                                <!-- Card Body -->
                                <div class="card-body" style="margin: auto;">
                                    <table style="width: 100%;">
                                    	<thead>                             
                                    		<tr>
                                    			<th>회사명</th>
                                    			<th>주소</th>
                                    			<th>제목</th>
                                    			<th>버튼</th>
                                    		</tr>
                                    	</thead>
                                    	<tbody id="ta">
                                    	    <form id="ExcelForm" name="ExcelForm">
												<!-- 엑셀파일로 다운로드 받을 날짜를 입력받았다고 가정해보자 ! -->
												<input type="hidden" name="Excel" id="resultType" value="2" /> 
											</form>
											<button onclick="javascript:poiExcel('2')">추천학원 다운</button>
											<button onclick="javascript:poiExcel('1')">일반회원정보 다운</button>
											<button onclick="javascript:poiExcel('3')">기업회원 정보 다운</button>
                                    		<c:forEach var="vo" items="${company}" varStatus="st">
	                                    		<tr style="cursor: pointer; ">
	                                    			<td class="hand" onclick="viewdata('${vo.srchTrprId}')">${vo.subject}</td>
	                                    			<td class="hand" onclick="viewdata('${vo.srchTrprId}')">${vo.addr}</td>
	                                    			<td class="hand" onclick="viewdata('${vo.srchTrprId}')">${vo.title}</td>
	                                    			<td>
	                                    					<input type="hidden" id="id${vo.srchTrprId}" value="${vo.srchTrprId}"/>
	                                    					<a href="javascript:delSend('${vo.srchTrprId}')" class="btn btn-danger btn-circle">
                                        						<i class="fas fa-trash"></i>
                                    						</a>
	                                    			</td>
	                                    		<tr/>
	                                    		<tr>
	                                    			<td style="display: none;" id="${vo.srchTrprId}" colspan="4">
	                                    				<h6>수정하기</h6>
	                                    				<form action="updateCompany" method="post" name="updateform">
															<%-- <select id="r_rank${vo.srchTrprId}" name="r_rank">
																<option value="1">1등급</option>
																<option value="2">2등급</option>
																<option value="3">3등급</option>
																<option value="4">4등급</option>
																<option value="5">5등급</option>
																<option value="6">6등급</option>
																<option value="7">7등급</option>
																<option value="8">8등급</option>
																<option value="9">9등급</option>
																<option value="10">10등급</option>
															</select> --%>
															<input type="hidden" id="r_rank${vo.srchTrprId}" name="r_rank">
															<button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
					                                            <span class="Class">등급</span>
					                                        </button>
															<div class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" style="">
					                                            <a class="dropdown-item" href="javascript:push('1')">1등급</a>
					                                            <a class="dropdown-item" href="javascript:push('2')">2등급</a>
					                                            <a class="dropdown-item" href="javascript:push('3')">3등급</a>
					                                            <a class="dropdown-item" href="javascript:push('4')">4등급</a>
					                                            <a class="dropdown-item" href="javascript:push('5')">5등급</a>
					                                            <a class="dropdown-item" href="javascript:push('6')">6등급</a>
					                                            <a class="dropdown-item" href="javascript:push('7')">7등급</a>
					                                            <a class="dropdown-item" href="javascript:push('8')">8등급</a>
					                                            <a class="dropdown-item" href="javascript:push('9')">9등급</a>
					                                            <a class="dropdown-item" href="javascript:push('10')">10등급</a>
					                                         </div>
															<div style="display: inline;">
																<input type="text" name="addr" class="form-control form-control-user str" id="addrs${vo.srchTrprId}"style="width: 260px;display: inline-block; mar" placeholder="주소"/>
																<input type="hidden" class="form-control form-control-user str" id="srchTrprId${vo.srchTrprId}" style="width: 260px;display: inline-block;" name="srchTrprId" value="${vo.srchTrprId}" />
																<input type="text" class="form-control form-control-user str" id="srchTrprDegr${vo.srchTrprId}" style="width: 260px;display: inline-block;" name="srchTrprDegr" placeholder="과정회차">
																<input type="text" class="form-control form-control-user str" id="subject${vo.srchTrprId}" style="width: 260px;display: inline-block;" name="subject" placeholder="회사이름">
																<a class="btn btn-success btn-icon-split" style="width: 7%; height: 38px; line-height: 38px; margin-left: 50px;" href="javascript:updateSend('${vo.srchTrprId}')">수정하기</a>
															</div>
															
														</form>
	                                    				
	                                    			</td>
	                                    		</tr>
                                    		</c:forEach>
                                    	</tbody>
                                    </table>
                                </div>
                            </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2021</span>
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
    <script src="../resources/js/jquery.min.js"></script>
    <script src="../resources/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../resources/js/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../resources/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../resources/js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../resources/js/chart-area-demo.js"></script>
    <script src="../resources/js/chart-pie-demo.js"></script>
	<script>
	
	function poiExcel(num) {
		
		if(num == 1)
			$("#resultType").val(num);
		if(num == 3)
			$("#resultType").val(num);
		
		var formObj = $('#ExcelForm');
		formObj.attr('action', '/poiExcel');
		formObj.attr('method', 'post');
		formObj.submit();
		
	}
	
		var r_rank = null;
	
		function insertSend(){

			if($("#rank").val().trim().length < 1){
				alert("안쓰면 안되죠 그쵸?? 잘해요..");
				$("#rank").val("");
				$("#rank").focus();
				return;
			}
			if($("#Id").val().trim().length < 1){
				alert("안쓰면 안되죠 그쵸?? 잘해요..");
				$("#Id").val("");
				$("#Id").focus();
				return;
			}
			if($("#Degr").val().trim().length < 1){
				alert("안쓰면 안되죠 그쵸?? 잘해요..");
				$("#Degr").val("");
				$("#Degr").focus();
				return;
			}
			if($("#addr").val().trim().length < 1){
				alert("안쓰면 안되죠 그쵸?? 잘해요..");
				$("#addr").val("");
				$("#addr").focus();
				return;
			}
			if($("#title").val().trim().length < 1){
				alert("안쓰면 안되죠 그쵸?? 잘해요..");
				$("#title").val("");
				$("#title").focus();
				return;
			}
			if($("#sub").val().trim().length < 1){
				alert("안쓰면 안되죠 그쵸?? 잘해요..");
				$("#sub").val("");
				$("#sub").focus();
				return;
			}
			
			document.addform.submit();
		}
		function delSend(ss){
			
			if (!confirm("삭제를 확인합니다.")) {
		        // 취소(아니오) 버튼 클릭 시 이벤트
		        return;
		    }
			
			var id = $("#id"+ss).val();
			var param = "id="+encodeURIComponent(id);
						
			$.ajax({
				url:"a_del",
				data: param,
				type:"post",
				dataType:"json",
			}).done(function(data){
				if(data.value == 1){
					//수정의 성공했을때!!
					alert("삭제완료");
					location.href="a_index";
				}else
					alert("삭제실패");
			}).fail(function(err){
				alert("오류 이한영씨가 고쳐주셈");
			});
		}
		function viewdata(id){
			$("#"+id).slideToggle(400);
		}
		
		function push(s){
			r_rank = s;
			$(".Class").text(s+"등급");
		}
		
		function updateSend(ids){
			var addr = $("#addrs"+ids).val();
			var srchTrprId = $("#srchTrprId"+ids).val();
			var srchTrprDegr = $("#srchTrprDegr"+ids).val();
			var subject = $("#subject"+ids).val();
			
			if(r_rank.trim().length < 1 && addr.trim().length < 1 && srchTrprId.trim().length < 1 && srchTrprDegr.trim().length < 1){
				alert("하나라도 입력해줘야즁 ㅡ,,ㅡ");
				return;
			}
			
			var param = "r_rank="+encodeURIComponent(r_rank)+"&addr="+encodeURIComponent(addr)+"&srchTrprId="+encodeURIComponent(srchTrprId)+
						"&srchTrprDegr="+encodeURIComponent(srchTrprDegr)+"&subject="+encodeURIComponent(subject);
			$.ajax({
				url:"updateCompany",
				data: param,
				type:"post",
				dataType:"json",
			}).done(function(data){
				if(data.value == 1){
					//수정의 성공했을때!!
					alert("수정완료");
					location.href="a_index";
				}else
					alert("수정실패");
			}).fail(function(err){
				alert("오류 이한영씨가 고쳐주셈");
			});
			
		}
		
		function number_format(number, decimals, dec_point, thousands_sep) {
			  // *     example: number_format(1234.56, 2, ',', ' ');
			  // *     return: '1 234,56'
			  number = (number + '').replace(',', '').replace(' ', '');
			  var n = !isFinite(+number) ? 0 : +number,
			    prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
			    sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
			    dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
			    s = '',
			    toFixedFix = function(n, prec) {
			      var k = Math.pow(10, prec);
			      return '' + Math.round(n * k) / k;
			    };
			  // Fix for IE parseFloat(0.55).toFixed(0) = 0;
			  s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
			  if (s[0].length > 3) {
			    s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
			  }
			  if ((s[1] || '').length < prec) {
			    s[1] = s[1] || '';
			    s[1] += new Array(prec - s[1].length + 1).join('0');
			  }
			  return s.join(dec);
			}

			// Area Chart Example
			var ctx = document.getElementById("myAreaChart");
			var myLineChart = new Chart(ctx, {
				
			  type: 'line',
			  data: { // x축
			    labels:${ychart},
			    datasets: [{
			      label: "일반회원", 
			      lineTension: 0.3,
			      backgroundColor: "rgba(78, 115, 223, 0.05)",
			      borderColor: "rgba(78, 115, 223, 1)",
			      pointRadius: 3,
			      pointBackgroundColor: "rgba(78, 115, 223, 1)",
			      pointBorderColor: "rgba(78, 115, 223, 1)",
			      pointHoverRadius: 3,
			      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
			      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
			      pointHitRadius: 10,
			      pointBorderWidth: 2,
			      data:${ux},
			    },{
				      label: "기업회원", 
				      lineTension: 0.3,
				      backgroundColor: "rgba(199, 72, 223, 0.05)",
				      borderColor: "rgba(199, 72, 223, 1)",
				      pointRadius: 3,
				      pointBackgroundColor: "rgba(199, 72, 223, 1)",
				      pointBorderColor: "rgba(199, 72, 223, 1)",
				      pointHoverRadius: 3,
				      pointHoverBackgroundColor: "rgba(199, 72, 223, 1)",
				      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
				      pointHitRadius: 10,
				      pointBorderWidth: 2,
				      data:${cx},
			    }]
			    },
				
			  options: {
			    maintainAspectRatio: false,
			    layout: {
			      padding: {
			        left: 10,
			        right: 25,
			        top: 25,
			        bottom: 0
			      }
			    },
			    scales: {
			      xAxes: [{
			        time: {
			          unit: 'date'
			        },
			        gridLines: {
			          display: false,
			          drawBorder: false
			        },
			        ticks: {
			          maxTicksLimit: 7
			        }
			      }],
			      yAxes: [{ // y축
			        ticks: {
			          maxTicksLimit: 5,
			          padding: 10,
			          // Include a dollar sign in the ticks
			          callback: function(value, index, values) {
			            return value;
			          }
			        },
			        gridLines: {
			          color: "rgb(234, 236, 244)",
			          zeroLineColor: "rgb(234, 236, 244)",
			          drawBorder: false,
			          borderDash: [2],
			          zeroLineBorderDash: [2]
			        }
			      }],
			    },
			    legend: {
			      display: false
			    },
			    tooltips: { // 마우스 호버 역할
			      backgroundColor: "rgb(255,255,255)",
			      bodyFontColor: "#858796",
			      titleMarginBottom: 10,
			      titleFontColor: '#6e707e',
			      titleFontSize: 14,
			      borderColor: '#dddfeb',
			      borderWidth: 1,
			      xPadding: 15,
			      yPadding: 15,
			      displayColors: false,
			      intersect: false,
			      mode: 'index',
			      caretPadding: 10,
			      callbacks: {
			        label: function(tooltipItem, chart) {
			          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
			          return datasetLabel + number_format(tooltipItem.yLabel)  + '명' ;
			        }
			      }
			    }
			  }
			});
		
	</script>
</body>

</html>