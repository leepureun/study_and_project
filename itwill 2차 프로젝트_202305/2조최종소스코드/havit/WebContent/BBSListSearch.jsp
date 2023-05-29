<%@page import="com.mystudy.vo.BBSVO"%>
<%@page import="java.util.List"%>
<%@page import="com.mystudy.dao.BBSDAO"%>
<%@page import="com.mystudy.common.Paging"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<style>
	*{  
    padding: 10px;
	}
	li{
	    list-style: none;
	}
	a{
	    text-decoration: none;
	}

	body {
	    background: #fafafa;
	    width: 100%;
	    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}
	th, h2{
		color:#1E82CD;
	}
	caption{
		padding: 5px;
	}
	table {
	width: 850px;
	border-collapse: collapse;
	font-size:16px;
	border : 4px solid lightgray;
	border-radius: 5px;
	}
	th, td{ /*가라*/
		text-align:center;
		padding: 5px;
	}
	#idx {border: none;
		background-color:transparent;
		font-size:16px;
	}
	#idx:hover{
		cursor: pointer;
		text-decoration: underline;
		font-size:1.12em;
	}
	#goCate{
		padding: 5px;
	}
	/*** 페이지 표시 영역 스타일(시작) ****/
	.paging { 
 		display:flex;
 		align-items:center;
 		justify-content:center;
		list-style: none;
		margin-right : 15%
	 } 
	.paging li {
		float: left;
		margin-right: 8px;
		
	}
	.paging li a {
		text-decoration: none;
		display: block;
		padding: 3px 7px;
		border: 1px solid #00B3DC;
		font-weight: bold;
		color: black;
	}
	.paging .disable {
		border: 1px solid #aaa;
		color: #aaa;
		padding: 3px 7px;
	}
	.paging .now {
		border: 1px solid #B8D7FF;
		background-color: #B8D7FF;
		padding: 3px 7px;
	}
	#list{
		padding: 5px;
	}
</style>
<!DOCTYPE html>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Courgette&family=IBM+Plex+Sans:wght@600&family=Noto+Sans+KR:wght@400;900&family=Saira+Condensed:wght@900&family=Space+Mono:wght@700&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/28346e854f.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="./CSS/havit.css">
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<html>
<head>
<meta charset="UTF-8">
<title>검색(카테고리안)</title>
<script>
	function goBBSList(){ 
		location.href = "controller?type=BBSList&category=${category}";
		
	}
