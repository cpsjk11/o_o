<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap');
	
	p{
		font-family: 'Noto Sans KR','Roboto', sans-serif;
	}
	
	#top_text_area p {
		font-size: 1.2em;
		font-weight: 500;
	}
	#mid_text_area p{
		font-size: 1em;
		font-weight: 500;
		color: #151770c;
	}
		
	body{
		margin: 0 auto;
		padding: 0 auto;
	}
	#wrap{
		text-align: center;
		margin: 17em auto;
		width: 100%;
		height: 100%;
	}
	#top_img img{
		width: 10em;
	}
</style>
</head>
<body>
	<div id="wrap">
		<div id="top_img">
			<img alt="" src="resources/img/error.png">
		</div>
		<div id="top_text_area">
			<p>죄송합니다. <br/>현재 페이지를 찾을 수 없습니다.</p>
		</div>
		<div id="mid_text_area">
			<p>존재하지지 않는 주소를 입력하셨거나</p>
			<p>요청하신 페이지의 주소가 변경,삭제되어 찾을 수 없습니다.</p>
			<p>궁금한 점이 있으시면 언제든 고객센터의 문의게시판을 통해 문의주시기 바랍니다.</p>
		</div>
		<div id="btn_area">
			<a href="/">메인으로</a>
		</div>
		
	</div>
</body>
</html>