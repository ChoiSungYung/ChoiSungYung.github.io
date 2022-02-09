<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="hd fix">
        <div class="hd_wrap">
            <a href="index.html" class="logo">
                <img src="${path }/resources/source/logo.png" alt="로고">
            </a>
            <nav class="tnb">
				<ul>
					<!-- 로그인 하지 않았거나 비회원일 경우 -->
					<c:if test="${member ==null }">
						<li><a href="${path }/member/login.do">로그인</a></li>
						<li><a href="${path }/member/join.do">회원가입</a></li>
						<li><a href="${path }/member/mypage.do?userid=${member.getUserid()}">마이페이지</a></li>
						<li><a href="${path }/board/list.do">게시판관리</a></li>
						<li><a href="${path }/member/list.do">회원관리</a></li>
					</c:if>
					<c:if test="${member != null}">
						<li><a href="${path }/member/mypage.do?userid=${member.getUserid()}">마이페이지</a></li>
						<li><a href="${path }/board/logout.do">로그아웃</a></li>
					</c:if>
					<c:if test="${member.userid == 'admin'}">
						<li><a href="${path }/board/list.do">게시판관리</a></li>
						<li><a href="${path }/member/list.do">회원관리</a></li>
					</c:if>
				</ul>
            </nav>
            <nav class="gnb">
                <ul>
                    <li>
                        <a href="geoje1.html" class="dp1">퐝타스틱</a>
                        <ul class="sub">
                            <li><a href="geoje1.html#page1">포항12경</a>
                                <!-- 하위메뉴 -->
                                <dl class="detail">
                                    <dd><a href="">호미곶일출</a></dd>
                                    <dd><a href="">운제산오어사사계</a></dd>
                                    <dd><a href="">호미반도둘레길</a></dd>
                                    <dd><a href="">영일대&포스코야경</a></dd>
                                    <dd><a href="">포항운하</a></dd>
                                    <dd><a href="">경상북도수목원사계</a></dd>
                                    <dd><a href="">연오랑세오녀테마공원</a></dd>
                                    <dd><a href="">철길숲&불의정원</a></dd>
                                    <dd><a href="">죽장하옥계곡사계</a></dd>
                                    <dd><a href="">장기읍성&유배문화체험촌</a></dd>
                                    <dd><a href="">구룡포일본인가옥거리</a></dd>
                                </dl>
                            </li>
                            <li><a href="geoje1.html#page2">포항5미</a>
                                <!-- 하위메뉴 -->
                                <dl class="detail">
                                    <dd><a href="">포항 물회</a></dd>
                                    <dd><a href="">구룡포 과메기</a></dd>
                                    <dd><a href="">구룡포 대게</a></dd>
                                    <dd><a href="">호미곶 돌문어</a></dd>
                                    <dd><a href="">장기 산딸기</a></dd>
                                </dl>
                            </li>
                            <li><a href="geoje1.html#page3">포항5락</a>
                                <!-- 하위메뉴 -->
                                <dl class="detail">
                                    <dd><a href="">포항국제불빛축제</a></dd>
                                    <dd><a href="">호미곶 한민족 해맞이축제</a></dd>
                                    <dd><a href="">칠포 재즈페스티벌</a></dd>
                                    <dd><a href="">호미반도 해안 둘레길 걷기</a></dd>
                                    <dd><a href="">스틸아트페스티벌</a></dd>
                                </dl>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="geoje2.html" class="dp1">테마관광</a>
                        <ul class="sub">
                            <li><a href="geoje2.html#page1">자연</a>
                                <!-- 하위메뉴 -->
                                <dl class="detail">
                                    <dd><a href="">산·수목원</a></dd>
                                    <dd><a href="">해수욕장</a></dd>
                                </dl>  
                            </li>
                            <li><a href="geoje2.html#page2">역사</a>
                                <!-- 하위메뉴 -->
                                <dl class="detail">
                                    <dd><a href="">사찰</a></dd>
                                    <dd><a href="">기념관</a></dd>
                                </dl>  
                            </li>
                            <li><a href="geoje2.html#page3">휴양</a>
                                <!-- 하위메뉴 -->
                                <dl class="detail">
                                    <dd><a href="">공원</a></dd>
                                    <dd><a href="">휴양지</a></dd>
                                    <dd><a href="">둘레길</a></dd>
                                </dl>  
                            </li>
                            <li><a href="geoje2.html#page4">체험</a>
                                <!-- 하위메뉴 -->
                                <dl class="detail">
                                    <dd><a href="">전통문화</a></dd>
                                    <dd><a href="">온천</a></dd>
                                    <dd><a href="">체험관</a></dd>
                                </dl>  
                            </li>
                            <li><a href="geoje2.html#page4">마을/거리</a>
                                <!-- 하위메뉴 -->
                                <dl class="detail">
                                    <dd><a href="">마을</a></dd>
                                    <dd><a href="">거리</a></dd>
                                </dl>  
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="geoje3.html" class="dp1">문화예술</a>
                        <ul class="sub">
                            <li><a href="geoje3.html#page1">문화관광행사</a>
                                <!-- 하위메뉴 -->
                                <dl class="detail">
                                    <dd><a href="">공연</a></dd>
                                    <dd><a href="">전시</a></dd>
                                    <dd><a href="">기타</a></dd>
                                </dl>  
                            </li>
                            <li><a href="geoje3.html#page2">문화캘린더</a>
                                <!-- 하위메뉴 -->
                            </li>
                            <li><a href="geoje3.html#page3">문화공간</a>
                                <!-- 하위메뉴 -->
                                <dl class="detail">
                                    <dd><a href="">전시관</a></dd>
                                    <dd><a href="">미술관</a></dd>
                                    <dd><a href="">박물관</a></dd>
                                    <dd><a href="">공연장</a></dd>
                                </dl>  
                            </li>
                            <li><a href="geoje3.html#page4">문화유산탐방</a>
                                <!-- 하위메뉴 -->
                                <dl class="detail">
                                    <dd><a href="">국가지정 문화재</a></dd>
                                    <dd><a href="">도지정 문화재</a></dd>
                                    <dd><a href="">향토 문화유산</a></dd>
                                </dl>  
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="geoje4.html" class="dp1">관광정보</a>
                        <ul class="sub">
                            <li><a href="geoje4.html#page1">포항시티투어버스</a>
                                <!-- 하위메뉴 -->
                                <dl class="detail">
                                    <dd><a href="">예약서비스</a></dd>
                                    <dd><a href="">코스안내</a></dd>
                                    <dd><a href=""></a></dd>
                                    <dd><a href="">상세메뉴4</a></dd>
                                </dl>  
                            </li>
                            <li><a href="geoje4.html#page2">맛투어</a>
                                <!-- 하위메뉴 -->
                                <dl class="detail">
                                    <dd><a href="">특산물</a></dd>
                                    <dd><a href="">영일만친구 야시장</a></dd>
                                    <dd><a href="">설머리물회지구</a></dd>
                                    <dd><a href="">등푸른막회거리</a></dd>
                                </dl>  
                            </li>
                            <li><a href="geoje4.html#page3">숙박</a>
                                <!-- 하위메뉴 -->
                                <dl class="detail">
                                    <dd><a href="">호텔·콘도</a></dd>
                                    <dd><a href="">펜션</a></dd>
                                    <dd><a href="">게스트하우스</a></dd>
                                    <dd><a href="">숙박업소</a></dd>
                                </dl>  
                            </li>
                            <li><a href="geoje4.html#page4">이색쇼핑</a>
                                <!-- 하위메뉴 -->
                                <dl class="detail">
                                    <dd><a href="">전통시장</a></dd>
                                </dl>  
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="community.html" class="dp1">커뮤니티</a>
                        <ul class="sub">
                            <li><a href="community.html">묻고 답하기</a>
                                <!-- 하위내용 -->
                                <div class="detail_con">

                                </div>
                            </li>
                            <li><a href="notice.html">공지사항</a>
                                <!-- 하위내용 -->
                                <div class="detail_con">

                                </div>
                            </li>
                            <li><a href="gallery.html">포토 갤러리</a>
                                <!-- 하위내용 -->
                                <div class="detail_con">

                                </div>
                            </li>
                            <li><a href="impress.html">이용 후기</a>
                                <!-- 하위내용 -->
                                <div class="detail_con">

                                </div>
                            </li>
                            <li><a href="certifyingshot.html">인증샷 갤러리</a>
                                <!-- 하위내용 -->
                                <div class="detail_con">

                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
</header>