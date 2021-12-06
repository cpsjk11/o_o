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
	    border: 0.4px solid #d5d5d5;
	    padding: 1em;
	}
	#v_bbs_b_area{
		margin: 0 auto;
		padding: 2%;
		width: 90%;
	}
	#v_bbs_title{
		width: 100%;
		height: 3em;
		padding-top: 1em;
		margin-bottom: 1em;
		border-bottom: 0.6px solid #efefef; 
	}
	#v_bbs_title span{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
    	font-size: 1.0em;
    	font-weight: 400;
    	color: #151770c;
	}
	#v_bbs_content{
		padding: 1em;
		position: relative;
	}
	#v_bbs_content span{
	    font-family: 'Noto Sans KR','Roboto', sans-serif;
    	font-size: 1.0em;
    	font-weight: 400;
	}
	#v_bbs_writer{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
		font-size: 1em;
		display: inline;
		float: right;
		margin-right: 1em;
		color: #3A2F2F;
	}
	#v_bbs_prop{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
		padding: 1em;
		color: #94969b;
		font-size: 0.9em;
	}
	#v_bbs_date{
		display: inline-block;
		float: right;
		margin-right: 1em;
	}
	#v_bbs_title_area{
		margin-left: 1em;
		display: inline-block;
	}
	
	#coment_write_area{
		vertical-align: middle;
		padding: 1em;
		margin: 0 auto;
		width: 86%;
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
		height: 5em;
		display: flex;
		justify-content: space-between;
	}
	#coment_btn{
		height: 100%;
	}
	#coment_write_area textarea{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
    	font-size: 0.9em;
		height: 100%;
		width: 100%;
		border: 0.6px solid #a39f9f;
		resize: none;
		vertical-align: middle;
	}
	#coment_write_area input[type="button"]{
		height: 107%;
		border: 0.6px solid #c7c2c2;
		vertical-align: middle;
	}
	#coment_area{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
		padding: 1em;
		margin: 0 auto;
		border-bottom: 0.2px solid #eee;
		border-top: 0.2px solid #eee;
		width: 80%;
		margin-bottom: 1em;
	}
	#c_writer_area{
		width: 100%;
		font-size: 0.9em;
		color: #5cb1ca;
	}
	#c_content_area{	
		width: 100%;
		font-size: 1em;
		color: #222;
	}
	#c_write_date_area{	
		width: 100%;
		color: #94969b;
		font-size: 0.9em;
	}
	#noLogin{
		text-align: center;
		vertical-align: middle;
		position: relative;
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
							<div id="v_bbs_title_area">
								<span>제목 :&nbsp;</span>
								<span>${vo.subject }</span>
							</div>
							<div id="v_bbs_writer">
								<span>${vo.writer }</span>
							</div>
						</div>
						<div id="v_bbs_content"><span>${vo.content }</span></div>
						<div id="v_bbs_prop">
							<span>조회수</span>&nbsp;&nbsp;
							<span>좋아요</span>
							<div id="v_bbs_date">
								<span>
									<c:if test="${vo.write_date ne null }">
										${fn:substring(vo.write_date, 0, 16) }
									</c:if>
								</span>
							</div>
						</div>
					</div>
				</div>
				
				<div id="coment_write_area">
					<form action="/ansWrite" method="POST">
						<span>댓글&nbsp;35</span>
						<div id="coment_btn_area">
						<c:if test="${sessionScope.userName ne null}">
							<textarea name="content" id="content" placeholder="내용을 입력해주세요."
								rows="8"></textarea>
							<input type="submit" value="댓글달기" id="coment_btn">
						</c:if>
						<c:if test="${sessionScope.userName eq null}">
							<textarea name="content" id="content" placeholder="로그인 후 입력이 가능합니다."
								rows="8" readonly="readonly" disabled="disabled"></textarea>
						</c:if>
						</div>
						<input type="hidden" name="bnmae" value=${vo.bname }>
						<input type="hidden" name="b_idx" value=${vo.b_idx }>
						<input type="hidden" name="cPage" value=${nowPage }>
					</form>
				</div>
				<c:forEach var="cvo" items="${vo.c_list }" varStatus="st">
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
				</c:forEach>
			</div>
		<jsp:include page="footer.jsp"/>
	</div>
<script type="text/javascript">
	$(function(){
		$("#coment_btn").bind("click",function(){
			if($("#content").val().trim().length < 0){
				$("#content").text("");
				$("#content").focus();
				alert("내용을 입력해주세요.");
				return;
			}
			document.forms[0].submit();
		});
	})
</script>
</body>
</html>