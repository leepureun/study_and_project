<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


<title>MyComments</title>
<style>
#main__area {
	font-size: 16px;
	padding: 10px;
}

#table {
	border-collapse: collapse;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}

#subject {
	border: none;
	background-color: transparent;
	font-size: 16px;
	color: black;
}

#subject:hover {
	cursor: pointer;
	text-decoration: underline;
	font-size: 1.12em;
}

li a {
	text-decoration: none;
	padding: 10px;
	display: block;
	color: #000;
	font-weight: bold;
}

li a:hover {
	background: #333;
	color: #fff;
}

#data {
	margin: 0 auto;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	display: flex;
}

table {
	border-collapse: collapse;
	font-size: 16px;
	border: 4px solid lightgray;
	border-radius: 5px;
}

table>caption {
	padding: 5px;
}

tfoot>tr:nth-child(1)>td:nth-child(1) {
	height: 50px;
}

#modi, #del {
	padding: 5px;
	border: none;
}

.paging {
	list-style: none;
	text-align: center;
}

.paging li {
	margin-right: 8px;
	display: inline-block;
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
						href="controller?type=view_bbs_pr"> 작성한 게시글 </a></li>
					<li class="item__name"><i class="fa-solid fa-person-swimming"></i>
						<a href="controller?type=view_comments_pr"> 작성한 댓글 </a></li>
					<li class="item__name"><i class="fa-solid fa-music"></i> <a
						href="controller?type=update_pr"> 회원정보 수정 </a></li>
					<li class="item__name"><i class="fa-solid fa-language"></i> <a
						href="controller?type=delete_pr"> 회원탈퇴 </a></li>
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
				<table border id="table" width="860px" height="300px">
					<caption
						style="text-align: center; font-weight: bold; color: #1E82CD; font-size: 20px;">게시글
						목록</caption>
					<thead>
						<tr class="title">
							<th class="no">번호</th>
							<th class="nickname">작성자</th>
							<th>글제목</th>
							<th class="regdate">날짜</th>
							<th>좋아요</th>
							<th>글 수정</th>
							<th>글 삭제</th>
						</tr>
					</thead>
					<c:forEach var="bvo" items="${listb }">
						<tr>
							<td>${bvo.idx}</td>
							<td>${bvo.nickname }</td>

							<td class="align-left"><a
								href="controller?type=BBSView&category=${bvo.category }&idx=${bvo.idx}"
								id="subject">${bvo.subject }</a></td>
							<td>${bvo.bDate }</td>
							<td>${bvo.hit }</td>
							<td><button id="modi">
									<a
										href="controller?type=write&category=${bvo.category }&nickname=${bvo.nickname}&bContent=${bvo.bContent}
					&subject=${bvo.subject}&optAge=${bvo.optAge}&optDay=${bvo.optDay}&optGen=${bvo.optGen}">바로가기</a>
								</button></td>
							<td><button id="del">
									<a href="controller?type=delete&idx=${bvo.idx }">삭제</a>
								</button></td>

						</tr>
					</c:forEach>
					<c:if test="${empty listb }">
						<tr>
							<td colspan="7 ">현재 등록된 글이 없습니다</td>
						</tr>
					</c:if>

					<tfoot>
						<tr>
							<td colspan="7">
								<ol class="paging">
									<%-- [이전으로]에 대한 사용가능 여부 처리 --%>
									<c:if test="${pvo.beginPage == 1 }">
										<li class="disable">◀</li>
									</c:if>
									<c:if test="${pvo.beginPage != 1 }">
										<li><a
											href="controller?type=view_bbs_pr&cPage=${pvo.beginPage - 1 }">이전으로</a>
										</li>
									</c:if>

									<%--블록내에 표시할 페이지 태그 작성(시작~끝 페이지) --%>
									<c:forEach var="pageNo" begin="${pvo.beginPage }"
										end="${pvo.endPage }">
										<c:if test="${pageNo == pvo.nowPage}">
											<li class="now">${pageNo }</li>
										</c:if>
										<c:if test="${pageNo != pvo.nowPage}">
											<li><a
												href="controller?type=view_bbs_pr&cPage=${pageNo }">${pageNo }</a></li>
										</c:if>

									</c:forEach>

									<%-- [다음으로]에 대한 사용가능 여부 처리 --%>
									<c:if test="${pvo.endPage < pvo.totalPage }">
										<li><a
											href="controller?type=view_bbs_pr&cPage=${pvo.endPage + 1 }">다음으로</a></li>
									</c:if>
									<c:if test="${pvo.endPage >= pvo.totalPage }">
										<li class="disable">▶</li>
									</c:if>
								</ol>
							</td>

						</tr>
					</tfoot>
				</table>
			</div>
</body>

</html>