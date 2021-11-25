<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<%@ page import="java.util.*" %>
<%@ page import="com.company.model.AdminVO" %>
<%
	AdminVO admin = (AdminVO) request.getAttribute("admin");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title> 북스크린 | 영화 예매, 정보 검색, 다운로드까지 한 곳에서 </title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Nanum+Gothic&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/admin.css">
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/main.css">
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/ban.css">
    <link rel="stylesheet" href="./css/form.css">
	<script src="https://code.jquery.com/jquery-latest.js"></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<style>
	.tit { padding: 30px 30px; text-align:center; }
	table { display:table; border-collapse:collapse; }
	tr { display:table-row; }
	th, td { display:table-cell; }
	.tb { width:600px; margin:20px auto; }
	.tb th, .tb td { width:300px; line-height:36px; border-bottom:1px solid #333; }
	.tb th { border-top:2px solid #333; background:#ffd35e; }
	.tb tbody tr:nth-child(2n) td { background:#fff6de; }
	.btn_wrap { width:220px; margin:20px auto; }
	.btn_wrap .in_btn { display:block; width:80px; margin:15px; background-color:#333; color:#fff; 
	text-align:center; border:0; outline:0; float:left; line-height:38px; }
	.btn_wrap .in_btn:hover { background-color:deeppink; }
	</style>
</head>
<body>
<div class="wrap">
<%@ include file="admin_header.jsp" %>
<section class="content">
<h2 class="tit">관리자 회원 정보 수정</h2>
<form action="EditAdminCtrl" method="post" id="frm" name="frm">
	<table class="tb">
		<tbody>
			<tr>
				<th class="col_hd">
					<label for="uid">아이디</label>
				</th>
				<td class="col_data">
					<input type="text" id="uid" name="uid" class="in_data" value="<%=admin.getUserid() %>" readonly required />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="upw" >비밀번호</label>
				</th>
				<td class="col_data">
					<input type="password" id="upw" name="upw" class="in_data" value="<%=admin.getPasswd() %>" readonly />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="uname">회원명</label>
				</th>
				<td class="col_data">
					<input type="text" id="uname" name="uname" class="in_data" value="<%=admin.getName() %>" />
				</td>
			</tr>
			<tr>
				<th class="col_hd">
					<label for="ubirth">출생년도</label>
				</th>
				<td class="col_data">
					<input type="text" id="ubirth" name="ubirth" class="in_data" value="<%=admin.getBirthyear() %>"/>
				</td>
			</tr>
		</tbody>
	</table>
    <hr />
	<div class="btn_wrap">	
		<button type="submit" class="in_btn" onclick="">수정</button>
		<button type="reset" class="in_btn" onclick="">취소</button>
	</div>	
</form>
 <script>
 		document.getElementById("uyesno").addEventListener("click", function(){
 			if(this.value=="yes") {
 				this.value = "no";
 				return false;
 			} else {
 				this.value = "yes";
 			}
 		});
 </script>	
 </section>
 <%@ include file="footer.jsp" %>
</div>
</body>
</html>