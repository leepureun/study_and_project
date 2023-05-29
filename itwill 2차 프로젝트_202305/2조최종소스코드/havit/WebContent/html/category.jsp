<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<caption>
		<c:if test="${category eq '1'}"><c:out value="공예/만들기" /></c:if>
		<c:if test="${category eq '2'}"><c:out value="운동/스포츠" /></c:if>
		<c:if test="${category eq '3'}"><c:out value="음악/악기" /></c:if>
		<c:if test="${category eq '4'}"><c:out value="외국/언어" /></c:if>
		<c:if test="${category eq '5'}"><c:out value="자유주제" /></c:if>
		<c:if test="${category eq '6'}"><c:out value="도서" /></c:if> 
		<c:if test="${category eq '7'}"><c:out value="문화" /></c:if>
		<c:if test="${category eq '8'}"><c:out value="요리" /></c:if>
		<c:if test="${category eq '9'}"><c:out value="결혼" /></c:if>
		<c:if test="${category eq '10'}"><c:out value="사교" /></c:if>
		<c:if test="${category eq '11'}"><c:out value="게임" /></c:if>
		<c:if test="${category eq '12'}"><c:out value="사진" /></c:if>
		<c:if test="${category eq '13'}"><c:out value="차" /></c:if>
		<c:if test="${category eq '14'}"><c:out value="반려동물" /></c:if>
		<c:if test="${category eq '15'}"><c:out value="야구관람" /></c:if>
		<c:if test="${category eq '16'}"><c:out value="여행" /></c:if>
	</caption>
