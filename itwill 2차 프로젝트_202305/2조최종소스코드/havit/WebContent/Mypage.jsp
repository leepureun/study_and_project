<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 
취미 부분 - 어떻게???????? -나중에 받아야할듯
 -->

<script>
	function logout() {
		location.href = "controller?type=logout"
	}
</script>

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
	border:none;
}
th{
	color:#1E82CD;
}
caption {
	font-size:20px;
	padding: 10px;
	color:#1E82CD;
	font-weight: bold;
}
</style>


<title>Mypage</title>


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

				<div id="data">
					<table border id="table" width="860px" height="300px">
						<caption>회원가입 정보</caption>
						<tbody>
							<tr>
								<th>닉네임</th>
								<td>${mvo.nickname}</td>
							</tr>
							<tr>
								<th>아이디</th>
								<td>${mvo.id}</td>
							</tr>

							<tr>
								<th>성별</th>
								<td>${mvo.gender}</td>
							</tr>
							<tr>
								<th>생년월일</th>
								<td>${mvo.birth}</td>
							</tr>
							<tr>
								<th>이메일</th>
								<td>${mvo.email}</td>
							</tr>
							<tr>
								<th>취미</th>
								<td><c:forEach var="hvo" items="${hList }">
										<c:if test="${hvo.category eq '1'}">
											<c:out value="공예/만들기" />
										</c:if>
										<c:if test="${hvo.category eq '2'}">
											<c:out value="운동/스포츠" />
										</c:if>
										<c:if test="${hvo.category eq '3'}">
											<c:out value="음악/악기" />
										</c:if>
										<c:if test="${hvo.category eq '4'}">
											<c:out value="외국/언어" />
										</c:if>
										<c:if test="${hvo.category eq '5'}">
											<c:out value="자유주제" />
										</c:if>
										<c:if test="${hvo.category eq '6'}">
											<c:out value="도서" />
										</c:if>
										<c:if test="${hvo.category eq '7'}">
											<c:out value="문화" />
										</c:if>
										<c:if test="${hvo.category eq '8'}">
											<c:out value="요리" />
										</c:if>
										<c:if test="${hvo.category eq '9'}">
											<c:out value="결혼" />
										</c:if>
										<c:if test="${hvo.category eq '10'}">
											<c:out value="사교" />
										</c:if>
										<c:if test="${hvo.category eq '11'}">
											<c:out value="게임" />
										</c:if>
										<c:if test="${hvo.category eq '12'}">
											<c:out value="사진" />
										</c:if>
										<c:if test="${hvo.category eq '13'}">
											<c:out value="차" />
										</c:if>
										<c:if test="${hvo.category eq '14'}">
											<c:out value="반려동물" />
										</c:if>
										<c:if test="${hvo.category eq '15'}">
											<c:out value="야구관람" />
										</c:if>
										<c:if test="${hvo.category eq '16'}">
											<c:out value="여행" />
										</c:if>
									</c:forEach></td>
							</tr>
							<tr>
								<th>전화번호</th>
								<td>${mvo.phone}</td>
							</tr>
							<tr>
								<th>상세주소</th>
								<td>${mvo.addr}</td>
							</tr>

						</tbody>

					</table>
				</div>
			</div>
		</div>

	</body>
</html>