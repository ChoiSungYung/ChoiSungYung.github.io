<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<title>공지사항</title>
<%@ include file="../include/head.jsp" %>
</head>
<body>
<div class="container">
	<%@ include file="../include/menu2.jsp" %>
		<div id="container">
		     <div id="sub_top" class="sub_top2">		
                <div class="inner">
                    <p class="tit">커뮤니티</p>
                    <p class="txt"><img src="${path}/include/source/turo_point_txt.png" alt="특별함으로 가득한 퐝퐝!"></p>
                </div>
            </div>
            <div id="content">
                <div id="snb">
                    <div class="snb_top">
                        <div class="inner">
                            <h2 class="tit">커뮤니티</h2>
                        </div>
                    </div>
                        <ul class="snb_list">
                            <li class="snb_dep1 in_dep2">
                                <a class="active snb_dep1_tit" target="_self">공지사항</a>
                            </li>  
                            <li class="snb_dep1 in_dep2">
                                <a class="snb_dep1_tit" target="_self">이벤트</a>
                            </li>   
                            <li class="snb_dep1 in_dep2">
                                <a class="snb_dep1_tit" target="_self">불편신고</a>
                            </li>                        
                            <li class="snb_dep1 in_dep2">
                                <a class="snb_dep1_tit" target="_self">나만의 여행일정</a>
                            </li>  
                        </ul>
                </div>
                 <div id="sub_page_nav">
                    <div class="inner">
                        <ul class="page_location">
                            <li class="home"><img src="${path}/include/source/pohang/page_nav_home.png" alt="홈"></li>
                            <li class="loc1">
                                <span class="sub_nav_tit" title="리스트 열기">커뮤니티</span>
                                <a href="javascript:void();" class="sub_nav_tit" title="리스트 열기">커뮤니티</a>
                            </li>
                            <li class="loc2">
                                <span class="sub_nav_tit" title="리스트 열기">공지사항</span>
                                <a href="javascript:void();" class="sub_nav_tit" title="리스트 열기">공지사항</a>
                            </li>
                            <li class="loc3">
                                <span class="sub_nav_tit" title="리스트 열기">목록보기</span>
                                <a href="javascript:void();" class="sub_nav_tit" title="리스트 열기">목록보기</a>
                            </li>
                        </ul>
                        <div class="page_util_btn">
                            <div class="page_share_btn_wrap">
                                <button type="button" class="page_share_list_btn" style="border: none;">
                                    <span>공유 리스트</span>
                                </button>
                                <a href="" class="page_print_btn" >인쇄</a>
                            </div>
                            <!--page_util_btn End-->
                        </div>
                    </div>
                  </div>
		<h2 class="title">공지사항</h2>
		<div class="btn_wrap">
			<c:if test="${member.userid == 'admin'}">
				<a href="${path}/board/writer_page" class="bg_LGray">글등록</a>
			</c:if>
		</div>
		<table class="table" id="data">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>글쓴이</th>
					<th>작성일자</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>	
				<c:forEach var="row" items="${list}">
				<tr>
					<td>${row.bno}</td>
					<td><a href="${path}/board/read.do?bno=${row.bno}">${row.title}</a></td>
					<td>${row.writer}</td>
					<td>
						<fmt:formatDate value="${row.regdate}" pattern="yyyy-MM-dd HH:mm:ss" />
					</td>
					<td>${row.viewcnt}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<script>
		$(document).ready(function() {
			$("#data").DataTable();	
			  order: [[1, 'desc']];
		 } );

		</script>
		<div class="blank"></div>
		</div>
	</div>
	<%@ include file="../include/footer.jsp" %>
</div>
</body>
</html>