<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>공지사항</title>
<%@ include file="../include/head.jsp" %>
</head>
<style>
</style>
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
			<h3 class="page_tit">공지사항</h3>
		</div>

		<!-- 글읽기 공통 -->
		<div id="board">
			<div class="bbs_view_default">
				<table class="bbs_view_table">
					<colgroup>
						<col style="width:20%;">
						<col style="width:80%;">
					</colgroup>
					<thead>
							<tr>
								<th colspan="2" class="vSubject">${data.title}</th>
							</tr>
						<tr>
							<td colspan="2">
								<ul class="user_info">
										<li class="bbs_name">· ${data.writer}</li>
										<li class="bbs_data">· 등록일 <fmt:formatDate value="${data.regdate}" pattern="yyyy-MM-dd HH:mm:ss" />
										</li>
								</ul>
							</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="2" class="cont">
								<!-- 20180111 -->
								<div class="view_con">
											<p>&nbsp; ${data.content}</p>
								</div>
								<!-- //20180111 -->
							</td>
						</tr>
						<tr>
							<td colspan="2" class="etc">
								<ul>
										<li style="padding-left: 8px; padding-top: 10px;">
											<strong>조회</strong> ${data.viewcnt}
										</li>
										<li class="etc_ccl">
												<span style="float:right; padding-left:5px;"><img src="${path}/include/source/board/img_opentype04.png" alt="출처표시 + 상업적이용금지 + 변경금지"></span>
										</li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="btn_wrap">
					<c:if test="${member.userid == 'admin'}">
						<a href="${path}/board/updatepage.do?bno=${data.bno}" class="bg_LGray">수정</a>
						<a href="${path}/board/delete.do?bno=${data.bno}" class="bg_LGray">삭제</a>
					</c:if>
						<a href="${path}/board/list.do" class="bg_LGray">목록</a>
				</div>
			</div>
		</div>
</div>
    </div>
   	<%@ include file="../include/footer.jsp" %>
</div>
</body>
</html>