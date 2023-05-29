<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HAVIT : 로그인</title>
<link href="style/login.css" rel="stylesheet" type="text/css" />    
<link href="style/common.css" rel="stylesheet" type="text/css" />    
</head>
<body>
<body>
    <div id = "container_wrap">
        <div class="container">
            <header>
                 <a href="#">
                 	<img class = "brand_logo" src="img/logo_text.png" alt="logo"></a>
            </header>
            <form name="login" action="controller?type=login" method="post"> <!--method="post" : 정보를 숨겨서 보낸다-->
                <input class = "id" name="userID" id="userID" type="text" placeholder="전화번호,사용자 이름 또는 이메일"> <!--placeholder : 입력창 안에 text를 넣을 수 있다-->
                <input class = "pwd" name="userPW" id="userPW" type="password" placeholder="비밀번호">
                <button id="btn_login" disabled>로그인</button>
            </form>
            
        </div>
        <div class = "account">
            <ul>
                <li>계정이 없으신가요?</li>
                <li><a href="join.jsp">가입하기</a></li>
            </ul>
        </div>
    </div>
    <script src="js/login.js"></script>
</body>
</html>