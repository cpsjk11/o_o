<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	.v_bbs{
	    border: 0.7px solid #ababab;
	    padding: 1em;
	}
	#v_bbs_b_area{
		margin: 0 auto;
		padding: 2%;
		width: 90%;
	}
	#v_bbs_title{
		width: 100%;
		height: 10%;
		margin-bottom: 1em;
		border-bottom: 0.6px solid #efefef; 
	}
	#v_bbs_title span{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
    	font-size: 1.0em;
    	font-weight: 400;
    	color: #151770c;
	}
	#v_bbs_content span{
	    font-family: 'Noto Sans KR','Roboto', sans-serif;
    	font-size: 1.0em;
    	font-weight: 400;
    	color: #94969b;
	}
	#coment_write_area{
		vertical-align: middle;
		padding: 1em;
		margin: 0 auto;
		border: 1px solid;
		width: 80%;
		margin-bottom: 2em;
	}
	#coment_write_area span{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
    	font-size: 1.0em;
    	font-weight: 400;
    	color: #94969b;
	}
	#coment_btn_area{
		margin: 0.5em 0 0 0;
		width: 100%;
		height: 10em;
		display: flex;
		justify-content: space-between;
	}
	#coment_write_area textarea{
		height: 100%;
		width: 80%;
		border: 0.6px solid #a39f9f;
		border-radius: 10px;
		vertical-align: middle;
	}
	#coment_write_area input[type="button"]{
		height: 50%;
		border: 0.6px solid #c7c2c2;
		border-radius: 10px;
		vertical-align: middle;
	}
	#coment_area{
		padding: 1em;
		margin: 0 auto;
		border: 1px solid;
		width: 80%;
		margin-bottom: 2em;
	}
	#c_writer_area{
		width: 100%;
		border: 1px solid;
	}
	#c_content_area{	
		width: 100%;
		border: 1px solid;
	}
	#v_bbs_writer{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
		font-size: 1em;
		display: inline;
		float: right;
		color: #3A2F2F;
	}
	#v_bbs #v_bbs_prop,
	#v_bbs #v_bbs_date{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
		font-size: 1em;
		color: #3A2F2F;
	}
</style>
</head>
<body>
	<div id="wrap">
		<jsp:include page="header.jsp"/>
			<div id="bbs_area">
				<jsp:include page="helpCategory.jsp"/>
				<div id="v_bbs_b_area">
					<div class="v_bbs">
						<div id="v_bbs_title">
							<span>제목 :&nbsp;</span>
							<span>${vo.subject }</span>
							<div id="v_bbs_writer">
								<span>${vo.writer }</span>
							</div>
						</div>
						<div id="v_bbs_content"><span>${vo.content }</span></div>
						<div id="v_bbs_prop"><span>조회수</span>&nbsp;&nbsp;<span>좋아요</span></div>
						<div id="v_bbs_date">
							<span>
								<c:if test="${vo.write_date ne null }">
									${fn:substring(vo.write_date, 0, 16) }
								</c:if>
							</span>
						</div>
					</div>
				</div>
				
				<div id="coment_write_area">
					<span>댓글</span><br/><br/>
					<div id="coment_btn_area">
						<textarea name="content" id="content" 
							rows="8"></textarea>
						<input type="button" value="댓글달기">
					</div>
				</div>
				<div id="coment_area">
					<div id="c_writer_area">${vo.writer }</div>
					<div id="c_content_area">${vo.content }</div>
				</div>
			</div>
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>