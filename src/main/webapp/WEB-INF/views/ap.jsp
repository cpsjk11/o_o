<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="admin" name="ff">
			<input type="text" name="r_rank" placeholder="순위">
			<input type="text" name="srchTrprId" placeholder="과정아이디" >
			<input type="text" name="srchTrprDegr" placeholder="과정횟차">
			<input type="text" name="addr"  placeholder="주소" >
			<input type="text" name="title" placeholder="제목" >
			<input type="text" name="subject" placeholder="회사이름">
			<button type="button" onclick="insertSend(this.form)">보내기</button>
		</form>
		<form action="updateCompany" method="post">
			<select id="class" name="r_rank">
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
			</select>
			<input name="addr" placeholder="주소"/>
			<input type="text" name="srchTrprId" placeholder="과정아이디" >
			<input type="text" name="srchTrprDegr" placeholder="과정횟차">
			<input type="text" name="subject" placeholder="회사이름">
			<button type="button" onclick="updateSend(this.form)">수정하기</button>
		</form>
		<script>
			function updateSend(frm){
				frm.submit();
			}
			function insertSend(frm){
				frm.submit();
			}
		</script>
	</div>
</body>
</html>