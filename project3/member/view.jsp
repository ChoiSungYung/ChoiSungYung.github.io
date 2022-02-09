<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<title>회원 상세보기</title>
<%@ include file="../include/head.jsp" %>
</head>
<body>
<div class="wrap">
	<%@ include file="../include/menu.jsp" %>
	<div class="content">
		<c:if test="${member != null}">
			<a href="">회원 상세보기</a>
		</c:if>
		<table class="table">
			<tbody>
				<tr>
					<th>글번호</th>
					<td>${data.userid}</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>${data.passwd}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>${data.name}</td>
				</tr>
				<tr>
					<th>글쓴이</th>
					<td>${data.email}</td>
				</tr>
				<tr>
					<th>가입일자</th>
					<td>
						<fmt:formatData value="${data.resdate}" pattern="yyyy-MM-dd HH:MM:SS"/>
					</td>
				</tr>
			</tbody>
		</table>
		<c:if test="${member.userid == 'admin'}">
			<a href="${path}/member/updatepage?userid=${data.userid}">수정</a>
			<a href="${path}/member/delete.do?userid=${data.userid}">삭제</a>
		</c:if>
		<a href="${path}/member/list.do">목록</a>
	</div>
	<%@ include file="../include/footer.jsp" %>
</div>
</body>
</html>