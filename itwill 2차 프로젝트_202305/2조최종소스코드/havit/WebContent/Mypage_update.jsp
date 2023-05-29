<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>회원정보 수정</title>
<style>
#main__area {
	font-size: 16px;
	padding: 10px;
	margin-top: 50px;
	margin-left: 300px;
}
h3{
	margin-left: 100px;
   color: #1E82CD;
   line-height: 50px;
}
#form p {
	margin: 8px;
}

#op1 {
	float: right;
	padding: 5px;
	margin-top: 80px;
}
#op2 {
	float: right;
	padding: 5px;
	margin-right: 10px;
	margin-top: 80px;
}
#hobby{
	padding : 5px;
	background-color:transparent;
	border:none;
	font-size: 16px;
	color: #1E82CD;
}
#data{
	padding : 5px;
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
				<h3>&nbsp;회원정보 수정</h3>
				<div id="data">

					<form action="controller?type=update_ok_pr" method="post" id="form">
						<p>
							닉네임:&nbsp;&nbsp;<input type="text" name="nickname" value="${mvo.nickname }">
						</p>
						<p>
							비밀번호:&nbsp;&nbsp;<input type="password" name="pw" value="${mvo.pw }">
						</p>
						<p>성별:
							남성 <input type="checkbox" name="gender" value="남성"> 여성
							<input type="checkbox" name="gender" value="여성">
						</p>
						<p>
							생년월일: <input type="date" name="birth" value="${mvo.birth }">
						</p>
						<p>
							이메일:&nbsp;&nbsp;<input type="email" name="email" value="${mvo.email }">
						</p>

						<p>
							핸드폰 번호: <input type="text" name="phone" value="${mvo.phone }">
						</p>
						<p>지역:
							서울 <input type="checkbox" name="area" value="서울"> 경기: <input
								type="checkbox" name="area" value="경기"> 인천 <input
								type="checkbox" name="area" value="인천"> 충청 <input
								type="checkbox" name="area" value="충청"> 강원 <input
								type="checkbox" name="area" value="강원"> 대전 <input
								type="checkbox" name="area" value="대전"> 부산 <input
								type="checkbox" name="area" value="부산">
						</p>
						<p>
							상세주소: <input type="text" name="addr" value="${mvo.addr }">
						</p>


						<input type="submit" value="수정" id="op1" width="15px" height="8px">
						<input type="reset" value="초기화" id="op2" width="15px" height="8px">
					</form>
						<p>
							&nbsp;&nbsp;취미: <button onclick="btn_hobby()" id = "hobby">취미수정 바로가기✔</button>
						</p>
				</div>

			</div>
		</div>
<script>
			function btn_hobby() {
				location.href = "choose.jsp";
			}
</script>
</body>

</html>