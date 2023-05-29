<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign-up</title>
<link href="style/join.css" rel="stylesheet" type="text/css" />
<link href="style/common.css" rel="stylesheet" type="text/css" />    
</head>
<body>
<div class="join_container">
            <header class = "logo">
                <img class = "brand_logo" src="img/logo_text.png" alt="logo">
                <ul>
                    <li>우리동네 취미어플 해브잇!</li>
                    <li> 함께 즐겨요</li>
                </ul>
            </header>
                <form name="join" method="post"> <!--post :암호화방식-->
                	<br>
                	<input class = "id" type="text" name="id" id="id" placeholder="아이디"> 
                    <input class = "addEmail" type="text" name="email" id ="email" placeholder="이메일 주소" >
                    <input class = "name" type="text" name="nickname"id="nickname" placeholder="닉네임">
                    <input class = "pw" type="password" name="pwd" id="pwd" placeholder="비밀번호">
                    <select id = "gender" name ="gender">
                    	<option selected disabled>성별을 선택하세요.</option>
                    	<option name = "gender" value="남성">남성</option>
                    	<option name = "gender" value="여성">여성</option>
                    </select>
                    <input type="date" name="birth"id="birth">
                    <input type="text" id="phone" name="phone" maxlength ="11" placeholder="전화번호" >
                    <div class="area">
            		<select id="area" name="area">
                		<option selected disabled>지역을 선택하세요.</option>
                		<option name = "area" value="서울">서울</option>
                		<option name = "area" value="경기">경기</option>
                		<option name = "area" value="인천">인천</option>
                		<option name = "area" value="강원">강원</option>
                		<option name = "area" value="경상">경상</option>
                		<option name = "area" value="대구">대구</option>
                		<option name = "area" value="대전">대전</option>
                		<option name = "area" value="부산">부산</option>
                		<option name = "area" value="제주">제주</option>
                		<option name = "area" value="전라">전라</option>
                		<option name = "area" value="충청">충청</option>
            		</select>
            		</div>
                    <input type="text" id="addr" name="addr" placeholder="상세주소" >
                    <button class = "joinBtn" onclick="joinClick(this.form)"><a href="#">가입</a></button>
                </form>
        </div>
            <div class = "account_login">
                <ul>
                    <li>계정이 있으신가요?</li>
                    <li><a href="login.jsp">로그인</a></li>
                </ul>
            </div>
<script>
	function joinClick(frm) {
		frm.action="controller?type=join";
		frm.submit();
	}
</script>           
</body>
</html>