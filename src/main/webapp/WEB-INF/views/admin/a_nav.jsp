<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.text-center{
		text-align: center;
	}
</style>
</head>
<body>
	<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                </div>
                <div class="sidebar-brand-text mx-3">메인페이지</div>
            </a>
			<div class="text-center">
            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="a_index">
                    
                    <span>관리자 페이지</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                세부메뉴
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="a_user?member=1">
                    
                    <span>기업 회원들</span>
                </a>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="a_user?member=0" ">
                    <span>일반 회원들</span>
                </a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                관리 목록
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <li class="nav-item">
                <a class="nav-link collapsed" href="a_QNA?bname=문의게시판">
                    <span>QNA 게시판</span>
                </a>
                <a class="nav-link collapsed" href="a_notice">
                    <span>공지사항</span>
                </a>
            	               
            </li>
            </div>
            <!-- Divider -->

            <!-- Sidebar Message -->

        </ul>
</body>
</html>