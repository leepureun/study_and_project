<%@page import="com.mystudy.vo.BBSVO"%>
<%@page import="java.util.List"%>
<%@page import="com.mystudy.dao.BBSDAO"%>
<%@page import="com.mystudy.common.Paging"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<%
	String idx = request.getParameter("idx");
	System.out.println("idx : " + idx);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세내용보기</title>
<script>
    
    var stat = 0;
	
	
		function like( idx ,nickname) {
	var btn = document.getElementById("like"+idx);
			
			if(stat%2 ==0){
				btn.style.background="red";
			}else {
				btn.style.background=null;
			}
			
			
			
			$.ajax({
				url:"Mypage?type=like",
						type: "POST",
						dataType: "",
						data:{
							idx: idx,
							nickname: nickname,
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
	<div id="bbs">
		<%-- 게시글 내용 표시(출력) --%>
		<form action = "controller?type=BBSView" method = "post" name = "BBSView">
			<table border>
				<caption>
					<c:if test="${bbsVO.category eq '1'}"><c:out value="공예/만들기" /></c:if>
					<c:if test="${bbsVO.category eq '2'}"><c:out value="운동/스포츠" /></c:if>
					<c:if test="${bbsVO.category eq '3'}"><c:out value="음악/악기" /></c:if>
					<c:if test="${bbsVO.category eq '4'}"><c:out value="외국/언어" /></c:if>
					<c:if test="${bbsVO.category eq '5'}"><c:out value="자유주제" /></c:if>
					<c:if test="${bbsVO.category eq '6'}"><c:out value="도서" /></c:if> 
					<c:if test="${bbsVO.category eq '7'}"><c:out value="문화" /></c:if>
					<c:if test="${bbsVO.category eq '8'}"><c:out value="요리" /></c:if>
					<c:if test="${bbsVO.category eq '9'}"><c:out value="결혼" /></c:if>
					<c:if test="${bbsVO.category eq '10'}"><c:out value="사교" /></c:if>
					<c:if test="${bbsVO.category eq '11'}"><c:out value="게임" /></c:if>
					<c:if test="${bbsVO.category eq '12'}"><c:out value="사진" /></c:if>
					<c:if test="${bbsVO.category eq '13'}"><c:out value="차" /></c:if>
					<c:if test="${bbsVO.category eq '14'}"><c:out value="반려동물" /></c:if>
					<c:if test="${bbsVO.category eq '15'}"><c:out value="야구관람" /></c:if>
					<c:if test="${bbsVO.category eq '16'}"><c:out value="여행" /></c:if>
				<caption>
				<tbody>
					<tr>
						<th>제목 : </th>
						<td colspan = "5">${bbsVO.subject }</td>
					</tr>
					<tr>
						<th>작성자:</th>
						<td colspan = "5">${bbsVO.nickName }</td>
					</tr>
					<tr>
						<th>글쓴날짜:</th>
						<td>${bbsVO.bDate }</td>
						<th>조회수:</th>
						<td>${bbsVO.views }</td>
						<th>댓글:</th>
						<td>(댓글갯수1)</td>
					</tr>
					<tr>
						<td colspan = "6">${bbsVO.bContent }</td>
					</tr>
					<tr> 
						<!-- 버튼꾸미기 -->
						<th><button id="like${bvo.idx }"
							onclick="like(${bvo.idx},'${bvo.nickName }')">"♥"</button></th>
						<td colspan = "5">${bbsVO.hit }</td>
					</tr>
				</tbody>
			</table>
		</form>
			<hr>
		<br>
	</div>
</body>
</html>