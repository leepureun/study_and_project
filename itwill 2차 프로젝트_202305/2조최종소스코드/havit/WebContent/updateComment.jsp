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
<title>Update comment</title>
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
	border : 4px solid lightgray;
	border-radius: 5px;
	}
table> caption {
	padding: 5px;
}
#text{
	width:90%;
	height:100%;
	border:none;
}
#ok{
	padding: 6px;
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
	border: 1px solid #ff4aa5;
	background-color: #ff4aa5;
	padding: 3px 7px;
}

.update {
	padding: 10px;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
	border-collapse: collapse;
}

.update ul ol {
	padding: 10px;
}

.update ul ol button {
	float: right;
}

#btn{
		padding : 8px;
		float : right;
		margin-right : 5px;
		margin-top: 10px;
		border-radius: 10px;
	}
</style>
<script>
function commit_go(frm) {
	frm.action="controller?type=commit_comments";
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
			
			<form>
			<div class="update">
			   <table border id="table" width="860px" height="300px">
			   			<caption style="text-align:left;font-weight:bold; color:#1E82CD; font-size:20px;">댓글 수정</caption>
						<thead>
							<tr class="title">
								<th class="no">번호</th>
								<th class="nickname">작성자</th>
								<th>댓글 내용</th>
							</tr>
						</thead>
							<tr>
								<td>${cvo.cidx }</td>
								<td>${cvo.nickname }</td>
								<td id= "texttd"><input type="text" name="comments" value="${cvo.comments }" id="text"></td>
								<td><input type="button" value="완료" onclick="commit_go(this.form)" id="ok"></td>
							</tr>
			   <input type="hidden" name="nickname" value="${cvo.nickname }">
			   <input type="hidden" name="cidx" value="${cvo.cidx }">
			   </table>
			   
			</div>
			</form>
</body>
</html>