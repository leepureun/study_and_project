<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Courgette&family=IBM+Plex+Sans:wght@600&family=Noto+Sans+KR:wght@400;900&family=Saira+Condensed:wght@900&family=Space+Mono:wght@700&display=swap" rel="stylesheet">
  <script src="https://kit.fontawesome.com/28346e854f.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="style.css">
  <script src="main.js" defer="defer"></script>
  <title>Havit</title>
</head>
<body>
  <header class="title__head">
    <a href="controller?type=main" class="title__logo">HavIt</a>
    <!-- <a href="login.jsp" class="title__login">로그인</a> -->
  	<div class="nav__container">
	    <a href="controller?type=out&id=${mvo.id }" class="nav__nick">${mvo.nickname}님</a>
	    <span class="nav__sortDown"><i class="fa-solid fa-sort-down"></i></span>
	    <ul id="nav" class="nav__menu">
		    <li class="nav__menu-item"> <a href="controller?type=out&id=${mvo.id }">마이페이지</a></li>
		    <!-- <li class="list-group-item">A second item</li>
		    <li class="list-group-item">A third item</li>
		    <li class="list-group-item">A fourth item</li> -->
		    <li class="nav__menu-item"><a href="controller?type=logout">로그아웃</a></li>
  		</ul>
  	</div>
  </header>
  
  <section class="boxes__container">
  	<div class="slide__container">
	  	<ul class="slide">
		  	<li>
					  <div class="page__category-container">
					  	<ul class="category__spread">
					  		<li class="item"><a href="controller?type=BBSList&category=1" class="item__name">공예/만들기</a></li>
					  		<li class="item"><a href="controller?type=BBSList&category=2" class="item__name">운동/스포츠</a></li>
					  		<li class="item"><a href="controller?type=BBSList&category=3" class="item__name">음악/악기</a></li>
					  		<li class="item"><a href="controller?type=BBSList&category=4" class="item__name">외국/언어</a></li>
					  		<li class="item"><a href="controller?type=BBSList&category=5" class="item__name">자유주제</a></li>
					  		<li class="item"><a href="controller?type=BBSList&category=6" class="item__name">도서</a></li>
					  		<li class="item"><a href="controller?type=BBSList&category=7" class="item__name">문화</a></li>
					  		<li class="item"><a href="controller?type=BBSList&category=8" class="item__name">요리</a></li>
					  		<li class="item"><a href="controller?type=BBSList&category=9" class="item__name">연애/결혼</a></li>
					  		<li class="item"><a href="controller?type=BBSList&category=10" class="item__name">사교</a></li>
					  		<li class="item"><a href="controller?type=BBSList&category=11" class="item__name">게임</a></li>
					  		<li class="item"><a href="controller?type=BBSList&category=12" class="item__name">사진</a></li>
					  		<li class="item"><a href="controller?type=BBSList&category=13" class="item__name">차/오토바이</a></li>
					  		<li class="item"><a href="controller?type=BBSList&category=14" class="item__name">반려동물</a></li>
					  		<li class="item"><a href="controller?type=BBSList&category=15" class="item__name">야구관광</a></li>
					  		<li class="item"><a href="controller?type=BBSList&category=16" class="item__name">여행</a></li>
					  	</ul>
					  </div>
		  		</li>
		  		<li>
	  				<div class="page__phrase">
					    <span class="page__phrase-first">이번주 카테고리 BEST</span>
					    <div class="page__cross-line"></div>
					    <span class="page__phrase-second">많은 분들이 본 모임을 참여해보세요!</span>
		    		</div>
		  		</li>
	  	</ul>
  	</div>
  </section>
  
		
	<section id="category">
 		<div class="category__container">
 		<c:forEach var="hobby" items="${list }">
      <c:forEach var="idx" begin="0" end="15">
			 	<c:if test="${hobby.category eq cNum[idx] }">
			 		<div class="category__box">
					 	<div class="category__line">
					 		<a href="controller?type=BBSList&category=${cNum[idx] }" class="category__name">${cList[idx] }</a>
		          <div class="move__btns">
		            <button class="category__prev"><i class="fa-solid fa-chevron-left"></i></button>
		            &emsp;
		            <button class="category__next"><i class="fa-solid fa-chevron-right"></i></button>
		          </div>
		        </div>
					 	<c:forEach var="i" begin="0" end="4" >
		        	<c:if test="${map[i][0].category eq cNum[idx] }">
		        		<div class="content__container">
			        		<ul class="content__frame">
				        		<c:forEach var="j" begin="0" end="9">
			        				<c:if test="${map[i][j].subject != null }">
			        					<c:if test="${map[i][0].category eq 2}">
						        			<li>
								          	<a href="controller?type=BBSView&category=${category }&idx=${map[i][j].idx }" class="content" target="blank">
								            	<img src="imgs/main/gym${j+1}.png" class="content__img">
									            <div class="content__description">
									            	<h3>${map[i][j].subject }</h3>
							              		<span>${map[i][j].bContent }</span>
							            		</div>
							            		<div class="horizontal__line"></div>
						          			</a>
			        						</li>			        					
			        						</c:if>
			        					<c:if test="${map[i][0].category eq 4 }">
						        			<li>
								          	<a href="controller?type=BBSView&category=${category }&idx=${map[i][j].idx }" class="content" target="blank">
								            	<img src="imgs/main/language${j+1 }.png" class="content__img">
									            <div class="content__description">
									            	<h3>${map[i][j].subject }</h3>
							              		<span>${map[i][j].bContent }</span>
							            		</div>
							            		<div class="horizontal__line"></div>
						          			</a>
			        						</li>			        					
			        					</c:if>
			        					<c:if test="${map[i][0].category eq 11 }">
						        			<li>
								          	<a href="controller?type=BBSView&category=${category }&idx=${map[i][j].idx }" class="content" target="blank">
								            	<img src="imgs/main/game${j+1 }.png" class="content__img">
									            <div class="content__description">
									            	<h3>${map[i][j].subject }</h3>
							              		<span>${map[i][j].bContent }</span>
							            		</div>
							            		<div class="horizontal__line"></div>
						          			</a>
			        						</li>			        					
			        					</c:if>
			        					<c:if test="${map[i][0].category eq 14 }">
						        			<li>
								          	<a href="controller?type=BBSView&category=${category }&idx=${map[i][j].idx }" class="content" target="blank">
								            	<img src="imgs/main/animal${j+1 }.png" class="content__img">
									            <div class="content__description">
									            	<h3>${map[i][j].subject }</h3>
							              		<span>${map[i][j].bContent }</span>
							            		</div>
							            		<div class="horizontal__line"></div>
						          			</a>
			        						</li>			        					
			        					</c:if>
			        					<c:if test="${map[i][0].category eq 16 }">
						        			<li>
								          	<a href="controller?type=BBSView&category=${category }&idx=${map[i][j].idx }" class="content" target="blank">
								            	<img src="imgs/main/travel${j+1 }.png" class="content__img">
									            <div class="content__description">
									            	<h3>${map[i][j].subject }</h3>
							              		<span>${map[i][j].bContent }</span>
							            		</div>
							            		<div class="horizontal__line"></div>
						          			</a>
			        						</li>			        					
			        					</c:if>
	        						</c:if>
	        					</c:forEach>
	       					</ul>
	        			</div>
	      			</c:if>
	      		</c:forEach>
			 		</div>
 				</c:if>
	 		</c:forEach>
 		</c:forEach>
		</div>
	</section>
</body>

</html>