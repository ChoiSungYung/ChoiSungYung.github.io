<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="com.board.example.dto.*" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%
	MemberDTO member = (MemberDTO) session.getAttribute("member");
%>
<meta charset="UTF-8">
<title>포항 관광문화</title> 
<!-- 뷰포트 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 메타포 설정 -->
<meta property= "title" content="포항 관광문화 홈페이지">
<meta property= "keywords" content="포항관광문화, 포항시청 관광문화, 포항시 여행정보">
<meta property= "description" content= "포항 관광문화 홈페이지">
<!-- 파비콘 설정 -->
<link rel= "shortcut icon" href="${path}/include/source/pohang.ico">
<!-- 오픈그래프 설정 -->
<meta property="og:title" content="포항 관광문화 웹어플리케이션">
<meta property="og:type" content="website">
<meta property="og:url" content="http://tour.pohang.go.kr">
<meta property="og:description" content="포항 관광문화, 포항12경, 포항5미, 포항5락">
<meta property="og:image" content="${path}/source/site_thumb.jpg" />
<!-- 폰트 설정 -->
<link href="http://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet" type="text/css">
<!-- 필수 API 로딩 -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="../resources/js/ban.js"></script>
<script src="../resources/js/jquery.js"></script>
<script src="${path}/include/datatables.min.js"></script>
<!-- 외부 스타일 로딩 -->
<link href="${path}/include/datatables.min.css" rel="stylesheet">
<!--  
<link rel="stylesheet" href="../resources/css/fonts.css"/>
<link rel="stylesheet" href="../resources/css/grid.css"/>
<link rel="stylesheet" href="../resources/css/ban.css"/>-->
<!-- 새로운 스타일-->
<link rel="stylesheet" href="../resources/css/style.css"/>
