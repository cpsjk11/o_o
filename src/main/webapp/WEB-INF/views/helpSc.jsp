<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>국삐-${bname }</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="shortcut icon" href="resources/ico/Frame.png">

<%-- css링크구역!! --%>
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/home.css">
<link rel="stylesheet" href="resources/css/foot.css">
<link rel="stylesheet" href="resources/css/helpSc.css">

<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap');
	
	/* paging */
	
	ol.paging {
	    list-style:none;
	}
	
	ol.paging li {
	    float:left;
	    margin-right:2em;
	}
	
	ol.paging li a {
	    display:block;
	    padding:3px 7px;
	    color:#2f313e;
	    font-weight:bold;
	}
	
	ol.paging li a:hover {
	    border-bottom: 4px solid #4270e0;
	    color:black;
	    font-size: 1em;
	    font-weight:bold;
	}
	
	.disable {
	    padding:3px 7px;
	    border:1px solid #ababab;
	    color:#6a6969;
	}
	
	.now {
	   padding:3px 7px;
		border-bottom: 4px solid #4270e0;
	    color:black;
	    font-size: 1em;
	    font-weight:bold;
	}
	#bbs_bot{
		text-align: center;
		margin: 0 auto;
		width: 100%;
	}
	#paging_area{
		display: inline-block;
		margin: 0 auto;
	}
	#menu_area{
		margin: 2em;
		width: 90%;
		display: inline-block;
	}
</style>
</head>
<body>
	<div id="wrap">
		${categoryStyle}
		<jsp:include page="header.jsp"/>
			<div id="bbs_area">
				<jsp:include page="helpCategory.jsp"/>
				<div id="bbs_b_area">
				<c:if test="${bname ne '문의게시판' }">
				<c:forEach var="vo" items="${ar }" varStatus="st">
					<div class="bbs" onclick="javascrip:location.href='/helpScV?b_idx=${vo.b_idx }&cPage=${nowPage}'">
						<div id="bbs_title"><span>${vo.subject }</span></div>
						<div id="bbs_content"><span>${vo.content }</span></div>
						<div id="bbs_writer"><span>${vo.writer }</span></div>
						<div id="bbs_prop"><span>${vo.hit }</span>&nbsp;&nbsp;<span>좋아요</span></div>
						<div id="bbs_date">
							<span>
								<c:if test="${vo.write_date ne null }">
									${fn:substring(vo.write_date, 0, 16) }
								</c:if>
							</span>
						</div>
					</div>
				</c:forEach>
				</c:if>
				<c:if test="${bname eq '문의게시판' }">
				<c:forEach var="vo" items="${ar }" varStatus="st">
					<div class="bbs" onclick="javascrip:location.href='/helpScV?b_idx=${vo.b_idx }&cPage=${nowPage}'">
					<c:if test="${sessionScope.userName.id eq vo.id }">
						<div id="bbs_title"><span>${vo.subject }</span></div>
						<div id="bbs_content"><span>${vo.content }</span></div>
						<div id="bbs_writer"><span>${vo.writer }</span></div>
						<div id="bbs_prop"><span>${vo.hit }</span>&nbsp;&nbsp;<span>좋아요</span></div>
						<div id="bbs_date">
							<span>
								<c:if test="${vo.write_date ne null }">
									${fn:substring(vo.write_date, 0, 16) }
								</c:if>
							</span>
						</div>
					</c:if>
					<c:if test="${sessionScope.userName.id ne vo.id }">
						<div id="noWriter_area">
							<span id="noWriter">문의게시물은 작성자 본인만 볼 수 있습니다.</span>
						</div>
					</c:if>
					</div>
				</c:forEach>
				</c:if>
				</div>
					<div id="bbs_bot">
						<div id="paging_area">${pageCode }</div>
						<c:if test="${userName ne null && bname ne '공지사항'}">
						<c:if test="${bname ne '국삐활용가이드' }">
							<div id="menu_area">
								<a href="/helpWrite?bname=${bname }" id="menu_panel">글쓰기</a>
							</div>	
						</c:if>
						</c:if>
					</div>
			</div>
		<jsp:include page="footer.jsp"/>
	</div>
	
	
</body>
</html>