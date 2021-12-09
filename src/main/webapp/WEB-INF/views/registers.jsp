<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
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
    min-width: 700px;
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

</style>	
</head>
<body>
	<div class="j-conts-wrap">

	<h2 class="hidden">국비 수강신청</h2>

    <table class="tbl-fix tb_regist" cellspacing="0" summary="온라인 수강신청을 위한 과정을 선택하세요.">
		<colgroup>
			<col width="13%">
			<col width="*">
			<col width="22%">
			<col width="*">
		</colgroup>
		<tbody>
			<tr>
				<th><label for="tmp_edu_part">회사명</label></th>
				<td>
                    <input type="text" id="" name="" value="">
				</td>
				<th><label for="tmp_edu_class">훈련과정아이디</label></th>
				<td>
                    <input type="text" id="" name="" value="${tr_id}">
				</td>
			</tr>
			<tr>
				<th>과정명</th>
				<td colspan="3">
                    <input type="text" id="name" name="" value=""/>
				</td>
			</tr>
			<tr>
				<th><label for="stu_name">이름</label></th>
				<td>
					<input type="text" name="stu_name" id="stu_name" value="${name}" class="inp-b" style="ime-mode:active;" maxlength="50">
				</td>
				<th><label for="stu_birth">생년월일</label></th>
				<td >
                    <input type="text" name="stu_birth" id="stu_birth" value="${birth}" class="no-inp-b hand center"   maxlength="10" readonly="readonly" autocomplete="off">
				</td>
			</tr>
			<tr>
				<th><label for="stu_sex_M">성별</label></th>
				<td>
                    <label for="gender">남</label>
                    <input type="radio" id="gender" name="gen" value="남"/>
                    <label for="gende">여</label>
                    <input type="radio" id="gende" name="gen" value="여"/>
				</td>
				<th><label for="stu_contacts1_1">연락처</label></th>
				<td>
					<input type="text" name="stu_contacts1_1" id="stu_contacts1_1" value="" class="inp-b" style="width:25%; ime-mode:disabled;" maxlength="4" onblur="OnlyNo(this);"> -
					<input type="text" name="stu_contacts1_2" id="stu_contacts1_2" value="" class="inp-b" style="width:25%; ime-mode:disabled;" maxlength="4" onblur="OnlyNo(this);"> -
					<input type="text" name="stu_contacts1_3" id="stu_contacts1_3" value="" class="inp-b" style="width:25%; ime-mode:disabled;" maxlength="4" onblur="OnlyNo(this);">
				</td>
			
					</tbody>
	</table>
    
    
</form>
<div class="wi">
    <a class="clickbtn" href="javascript:send()"><div class="btn_area">수강신청</div></a>
</div>
</div>
</body>
</html>