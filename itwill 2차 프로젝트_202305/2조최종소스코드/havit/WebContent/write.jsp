<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
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
<title>글쓰기</title>
<style>
#main__area {
	font-size: 16px;
}

.write {
	padding: 10px;
}

.write ul ol {
	padding: 10px;
}

.write ul ol button {
	float: right;
}
#submit{
	padding : 8px;
	float : right;
	margin-top: 5px;
	border-radius: 10px;
}
#bContent{
	border : 4px solid lightgray;
	border-radius: 10px;
	width: 830px;
}
#title{
	width: 830px;
	border-radius: 5px;
	padding: 5px;
	border : 4px solid lightgray;
	float: center;
	line-height:15px;
}

</style>
<script>
	
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
				<div id="havit">

					<form action="controller" method="post">


						<div class="write">
							<ul>
								<ol>
								</ol>
								<hr>
								<ol>
									<h2>글쓰기</h2>
								</ol>
								<jsp:include page="html/checkbox.jsp" flush="true" />
								<ol>
									<p>
										<input type="text" name="subject" title="제목" id = title
											placeholder="&nbsp;제목을 입력해 주세요">
									</p>
								</ol>

								<ol>
									<textarea name="bContent" rows="13" cols="125" title="내용" id="bContent"
										placeholder="&nbsp;&nbsp;내용을 입력하세요"></textarea>
								</ol>

								<ol>
									<button type="submit" id="submit">
										저장<i></i>
									</button>

								</ol>
								<input type="hidden" name="type" value="write">

								<input type="hidden" name="nickname" value="${bbsvo.nickname }">
								<input type="hidden" name="category" value="${bbsvo.category }">
							</ul>
						</div>
					</form>
				</div>
			</div>
</body>
</html>