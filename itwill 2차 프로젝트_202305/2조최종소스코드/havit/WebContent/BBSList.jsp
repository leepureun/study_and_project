<%@page import="com.mystudy.vo.BBSVO"%>
<%@page import="java.util.List"%>
<%@page import="com.mystudy.dao.BBSDAO"%>
<%@page import="com.mystudy.common.Paging"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	tbody > tr:nth-child(1) > td:nth-child(1){
  		width:10%;
	}
	tbody > tr:nth-child(1) > td:nth-child(2){
  		width:15%;
	}
	tbody > tr:nth-child(1) > td:nth-child(3){
  		width:45%;
	}
	.button{
		margin-right : 10%;
	}
	#btn{
		padding : 8px;
		float : right;
		margin-right : 5px;
		margin-top: 10px;
		border-radius: 10px;
		border : 1px solid lightgray;
	}
	#btn2{
		padding : 8px;
		float : right;
		margin-right : 5px;
		margin-top: 10px;
		border-radius: 10px;
		border : 1px solid lightgray;
	}

	#keyword {color : gray;}
	#keyword:onfocus {color: black;} 
	tfoot > tr > td{
	border: 0;
	}
	#opt{
		border : 4px solid lightgray;
		 border-radius: 10px;
		 padding:10px;
	}
	.option{
		padding: 8px;
		font-size:13px;
		border : 4px solid lightgray;
		border-radius: 5px;
	}
	#write{
		width:30px;
		height:30px;
	}
	th, h2, h3{
		color:#1E82CD;
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
</style>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

<title>제목,내용으로 검색(카테안)</title>
<script>
	$(document).ready(function() {
		$("#btn").click(chk);
	});
	function chk() {
		let keyword = $("#keyword").val();
		let age;
		let day;
		let gender;
		if ($(".age").is(":checked")) {
			age = $(".age").val();
		} else {
			age = null;
		}
		if ($(".day").is(":checked")) {
			day = $(".day").val();
		} else {
			day = null;
		}
		if ($(".gender").is(":checked")) {
			gender = $(".gender").val();
		} else {
			gender = null;
		}
		if (keyword == "" && age == null && day == null && gender == null) {
			confirm("검색어또는 검색옵션을 선택하세요");
		} else {
			$("#bbsListSearch").attr("action", "controller?type=BBSListSearch")
					.submit();
		}

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

			<!-- MAIN -->
			<div id="main__area">

					<div id = "hobby">
			<h2 id = "category">&nbsp;<jsp:include page="html/category.jsp" flush="true"/>모임리스트 </h2><br>
		<form method = "post" id = "bbsListSearch">
			<select name = "option" class = "option">
				<option value = "0">내용</option>
				<option value = "1">제목</option>
			</select>
			<input type = "text" name = "keyword" id = "keyword" class = "option" placeholder="검색할 키워드를 입력하세요">
			<br><br>
			<h3>&nbsp;&nbsp;검색옵션</h3>
			<div id = "opt">
			나이:
	 		<input type =  "radio" class ="age" name = "age" value = "10대">10대&nbsp&nbsp			
			<input type =  "radio" class ="age" name = "age" value = "20대">20대&nbsp&nbsp	
			<input type =  "radio" class ="age" name = "age" value = "30대">30대&nbsp&nbsp	
			<input type =  "radio" class ="age" name = "age" value = "40대">40대&nbsp&nbsp			
			<input type =  "radio" class ="age" name = "age" value = "50대">50대&nbsp&nbsp		
			
			<br><br>
			시간:
			<input type =  "radio" class = "day" name = "day" value = "평일오전">평일오전&nbsp&nbsp		
			<input type =  "radio" class = "day" name = "day" value = "평일오후">평일오후&nbsp&nbsp		
			<input type =  "radio" class = "day" name = "day" value = "주말오전">주말오전&nbsp&nbsp		
			<input type =  "radio" class = "day" name = "day" value = "주말오후">주말오후&nbsp&nbsp		
			<input type =  "radio" class = "day" name = "day" value = "지금당장">지금당장&nbsp&nbsp	
			
			<br><br>
			성별:
			<input type =  "radio" class = "gender" name = "gender" value = "여성만">여성만&nbsp	&nbsp	
			<input type =  "radio" class = "gender" name = "gender" value = "남성만">남성만&nbsp	&nbsp	
			<input type =  "radio" class = "gender" name = "gender" value = "상관없음">상관없음&nbsp&nbsp	
			<input type = "hidden" name = "category" value  = "${category }">
			</div>
			<button id = "btn">검색</button>
			<input type = "reset" value = "선택취소" id = "btn2">
		</form>
		</div>

					<form action="controller?type=BBSView" method="post" id="bbsList">
						<div id="bbs">
							<table border width="860px" height="300px" id="table">
								<caption style="text-align:left;font-weight:bold;">모임리스트</caption>
								<thead>
									<tr class="title">
										<th class="idx">글번호</th>
										<th class="nickname">글쓴이</th>
										<th class="subject">제목</th>
										<th class="bdate">날짜</th>
										<th class="hit">좋아요</th>
										<th class="views">조회수</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="vo" items="${bbspageList}">
										<tr>
											<td>${vo.idx }</td>
											<td>${vo.nickname }</td>
											<td>
												<button type="submit" id="idx" name="idx" value="${vo.idx }">
													${vo.subject }</button>
											</td>
											<td>${vo.bDate}</td>
											<td>${vo.hit }</td>
											<td>${vo.views }</td>
										</tr>
									</c:forEach>
									<tr>
										<th colspan="6"><c:if test="${empty bbspageList}">현재등록된 게시물이 없습니다.</c:if></th>
									</tr>
								</tbody>
								<tfoot>
								<td colspan = "5">
								<td><a href = "controller?type=bbs&nickname=${mvo.nickname }&category=${category}"><img alt="wirte" src="img/free-icon-pencil-7068645.png" id="write"></a></td>
								</tfoot>
							</table><br><br>
							<ul class="paging" name="paging">
								<c:if test="${pvo.beginPage == 1 }}">
									<li class="disable">◀</li>
								</c:if>
								<c:if test="${pvo.beginPage != 1 }">
									<li><a
										href="controller?type=BBSList&cPage=${pvo.beginPage -1}&category=${category}">이전으로</a></li>
								</c:if>
								<c:forEach var="pageNo" begin="${pvo.beginPage }"
									end="${pvo.endPage }">
									<c:if test="${pageNo == pvo.nowPage}">
										<li class="now">${pageNo }</li>
									</c:if>
									<c:if test="${pageNo != pvo.nowPage}">
										<li><a
											href="controller?type=BBSList&cPage=${pageNo }&category=${category}">${pageNo }</a></li>
									</c:if>
								</c:forEach>
								<c:if test="${pvo.endPage < pvo.totalPage }">
									<li><a
										href="controller?type=BBSList&cPage=${pvo.endPage + 1 }&category=${category}">다음으로</a>
									</li>
								</c:if>
								<c:if test="${pvo.endPage >= pvo.totalPage }">
									<li class="disable">▶</li>
								</c:if>
							</ul>
						</div>
					</form>
				</div>
			</div>
</body>
</html>
