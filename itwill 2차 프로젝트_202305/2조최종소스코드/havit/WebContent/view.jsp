<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Courgette&family=IBM+Plex+Sans:wght@600&family=Noto+Sans+KR:wght@400;900&family=Saira+Condensed:wght@900&family=Space+Mono:wght@700&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/28346e854f.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="./CSS/havit.css">
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<title>상세보기</title>
<style>
.view {
font-family: Arial, sans-serif;
text-align: left;
}
@media only screen and (max-width: 768px) {
  .main-menu {
    width: 0;
    display: none;
  }
  .main-menu-toggle {
    display: none;
  }
  }
 #btn{
 	float: right;
 }
 #subject{
 	width: 800px;
 	border : 4px solid lightgray;
	border-radius: 5px;
 }
 #bcontent{
 	padding:10px;
 	width: 860px;
	border-collapse: collapse;
	height: 400px;
	font-size:16px;
	border : 4px solid lightgray;
	border-radius: 5px;
 }
 .view{
 	padding : 15px;
 	
 }
.option{
	line-height:30px;
}
.opt{
	border : 4px solid lightgray;
	border-radius: 5px;
}
#modi ,#ok{
	padding : 5px;
}

</style>
<script>
function update_go(frm) {
	frm.action="controller?type=BBSView&idx=${bbsvo.idx}";
	frm.method="post";
	frm.submit();
	alert("수정되었습니다");
}

function commit_go(frm) {
	frm.action="controller?type=commit";
	frm.method="post";
	frm.submit();
	alert("완료되었습니다");
	
	
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

<div id="havit">
<form>

<div class="view">
<h2>게시글 수정</h2>
<br>
<ul>

<ol>
<p class = "option">나이대: <input type="text" name="optAge" value="&nbsp;${bbsvo.optAge}" class="opt"></p>
<p class = "option">시간대: <input type="text" name="optDay" value="&nbsp;${bbsvo.optDay }" class="opt"></p>
<p class = "option">성별:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="optGen" value="&nbsp;${bbsvo.optGen }" class="opt"></p>
<p class = "option">닉네임: <input type="text" name="nickname" title="닉네임" value="&nbsp;${bbsvo.nickname }" readonly class="opt"></p>
</ol>

<ol >
<p>제목:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="subject" id="subject" title="제목" value="${bbsvo.subject }"></p><br>
<textarea id = "bcontent" name="bcontent" rows="30" cols="50" title="내용" value="${bbsvo.bContent }">${bbsvo.bContent }</textarea><br>

<input type="hidden" name="idx" value="${bbsvo.idx }">
<input type="hidden" name="category" value="${bbsvo.category }">
</ol>

<ol id = "btn">
<input type="button" value="수정" onclick="update_go(this.form)" id= "modi">
<input type="button" value="완료" onclick="commit_go(this.form)" id="ok">
</ol>

</ul>
</div>
</form>
</div>
</body>
</html>
