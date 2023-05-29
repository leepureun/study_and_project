<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	System.out.println("choose 페이지 실행");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>취미선택</title>
<style>
</style>
<link href="style/hobby.css" rel="stylesheet" type="text/css" /> 
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>

console.log(${mvo.id});
	${document}.ready(function() {
		alert("hobby.jsp 시작");
		var limit =5; 
		var checkedBoxes = [];
		System.out.println(limit);
	$('input[type=checkbox]').on('change',function () {
		if($(this).is(':checked')) {
			checkedBoxes.push($(this).val());
		}
		else {
			checkedBoxex.splice(checkedBoxes.indexOf((this).val()),1);
		}
		if(checkedBoxes.length > limit) {
			alert('최대 5개까지 선택 가능합니다.');
			$(this).prop('checked',false);
			checkedBoxex.splice(checkedBoxes.indexOf((this).val()),1);
		}
		});
	});
</script>
</head>
<body>
	<h2>취미 수정</h2>
	<form name="hobby" method="post" action="controller?type=choose">
	<ul>
	  <li>
	    <input type="checkbox" id="myCheckbox1" name="hobby" value="1"/>
	    <label for="myCheckbox1"><img src="img/handcraft.png" /></label>
	    <label for="myCheckbox1" class="txt">공예</label>
	  </li>
	  <li>
	    <input type="checkbox" id="myCheckbox2" name="hobby" value="2"/>
	    <label for="myCheckbox2"><img src="img/free-icon-exercise-1823092.png" /></label>
	    <label for="myCheckbox2" class="txt">운동</label>
	  </li>
	  <li>
	    <input type="checkbox" id="myCheckbox3" name="hobby" value="3"/>
	    <label for="myCheckbox3"><img src="img/free-icon-sing-3604493.png" /></label>
	    <label for="myCheckbox3" class="txt">음악</label>
	  </li>
	  <li>
	    <input type="checkbox" id="myCheckbox4" name="hobby" value="4"/>
	    <label for="myCheckbox4"><img src="img/free-icon-languages-3898082.png" /></label>
	    <label for="myCheckbox4" class="txt">외국/언어</label>
	  </li>
	  </ul>
	  <ul>
	  <li>
	    <input type="checkbox" id="myCheckbox5" name="hobby" value="5"/>
	    <label for="myCheckbox5"><img src="img/free-icon-lifestyle-6193497.png" /></label>
	    <label for="myCheckbox5" class="txt">자유주제</label>
	  </li>
	  <li>
	    <input type="checkbox" id="myCheckbox6" name="hobby" value="6"/>
	    <label for="myCheckbox6"><img src="img/free-icon-reading-4964062.png" /></label>
	    <label for="myCheckbox6" class="txt">도서</label>
	  </li>
	  <li>
	    <input type="checkbox" id="myCheckbox7" name="hobby" value="7"/>
	    <label for="myCheckbox7"><img src="img/free-icon-culture-4127193.png" /></label>
	    <label for="myCheckbox7" class="txt">문화</label>
	  </li>
	  <li>
	    <input type="checkbox" id="myCheckbox8" name="hobby" name="hobby" value="8"/>
	    <label for="myCheckbox8"><img src="img/free-icon-cooking-5507905.png" /></label>
	    <label for="myCheckbox8" class="txt">요리</label>
	  </li>
	  </ul>
	  <ul>
	  <li>
	    <input type="checkbox" id="myCheckbox9" name="hobby" value="9"/>
	    <label for="myCheckbox9"><img src="img/free-icon-marriage-3370962.png" /></label>
	    <label for="myCheckbox9" class="txt">결혼</label>
	  </li>
	  <li>
	    <input type="checkbox" id="myCheckbox10" name="hobby" value="10"/>
	    <label for="myCheckbox10"><img src="img/free-icon-coffee-cup-924514.png" /></label>
	    <label for="myCheckbox10" class="txt">사교</label>
	  </li>
	  <li>
	    <input type="checkbox" id="myCheckbox11" name="hobby" value="11"/>
	    <label for="myCheckbox11"><img src="img/free-icon-video-game-1581330.png" /></label>
	    <label for="myCheckbox11" class="txt">게임</label>
	  </li>
	  <li>
	    <input type="checkbox" id="myCheckbox12" name="hobby" value="12"/>
	    <label for="myCheckbox12"><img src="img/free-icon-photo-camera-5797663.png" /></label>
	    <label for="myCheckbox12" class="txt">사진</label>
	  </li>
	  </ul>
	  <ul>
	  <li>
	    <input type="checkbox" id="myCheckbox13" name="hobby" value="13"/>
	    <label for="myCheckbox13"><img src="img/free-icon-car-7524132.png" /></label>
	    <label for="myCheckbox13" class="txt">차/오토바이</label>
	  </li>
	  <li>
	    <input type="checkbox" id="myCheckbox14" name="hobby" value="14"/>
	    <label for="myCheckbox14"><img src="img/free-icon-pet-489399.png" /></label>
	    <label for="myCheckbox14" class="txt">반려동물</label>
	  </li>
	  <li>
	    <input type="checkbox" id="myCheckbox15" name="hobby" value="15"/>
	    <label for="myCheckbox15"><img src="img/free-icon-baseball-694606.png" /></label>
	    <label for="myCheckbox15" class="txt">야구관람</label>
	  </li>
	  <li>
	    <input type="checkbox" id="myCheckbox16" name="hobby" value="16"/>
	    <label for="myCheckbox16"><img src="img/free-icon-passport-6135557.png" /></label>
	    <label for="myCheckbox16" class="txt">여행</label>
	  </li>
	</ul>
	<input type="hidden" id="id" name="id" value="${mvo.id }"> 
	<div>
		<input type="submit" value="확인" id="btn_hobby">
	</div>
	</form>
</body>
</html>