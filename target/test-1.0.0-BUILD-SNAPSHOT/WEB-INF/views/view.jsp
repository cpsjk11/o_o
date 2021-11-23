<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<span>제목 : ${title}</span><br/>
	<span>주소 : ${addr}</span><br/>
	<span>전화번호 : ${tel}</span><br/>
	<button type="button" onclick="list()">목록</button>
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
	function list() {
		location.href="search";
	}
</script>
</html>