</script>
</head>
<body>
	<div id="havit__body__skin">

		<div id="havit__navbar">
			<a href="controller?type=main" class="havit__link">HavIt</a> <a
				href="controller?type=out">${mvo.nickname}님</a>
		</div>

		<div id="front__area">
			<!-- <img id="back__img" src="/img/토끼 요술봉.jpg" alt=""> -->
		</div>

		<div id="content__area">
			<!-- 카테고리 BAR -->
			<div id="category__area">
				<ul class="info__action__tab">
					<li class="info__action__item"><a href="controller?type=main">
							<i class="fa-solid fa-house"></i> HOME
					</a></li>
					<li class="info__action__item"><a href="controller?type=out">
							<i class="fa-solid fa-user"></i> My Page
					</a></li>
					<li class="info__action__item"><a
						href="controller?type=logout"> <i
							class="fa-solid fa-right-from-bracket"></i> Logout
					</a></li>
				</ul>
				<span class="category__tab"><i class="fa-solid fa-list"></i>카테고리</span>
				<ul id="item__list">
					<li class="item__name"><i
						class="fa-solid fa-screwdriver-wrench"></i> <a
						href="controller?type=BBSList&category=1"> 공예/만들기 </a></li>
					<li class="item__name"><i class="fa-solid fa-person-swimming"></i>
						<a href="controller?type=BBSList&category=2"> 운동/스포츠 </a></li>
					<li class="item__name"><i class="fa-solid fa-music"></i> <a
						href="controller?type=BBSList&category=3"> 음악/악기 </a></li>
					<li class="item__name"><i class="fa-solid fa-language"></i> <a
						href="controller?type=BBSList&category=4"> 외국/언어 </a></li>
					<li class="item__name"><i class="fa-solid fa-users"></i> <a
						href="controller?type=BBSList&category=5"> 자유주제 </a></li>
					<li class="item__name"><i class="fa-solid fa-book"></i> <a
						href="controller?type=BBSList&category=6"> 도서 </a></li>
					<li class="item__name"><i class="fa-solid fa-landmark"></i> <a
						href="controller?type=BBSList&category=7"> 문화 </a></li>
					<li class="item__name"><i class="fa-solid fa-utensils"></i> <a
						href="controller?type=BBSList&category=8"> 요리 </a></li>
					<li class="item__name"><i class="fa-solid fa-heart"></i> <a
						href="controller?type=BBSList&category=9"> 연애/결혼 </a></li>
					<li class="item__name"><i class="fa-solid fa-share-nodes"></i>
						<a href="controller?type=BBSList&category=10"> 사교 </a></li>
					<li class="item__name"><i class="fa-solid fa-gamepad"></i> <a
						href="controller?type=BBSList&category=11"> 게임 </a></li>
					<li class="item__name"><i class="fa-solid fa-camera"></i> <a
						href="controller?type=BBSList&category=12"> 사진 </a></li>
					<li class="item__name"><i class="fa-solid fa-car"></i> <a
						href="controller?type=BBSList&category=13"> 차/오토바이 </a></li>
					<li class="item__name"><i class="fa-solid fa-cat"></i> <a
						href="controller?type=BBSList&category=14"> 반려동물 </a></li>
					<li class="item__name"><i
						class="fa-solid fa-baseball-bat-ball"></i> <a
						href="controller?type=BBSList&category=15"> 야구관람 </a></li>
					<li class="item__name"><i class="fa-solid fa-plane-departure"></i>
						<a href="controller?type=BBSList&category=16"> 여행 </a></li>
				</ul>
				<p class="category__tab">
					<i class="fa-solid fa-comment-dots"></i>기타
				</p>
				<ul id="info__foot__tab">
					<li class="item__name">1:1 문의</li>
					<li class="item__name">고객센터</li>
					<li class="item__name">운영정책</li>
				</ul>
			</div>
	<div id="list">
	<h2><jsp:include page="html/category.jsp" flush="true"/> 검색결과</h2>
	<br>
	<button onclick = "goBBSList()" id = "goCate">전체보기로 이동</button>
	<form action = "controller?type=BBSView" method = "post" id = "bbsList">
		<div id = "bbs">
			<table border>
				<caption style="text-align:left;font-weight:bold;">모임리스트</caption>
				<thead> 
				<tr class="title">
				<th class="idx" >글번호</th>
				<th class="nickname">글쓴이</th>
				<th class="subject">제목</th>
				<th class="bdate">날짜</th>
				<th class="hit">좋아요</th>
				<th class="views">조회수</th>
				 </tr>
				</thead>
				<tbody>
				<c:forEach var = "vo" items = "${BBSsearchPageList}">
					<tr>
						<td>${vo.idx }</td>
						<td>${vo.nickname }</td>
						<td>
						<button type = "submit" id = "idx" name = "idx" value = "${vo.idx }">
							${vo.subject }
						</button>
						</td>
						<td>${vo.bDate}</td>
						<td>${vo.hit }</td>
						<td>${vo.views }</td>
					</tr>
				</c:forEach>
				<tr><th colspan = "6"><c:if test="${empty BBSsearchPageList}">검색결과가 없습니다.</c:if></th></tr>
				</tbody>
			</table>
			<br>
			<ul class = "paging" name = "paging">
				<c:if test = "${pvos.beginPage == 1 }}">
					<li class = "disable">◀</li>
				</c:if>
				<c:if test = "${pvos.beginPage != 1 }">
					<li><a href = "controller?type=BBSListSearch&cPage=${pvos.beginPage -1}&category=${category}&option=${option}">이전으로</a></li>
				</c:if>
				<c:forEach var="pageNo" begin="${pvos.beginPage }" end="${pvos.endPage}">
					<c:if test="${pageNo == pvos.nowPage}">
						<li class="now">${pageNo }</li>
					</c:if>
					<c:if test="${pageNo != pvos.nowPage}">
						<li><a href="controller?type=BBSListSearch&cPage=${pageNo}&category=${category}&option=${option}">${pageNo }</a></li>
					</c:if>
				</c:forEach>
				<c:if test="${pvos.endPage < pvos.totalPage }">
					<li>
						<a href="controller?type=BBSListSearch&cPage=${pvos.endPage + 1}&category=${category}&option=${option}">다음으로</a>
					</li>
				</c:if>
				<c:if test="${pvos.endPage >= pvos.totalPage }">
					<li class="disable">▶</li>
				</c:if>
			</ul>
		</div>
	</form>
	</div>		
</body>
</html>