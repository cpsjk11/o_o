<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
	<style>
.tb_regist {
  border-top:2px solid #555;
  border-bottom:2px solid #555;
  width: 100%;
  margin: 0 auto;
  padding: 2px;
  border-spacing: 0;
  border-collapse: collapse;}
.tb_regist th, .tb_regist td {
  border-bottom:1px solid #ccc;
  font-family: 'Nanum Square', 'Nanum Gothic', sans-serif;
  font-size:17px !important;
}
.tb_regist th {padding:17px 15px 17px 20px; font-weight:bold;}
.tb_regist td {padding:10px 0px;}
.tb_regist td img {vertical-align: middle;}
.tb_regist input {
  border:1px solid #e5e5e5; display:inline-block;
  font-family: 'Nanum Square', 'Nanum Gothic', sans-serif;
  font-size:16px !important; vertical-align: middle;
  width:97%; padding:10px 5px;
}
.tb_regist input[type=checkbox],
.tb_regist input[type=radio] {width:20px; height:20px;vertical-align: middle;}
.tb_regist label {line-height:20px !important;}
.tb_regist select {
  border:1px solid #e5e5e5; padding:15px 5px; width:100%;
  font-family: 'Nanum Square', 'Nanum Gothic', sans-serif;
  font-size:16px !important; line-height:25px !important;
}
.hidden{
    text-align: center;
}
tr{
    margin: 5px 0;

}
table{
    width: 100%;
    height: 100%;
}
.j-conts-wrap{
    margin: 100px auto;
    height: 50%;
    
    max-width: 50%;
    min-width: 713px;
    min-height: 50%;
}
input{
    width: 100%;
}
.clickbtn{
    margin: 40px auto;
    display: inline-block;
    width: 100px;
    height: 40px;
    text-align: center;
    line-height: 40px;
    border-radius: 15px;
    background-color: rgb(142, 122, 255);
    text-decoration: none;
}
.btn_area{
    width: 100%;
    height: 100%;
    color: whitesmoke;
    font-weight: 400;
   
   
}
.wi{
    text-align: center;
}
.compant-width{
	width: 150px;
}
.no-drop{
	cursor : no-drop;
}

</style>	
</head>
<body>
	<div class="j-conts-wrap">
	<h2 class="hidden">?????? ????????????</h2>
	<form action="enrolmentInsert" method="post">
	<input type="hidden" name="e_email" value="${email}">
	<input type="hidden" name="e_uid" value="${id}">
	<input type="hidden" name="e_trdegr" value="${TRPR_DEGR}">
	<input type="hidden" name="imageCode" value="  ${imageCode}">
    <table class="tbl-fix tb_regist" cellspacing="0" summary="????????? ??????????????? ?????? ????????? ???????????????.">
		<colgroup>
			<col width="15%">
			<col width="28%">
			<col width="15%">
			<col width="*">
		</colgroup>
		<tbody>
			<tr>
				<th><label for="e_company">?????????</label></th>
				<td class="compant-width">
                    <input type="text" id="e_company" name="e_company" value="${company}" class="no-drop" readonly="readonly">
				</td>
				<th><label for="e_trid">?????????????????????</label></th>
				<td>
                    <input type="text" id="e_trid" class="no-drop" name="e_trid" value="${tr_id}" readonly="readonly">
				</td>
			</tr>
			<tr>
				<th>?????????</th>
				<td colspan="3">
                    <input type="text" id="e_trname" class="no-drop" name="e_trname" value="${TRPR_NM}" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<th><label for="e_uname">??????</label></th>
				<td>
					<input type="text" name="e_uname" id="e_uname" value="${name}" class="inp-b" style="ime-mode:active;" maxlength="50">
				</td>
				<th><label for="e_ubday">????????????</label></th>
				<td >
                    <input type="text" name="e_ubday" id="e_ubday" value="" class="no-inp-b hand center"   maxlength="8"  autocomplete="off">
				</td>
			</tr>
			<tr>
				<th><label for="stu_sex_M">??????</label></th>
				<td>
                    <label for="e_ugen">???</label>
                    <input type="radio" id="e_ugen" name="e_ugen" value="??????"/>
                    <label for="gende">???</label>
                    <input type="radio" id="e_ugen" name="e_ugen" value="??????"/>
				</td>
				<th><label for="e_uphone">?????????</label></th>
				<td>
					<input type="text" id="e_uphone1" value="${fn:substring(phone,0,3) }" oninput="handleOnInput(this)" class="inp-b" style="width:25%; ime-mode:disabled;" maxlength="3" onblur="OnlyNo(this);"> -
					<input type="text" id="e_uphone2" value="${fn:substring(phone,3,7) }" oninput="handleOnInput(this)" class="inp-b" style="width:25%; ime-mode:disabled;" maxlength="4" onblur="OnlyNo(this);"> -
					<input type="text" id="e_uphone3" value="${fn:substring(phone,7,11) }" oninput="handleOnInput(this)" class="inp-b" style="width:25%; ime-mode:disabled;" maxlength="4" onblur="OnlyNo(this);">
					<input type="hidden" name="e_uphone" id="realphone" value=""/>
				</td>
			
					</tbody>
	</table>
    
    
</form>
<div class="wi">
    <a class="clickbtn" href="javascript:send()"><div class="btn_area">????????????</div></a>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
	<script>
		function handleOnInput(e)  {
			  e.value = e.value.replace(/[^0-9]/g , '');
			}
		
		$(function(){

			$("#e_ubday").bind("mousedown",function(){
				$("#e_ubday").datepicker({
					dateFormat: 'yymmdd',
					monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
					monthNames: ['1???','2???','3???','4???','5???','6???','7???','8???','9???','10???','11???','12???'],
					dayNamesMin: ['???','???','???','???','???','???','???'],
					dayNames: ['?????????','?????????','?????????','?????????','?????????','?????????','?????????'],
					showMonthAfterYear:true,
					showOtherMonths: true,
				    changeYear: true,
				    changeMonth:true,
				    gotoCurrent: true,
				    yearRange: '1950:2050',
				    closeText: "Clear",
				    currentText: "??????",
				});
				$('#e_ubday').datepicker('setDate', '-21Y');
			});
		});
		
		function send(){
			
			if($("#e_uname").val().trim().length < 1){
				alert("????????? ??????????????????");
				$("#e_uname").val("");
				$("#e_uname").focus();
				return;
			}
			if($("#e_ubday").val().trim().length < 1){
				alert("??????????????? ??????????????????");
				$("#e_ubday").val("");
				$("#e_ubday").focus();
				return;
			}
			if($("#e_uphone1").val().trim().length < 1){
				alert("??????????????? ??????????????????");
				$("#e_uphone1").val("");
				$("#e_uphone1").focus();
				return;
			}
			if($("#e_uphone2").val().trim().length < 1){
				alert("??????????????? ??????????????????");
				$("#e_uphone2").val("");
				$("#e_uphone2").focus();
				return;
			}
			if($("#e_uphone3").val().trim().length < 1){
				alert("??????????????? ??????????????????");
				$("#e_uphone3").val("");
				$("#e_uphone3").focus();
				return;
			}
			if(!$('input:radio[name=e_ugen]').is(":checked")){
				alert("????????? ??????????????????");
				return;
			}
			var phone = $("#e_uphone1").val()+$("#e_uphone2").val()+$("#e_uphone3").val();
			$("#realphone").val(phone);
			
			if(confirm("???????????? ???????????????????")){
				document.forms[0].submit();
			}
		
		}
	</script>
</body>
</html>