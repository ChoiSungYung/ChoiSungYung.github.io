<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 쓰기</title>
<%@ include file="../include/head.jsp" %>
</head>
<body>
<div class="wrap">
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
                                <span class="sub_nav_tit" title="리스트 열기">글보기</span>
                                <a href="javascript:void();" class="sub_nav_tit" title="리스트 열기">글보기</a>
                            </li>
                        </ul>
                        <div class="page_util_btn">
                            <div class="page_share_btn_wrap">
                                <button type="button" class="page_share_list_btn" style="border: none;">
                                    <span>공유 리스트</span>
                                </button>
                                <ul class="page_share_list">
                                    <li><a href="" class="tw_share"><span>트위터 공유</span></a></li>
                                    <li><a href="" class="tw_share"><span>트위터 공유</span></a></li>
                                    <li><a href="" class="tw_share"><span>트위터 공유</span></a></li>
                                    <li><a href="" class="tw_share"><span>트위터 공유</span></a></li>
                                </ul>
                                <a href="javascript:printPhtourPage()" class="page_print_btn" >인쇄</a>
                            </div>
                            <!--page_util_btn End-->
                        </div>
                    </div>
                  </div>
		<div class="page_tit_wrap">
			<h3 class="page_tit">글 쓰기</h3>
		</div>
	    <form name="bdto" method="post" action="${path}/board/insert.do">
	        <div>제목<input name="title" id="title" size="80" style="margin: 20px; padding-left: 10px;" placeholder="글 제목 입력"></div>
	        <div>내용<textarea name="content" id="content" rows="8" cols="80" style="padding: 10px; width: 880px; min-height: 0; margin: 20px;" placeholder="글 내용 입력"></textarea></div>
	        <div>이름<input name="writer" id="writer" style="margin: 20px; padding-left: 10px;" value="${member.userid}" readonly/></div>
	        <div class="btn_wrap">
				<input class="submit_btn" type="submit" value="확인">
			</div>
	    </form>
	</div>
	</div>
   	<%@ include file="../include/footer.jsp" %>
</div>    
</body>
</html>