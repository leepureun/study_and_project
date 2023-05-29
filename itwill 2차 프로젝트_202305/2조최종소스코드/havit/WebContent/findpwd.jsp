<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>너의 비밀번호를 찾아dream</title>
<link href="style/login.css" rel="stylesheet" type="text/css" />    
<link href="style/common.css" rel="stylesheet" type="text/css" />   
</head>
<body>
	<div id = "container_wrap">
        <div class="container">
        <header>
            <a href="#">
            	<img class = "brand_logo" src="https://cdn.pixabay.com/photo/2016/12/18/12/49/cyber-security-1915628_960_720.png" alt="logo"></a>
        </header>
    	<form name="find" method="post" action="controller?type=find">
    		 <input class = "id" name="userID" id="userID" type="text" placeholder="아이디를 입력하세요">
    		 <input type="submit" value="비밀번호 찾기">
    	</form>
    	<div class="or_line">
        	<div class="line"></div>
        	<div class="text">또는</div>
        	<div class="line"></div>
        </div>
        <ul class="findpw">
        	<li><a href="join.jsp">새 계정 만들기</a></li>
        </ul>
        </div>
    </div>
</body>
</html>