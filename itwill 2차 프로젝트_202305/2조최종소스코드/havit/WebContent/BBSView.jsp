<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String idx = request.getParameter("idx");
System.out.println("idx : " + idx);
%>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

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

<title>상세내용보기</title>

<style>
#main__area {
	font-size: 16px;
}
th{
	color:#1E82CD;
}

th, td:not(tbody > tr:nth-child(4) > td:nth-child(1)){ /*가라*/
/* 	border : 1px solid black; */
	padding: 10px;
}
th {text-align: center;}
tbody > tr:nth-child(4) > td:nth-child(1){
  	border-bottom: 1px solid black;
	border-top:1px solid black;
	height: 500px;
	line-height: 1.8;
	vertical-align: text-top;
	padding : 18px;
}
tbody > tr:nth-child(5) > td:nth-child(1){
 	text-align:right;
}
tbody > tr> th {
	width : 10%;
}

table {
	width: 860px;
	border-collapse: collapse;
	font-size:16px;
	
}
#like{
	padding:7px;
    background-color: transparent;
    border-radius: 10px;
}

tfoot > tr{
	border-bottom: 1px dotted gray;
	border-top:1px dotted gray;
}
tfoot{
	border-bottom: 1px solid black;
	border-top:1px solid black;
}
tfoot> tr:nth-child(1) > td:nth-child(1){
	color: #323232;
}
/*댓글*/
#text{
	width: 860px;
	height: 80px;
	border-radius: 10px;
	vertical-align: text-top;
}
#comsubmit{
	float: right;
	padding: 10px 20px;
	border-radius: 10px;
	border : 0;
}
</style>
<script>
    var stat = 0;
		function like(idx) {
	var btn = document.getElementById("like");
			
			if(stat%2 ==0){
				btn.style.color="#CD3861";
			}else {
				btn.style.color="black";
			}
			$.ajax({
				url:"controller?type=like",
						type: "POST",
						dataType: "",
						data:{
							idx: idx,
							stat: stat
						},
						success: function () {
							console.log("데이터 전달됨");
							stat = stat+1;
						}
			})
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
				<div id="bbs">
					<%-- 게시글 내용 표시(출력) --%>
					<table>
						<jsp:include page="html/category.jsp" flush="true" />
						<tbody>
							<tr>
								<th>제목 :</th>
								<td colspan="5">${bbsVO.subject }</td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<th>작성자:</th>
								<td>${bbsVO.nickname }</td>
								<th>시간:</th>
								<td>${bbsVO.optDay }</td>
								<th>나이:</th>
								<td>${bbsVO.optAge }</td>
								<th>성별:</th>
								<td>${bbsVO.optGen }</td>
							</tr>
							<tr>
								<th>글쓴날짜:</th>
								<td>${bbsVO.bDate }</td>
								<th>조회수:</th>
								<td>${bbsVO.views }</td>
								<th>댓글:</th>
								<td>${idxCnt}</td>
							</tr>
							<tr>
								<td colspan="8">${bbsVO.bContent }</td>
							</tr>
							<tr>
								<!-- 버튼꾸미기 -->
								<td colspan = "5"></td>
								<td><button id="like" onclick="like(${bbsVO.idx})">"♥"</button>&nbsp좋아요  : ${bbsVO.hit }</td>
								<td colspan = "2">댓글 : ${idxCnt}</td>
							</tr>
						</tbody>
						<hr>
						<!-- 댓글 보기 영역 -->
						<tfoot id = "tfoot">
							<tr>
								<td colspan="6"><h2>&nbsp&nbsp댓글</h2></td>
							</tr>
							<c:forEach var="vo" items="${cList}">

								<tr>
									<td colspan="3"><p>${vo.nickname}</p>&nbsp ${vo.comments }<br>${vo.cdate }</td>
								</tr>
							</c:forEach>
						</tfoot>
					</table>
					<hr>
					<br>
				</div>

				<!-- 댓글작성 영역 -->
				<form action="controller" method="post">

					<div class="commentWrite">
						<p>
							<input type="text" name="comments" title="댓글" id = "text"
								placeholder="&nbsp&nbsp&nbsp&nbsp댓글을 남겨보세요">
						</p>
						<input type="hidden" name="idx" value="${bbsVO.idx }"> <input
							type="hidden" name="nickname" value="${mvo.nickname }"> <input
							type="hidden" name="type" value="commentWrite"><br>
						<button type="submit" id = "comsubmit">저장</button>
					</div>
				</form>
			</div>
</body>
</html>