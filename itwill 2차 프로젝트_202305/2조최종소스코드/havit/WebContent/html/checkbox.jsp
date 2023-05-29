<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>

#opt{
	border : 4px solid lightgray;
	border-radius: 10px;
	padding:10px;
	}
</style>
    <div id="opt">
         <p>나이대:
	       <input type="checkbox" name="optAge" value="10">10대&nbsp;&nbsp;
	       <input type="checkbox" name="optAge" value="20">20대&nbsp;&nbsp;
	       <input type="checkbox" name="optAge" value="30">30대&nbsp;&nbsp;
	       <input type="checkbox" name="optAge" value="40">40대&nbsp;&nbsp;
	       <input type="checkbox" name="optAge" value="50">50대&nbsp;&nbsp;
		</p>
		<br>
		<p>시간대:
	       <input type="checkbox" name="optDay" value="평일오전">평일오전&nbsp;
	       <input type="checkbox" name="optDay" value="평일오후">평일오후&nbsp;
	       <input type="checkbox" name="optDay" value="주말오전">주말오전&nbsp;
	       <input type="checkbox" name="optDay" value="주말오후">주말오후&nbsp;
		</p>
		<br>
		<p>성별&nbsp;&nbsp;&nbsp;:
	       <input type="checkbox" name="optGen" value="남성만">남성만&nbsp;&nbsp;
	       <input type="checkbox" name="optGen" value="여성만">여성만&nbsp;&nbsp;
	       <input type="checkbox" name="optGen" value="상관없음">상관없음&nbsp;&nbsp;
		</p>
	</div>