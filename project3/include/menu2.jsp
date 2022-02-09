<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="hd fix" id="header">
            <h1 class="logo">
                <a href="/">포항시 문화관광</a>
            </h1>
            <div class="hd_top">
                <div class="inner">
                    <div class="hdt_right">
                        <ul>
                       		<c:if test="${member == null}">
	                            <li class="login_btn"><a href="${path }/member/login.do">로그인</a></li>
	                            <li class="login_btn"><a href="${path }/member/join.do">회원가입</a></li>
							</c:if>
							<c:if test="${member != null}">
								<li>${member.name}님</li>	
								<li class="login_btn"><a href="${path }/member/mypage.do?userid=${member.getUserid() }">마이페이지</a></li>
	                            <li class="login_btn"><a href="${path}/member/logout.do">로그아웃</a></li>
							</c:if>
							<c:if test="${member.userid == 'admin'}">	
								<li class="login_btn"><a href="${path}/board/list.do">게시판 관리</a></li>
								<li class="login_btn"><a href="${path}/member/list.do">회원 관리</a></li>
							</c:if>
                            <li class="lang">
                                <button type="button" class="lang_select_tit" title="언어선택 리스트 열기">Language</button> 
                                <ul class="lang_list"> 
                                    <li><a  href="https://www.pohang.go.kr/eng/index.do" target="_blank" title="새 창으로 열림">ENGLISH</a></li> 
                                    <li><a  href="https://www.pohang.go.kr/russian/index.do" target="_blank" title="새 창으로 열림">RUSSIAN</a></li> 
                                    <li><a  href="https://www.pohang.go.kr/china/index.do" target="_blank" title="새 창으로 열림">中文</a></li> 
                                    <li><a  href="https://www.pohang.go.kr/japan/index.do" target="_blank" title="새 창으로 열림">日本語</a></li> 
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
                <div class="gnb" id="gnb">
                    <div class="inner">
                        <div class="gnb_list_wrap">
                            <ul class="gnb_list">
                                <li class="dep1">
                                    <a class="dep1_txt" href="${path}/sub/subview.do">퐝타스틱</a>
                                    <div class="dep1_sub_menu sub_menu01">
                                        <div class="left">
                                            <div class="txt_box">
                                                <strong class="up_dep1_txt">퐝타스틱</strong>
                                                <p class="txt">Visit Pohang</p>
                                            </div>
                                        </div>
                                        <div class="right">
                                            <ul class="dep2">
                                                <li class="fixed in_dep3">
                                                    <a href="${path}/sub/subview.do" class="dep2_txt   m_in_dep3" target="_self">포항12경</a>
                                                    <ul class="dep3">
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_tour12_img01.jpg" alt="">
                                                                </span>
                                                                <span class="txt">호미곶일출</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_tour12_img02.jpg" alt="">
                                                                </span>
                                                                <span class="txt">내연산12폭포비경</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_tour12_img03.jpg" alt="">
                                                                </span>
                                                                <span class="txt">운제산오어사사계</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_tour12_img04.jpg" alt="">
                                                                </span>
                                                                <span class="txt">호미반도둘레길</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_tour12_img05.jpg" alt="">
                                                                </span>
                                                                <span class="txt">영일대&포스코야경</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_tour12_img06.jpg" alt="">
                                                                </span>
                                                                <span class="txt">포항운하</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_tour12_img07.jpg" alt="">
                                                                </span>
                                                                <span class="txt">경상북도수목원사계</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_tour12_img08.jpg" alt="">
                                                                </span>
                                                                <span class="txt">연오랑세오녀테마공원</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_tour12_img09.jpg" alt="">
                                                                </span>
                                                                <span class="txt">철길숲&불의정원</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_tour12_img10.jpg" alt="">
                                                                </span>
                                                                <span class="txt">죽장하옥계곡사계</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_tour12_img11.jpg" alt="">
                                                                </span>
                                                                <span class="txt">장기읍성&유배문화체험촌</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_tour12_img12.jpg" alt="">
                                                                </span>
                                                                <span class="txt">구룡포일본인가옥거리</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                            <ul class="dep2">
                                                <li class="fixed in_dep3">
                                                    <a href="${path}/sub/subview.do" class="dep2_txt   m_in_dep3" target="_self">오미(5味)</a>
                                                    <ul class="dep3">
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_eat5_img01.jpg" alt="">
                                                                </span>
                                                                <span class="txt">포항 물회</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_eat5_img02.jpg"" alt="">
                                                                </span>
                                                                <span class="txt">구룡포 과메기</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_eat5_img03.jpg"" alt="">
                                                                </span>
                                                                <span class="txt">구룡포 대게</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_eat5_img04.jpg"" alt="">
                                                                </span>
                                                                <span class="txt">호미곶 돌문어</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_eat5_img05.jpg"" alt="">
                                                                </span>
                                                                <span class="txt">장기 산딸기</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                            <ul class="dep2">
                                                <li class="fixed in_dep3">
                                                    <a href="${path}/sub/subview.do" class="dep2_txt   m_in_dep3" target="_self">오락(5樂)</a>
                                                    <ul class="dep3">
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_festival5_img01.jpg" alt="">
                                                                </span>
                                                                <span class="txt">포항국제불빛축제</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_festival5_img02.jpg" alt="">
                                                                </span>
                                                                <span class="txt">호미곶 한민족 해맞이축제</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_festival5_img03.jpg" alt="">
                                                                </span>
                                                                <span class="txt">칠포 재즈페스티벌</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_festival5_img04.jpg" alt="">
                                                                </span>
                                                                <span class="txt">호미반도 해안 둘레길 걷기</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${path}/sub/subview.do" class="dep3_txt" target="_self">
                                                                <span class="img">
                                                                    <img src="${path}/include/source/pohang/dep3_txt_festival5_img05.jpg" alt="">
                                                                </span>
                                                                <span class="txt">스틸아트페스티벌</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                
                                </li>
                                <li class="dep1">
                                    <a class="dep1_txt" href="${path}/sub/subview.do">테마관광</a>
                                    <div class="dep1_sub_menu sub_menu02">
                                        <div class="left">
                                            <div class="txt_box">
                                                <strong class="up_dep1_txt">테마관광</strong>
                                                <p class="txt">Visit Pohang</p>
                                            </div>
                                        </div>
                                        <div class="right">
                                            <ul class="dep2">
                                                <li class="in_dep3">
                                                    <a href="${path}/sub/subview.do" class="dep2_txt   m_in_dep3" target="_self">자연</a>
                                                    <ul class="dep3">
                                                        <ul class="dep3">
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 산·수목원</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 해수욕장</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 기타</a></li>
                                                        </ul>
                                                    </ul>
                                                </li>
                                                <li class="in_dep3">
                                                    <a href="${path}/sub/subview.do" class="dep2_txt   m_in_dep3" target="_self">역사</a>
                                                    <ul class="dep3">
                                                        <ul class="dep3">
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 사찰</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 기념관</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 기타</a></li>
                                                        </ul>
                                                    </ul>
                                                </li>                                                <li class="in_dep3">
                                                    <a href="${path}/sub/subview.do" class="dep2_txt   m_in_dep3" target="_self">휴양</a>
                                                    <ul class="dep3">
                                                        <ul class="dep3">
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 공원</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 휴양지</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 둘레길</a></li>
                                                        </ul>
                                                    </ul>
                                                </li>                                                <li class="in_dep3">
                                                    <a href="${path}/sub/subview.do" class="dep2_txt   m_in_dep3" target="_self">체험</a>
                                                    <ul class="dep3">
                                                        <ul class="dep3">
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 전통문화</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 온천</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 체험관</a></li>
                                                        </ul>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="dep1">
                                    <a class="dep1_txt" href="${path}/sub/subview.do">문화예술</a>
                                    <div class="dep1_sub_menu sub_menu03">
                                        <div class="left">
                                            <div class="txt_box">
                                                <strong class="up_dep1_txt">문화예술</strong>
                                                <p class="txt">Visit Pohang</p>
                                            </div>
                                        </div>
                                        <div class="right">
                                            <ul class="dep2">
                                                <li class="in_dep3">
                                                    <a href="${path}/sub/subview.do" class="dep2_txt   m_in_dep3" target="_self">문화관광행사</a>
                                                    <ul class="dep3">
                                                        <ul class="dep3">
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 축제행사</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 공연</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 전시</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 기타</a></li>
                                                        </ul>
                                                    </ul>
                                                </li>
                                                <li class="in_dep3">
                                                    <a href="${path}/sub/subview.do" class="dep2_txt   m_in_dep3" target="_self">문화캘린더</a>
                                                </li>                                                <li class="in_dep3">
                                                    <a href="${path}/sub/subview.do" class="dep2_txt   m_in_dep3" target="_self">문화공간</a>
                                                    <ul class="dep3">
                                                        <ul class="dep3">
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 전시관</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 미술관</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 박물관</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 공연장</a></li>
                                                        </ul>
                                                    </ul>
                                                </li>                                                <li class="in_dep3">
                                                    <a href="${path}/sub/subview.do" class="dep2_txt   m_in_dep3" target="_self">문화유산탐방</a>
                                                    <ul class="dep3">
                                                        <ul class="dep3">
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 국가지정 문화재</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 도지정 문화재</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 향토 문화유산</a></li>
                                                        </ul>
                                                    </ul>
                                                </li>
                                            </ul>         
                                        </div>
                                    </div>
                                </li>
                                <li class="dep1">
                                    <a class="dep1_txt" href="${path}/sub/subview.do">관광정보</a>
                                    <div class="dep1_sub_menu sub_menu04">
                                        <div class="left">
                                            <div class="txt_box">
                                                <strong class="up_dep1_txt">관광정보</strong>
                                                <p class="txt">Visit Pohang</p>
                                            </div>
                                        </div>
                                        <div class="right">
                                            <ul class="dep2">
                                                <li class="in_dep3">
                                                    <a href="${path}/sub/subview.do" class="dep2_txt   m_in_dep3" target="_self">포항시티투어버스</a>
                                                    <ul class="dep3">
                                                        <ul class="dep3">
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 예약서비스</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 코스안내</a></li>
                                                        </ul>
                                                    </ul>
                                                </li>
                                                <li class="in_dep3">
                                                    <a href="/phtour/9406/subview.do" class="dep2_txt   m_in_dep3" target="_self">맛투어</a>
                                                    <ul class="dep3">
                                                        <ul class="dep3">
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 특산물</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 영일만친구 야시장</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 설머리물회지구</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 등푸른막회거리</a></li>
                                                        </ul>
                                                    </ul>
                                                </li>
                                                <li class="in_dep3">
                                                    <a href="${path}/sub/subview.do" class="dep2_txt   m_in_dep3" target="_self">음식점인증업소</a>
                                                    <ul class="dep3">
                                                        <ul class="dep3">
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 전시관</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 음식점위생등급제</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 안심식당</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 식객단이 평가한 친절업소</a></li>
                                                        </ul>
                                                    </ul>
                                                </li>
												<li class="in_dep3">
                                                    <a href="${path}/sub/subview.do" class="dep2_txt   m_in_dep3" target="_self">숙박</a>
                                                    <ul class="dep3">
                                                        <ul class="dep3">
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 호텔·콘도</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 펜션</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 게스트하우스</a></li>
                                                            <li><a href="${path}/sub/subview.do" class="dep3_txt  " target="_self"> 숙박업소</a></li>
                                                        </ul>
                                                    </ul>
                                                </li>
                                            </ul>         
                                        </div>
                                    </div>
                                </li>
                                <li class="dep1">
                                    <a class="dep1_txt" href="${path}/board/list.do">커뮤니티</a>
                                    <div class="dep1_sub_menu sub_menu05">
                                        <div class="left">
                                            <div class="txt_box">
                                                <strong class="up_dep1_txt">커뮤니티</strong>
                                                <p class="txt">Visit Pohang</p>
                                            </div>
                                        </div>
                                        <div class="right">
                                            <ul class="dep2">
                                                <li class="in_dep3">
                                                    <a href="${path}/board/list.do" class="dep2_txt   m_in_dep3" target="_self">공지사항</a>
                                                </li>
                                                <li class="in_dep3">
                                                    <a href="${path}/board/writer_page" class="dep2_txt   m_in_dep3" target="_self">글쓰기</a>
                                                </li>
                                                <!--
                                                <li class="in_dep3">
                                                    <a href="${path}/board/list.do" class="dep2_txt   m_in_dep3" target="_self">이벤트</a>
                                                </li>
                                                <li class="in_dep3">
                                                    <a href="${path}/board/list.do" class="dep2_txt   m_in_dep3" target="_self">불편신고</a>
                                                </li>                                                <li class="in_dep3">
                                                    <a href="${path}/board/list.do" class="dep2_txt   m_in_dep3" target="_self">나만의 여행일정</a>
                                                </li>-->
                                            </ul>         
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="gnb_other_btn">
                            <ul class="9296"> 
                                <li><button type="button" class="hd_srch_btn" title="검색 열기"></button></li>
                                <li><a href="/phtour/sitemap.do" class="sitemap_btn">사이트맵</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>