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
<title>회원 탈퇴</title>

<style>
#main__area {
   font-size: 16px;
   padding: 10px;
   margin-top: 50px;
   margin-left: 300px;
}
h3{
   color: #1E82CD;
   line-height: 50px;
}
#idpw{
   line-height: 50px;
}
#delete{
   margin-right: 130px;
   float: right;
   padding: 5px;
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

            <div>
               <h3>회원 탈퇴를 위해서 아이디와 비밀번호를 입력해주세요.</h3>
            </div>


            <div>
               <form action="controller?type=delete_ok" method="POST" id = "idpw">
                  <label for="id">아이디 &nbsp;&nbsp;:&nbsp;&nbsp;<input type="text" id="id" name="id"
                     value="${mvo.id }">
                  </label><br> <label for="pw" id="pw">비밀번호 : <input
                     type="password" name="pw">
                  </label><br><br> <input id="delete" type="submit" value="회원탈퇴">
               </form>
            </div>
         </div>
         <script>
            document.getElementById("delete").onclick = function() {
               if (confirm("정말로 회원탈퇴하시겠습니까?")) {
                  return true;
               }
               return false;

            };
         </script>
</body>
</html>