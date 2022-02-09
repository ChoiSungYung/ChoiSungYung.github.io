<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<%@ include file="../include/head.jsp" %>
</head>
<body>
<div class="wrap">
	<%@ include file="../include/menu2.jsp" %>
	<div class="content">
		<form name="bdto" action="${path}/member/update.do" method="post">
			<table class="table">
				<tbody>
					<tr>
						<th><label for="title">아이디</label></th>
						<td><input type="text" name="userid" id="userid" size="80" placeholder="글 제목 입력" readonly>${data.userid}</td>
					</tr>
					<tr>
						<th><label for="title">이름</label></th>
						<td><input type="text" name="name" id="name" size="80" placeholder="글 제목 입력" readonly>${data.userid}</td>
					</tr>
					<tr>
						<th><label for="title">이메일</label></th>
						<td><input type="text" name="name" id="name" size="80" placeholder="글 제목 입력" readonly>${data.userid}</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="정보수정"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="취소"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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