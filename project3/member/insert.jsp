<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<title>회원 추가</title>
<%@ include file="../include/head.jsp" %>
</head>
<body>
<div class="wrap">
	<%@ include file="../include/menu.jsp" %>
	<div class="content">
		<form name="bdto" action="${path}/member/insert.do" method="post">
			<table class="table">
				<tbody>
					<tr>
						<th><label for="userid">아이디</label></th>
						<td><input type="text" name="userid" id="userid" size="80" placeholder="아이디 입력"></td>
					</tr>
					<tr>
						<th><label for="passwd">비밀번호</label></th>
						<td><input type="text" name="passwd" id="passwd" size="80" placeholder="비밀번호 입력"></td>
					</tr>
					<tr>
						<th><label for="name">이름</label></th>
						<td><input type="text" name="name" id="name" size="80" placeholder="이름 입력"></td>
					</tr>
					<tr>
						<th><label for="email">이메일</label></th>
						<td><input type="text" name="email" id="email" placeholder="이메일 입력"></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="회원 추가">
							<input type="reset" value="취소">
						</td>
					</tr>
					
				</tbody>
			</table>
		</form> 
	</div>
	<%@ include file="../include/footer.jsp" %>
</div>
</body>
</html>