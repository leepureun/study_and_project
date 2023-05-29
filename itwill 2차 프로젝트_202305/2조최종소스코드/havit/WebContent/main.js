'use strict';


	
	let widthCheck = window.innerWidth;
	
	let imgLengthCheck = browseSizeCheck(widthCheck);
	console.log("imgLengthCheck : " + imgLengthCheck);
	let imageWidthCheck = slideImgSizeCheck(widthCheck);
	console.log("imageWidthCheck : " + imageWidthCheck);
	
	
	window.addEventListener(`resize`, () => {
		widthCheck = window.innerWidth;
		if(widthCheck > 1024 ){
			imageWidthCheck = 1240;
			imgLengthCheck = 2;
		} else if(widthCheck <= 540) {
			imageWidthCheck = 230*2;
			imgLengthCheck = 5;
		} else if(widthCheck <= 1024) {
			imageWidthCheck = 220*4;
			imgLengthCheck = 3;
		}
		console.log("imageWidthCheck : " + imageWidthCheck + ", imgLengthCheck : " + imgLengthCheck);
		console.log("widthCheck : " + widthCheck);
	});
	
	
	function browseSizeCheck(widthCheck) {
		let imgLength = 0;
		if(widthCheck > 1024 ){
			imgLength = 2;
		} else if(widthCheck <= 540) {
			imgLength = 5;
		} else if(widthCheck <= 1024) {
			imgLength = 3;
		}
		return imgLength;
	}
	
	function slideImgSizeCheck(widthCheck) {
		let imageWidth = 0;
		if(widthCheck > 1024 ){
			imageWidth = 250*5;
		} else if(widthCheck <= 540) {
			imageWidth = 230*2;
		} else if(widthCheck <= 1024) {
			imageWidth = 220*4;
		}
		return imageWidth;
	}

// Title Side Sortdown Toggle
	const sortDownBtn = document.querySelector('.nav__sortDown'); 
	const navMenu = document.querySelector('#nav');
	
	sortDownBtn.addEventListener('click', () => {
		console.log("sortDownBtn : " + sortDownBtn);
		navMenu.classList.toggle('open');
	});
	
	// 아이디별 각 생성된 카테고리 박스를 배열로 불러오기
	const categoryBox = document.querySelectorAll('.category__box');
	let currentList = new Array(categoryBox.length);
	
	// 각 박스마다 컨텐츠 컨테이너 불러와서 배열에 저장
	let contentFrame = new Array();
	for(var i = 0; i <= categoryBox.length - 1; i++ ) {
		contentFrame.push(categoryBox[i].querySelector('.content__frame'));
		if(contentFrame[i] != null) {
			currentList[i] = 1;
			console.log("contentFrame["+i + "] : "+contentFrame[i].childElementCount);
			console.log("currentList["+ i + "] : " + currentList[i]);
		}
	}
	for(let i  = 0; i <= categoryBox.length - 1; i++) {
		if(contentFrame[i] != null && contentFrame[i].childElementCount >= 5) {
			categoryBox[i].querySelector('.category__next').addEventListener('click', () => {
				console.log("contentFrame[" + i + "].childElementCount : " + contentFrame[i].childElementCount);
				if (currentList[i] >= imgLengthCheck ) {
					if(widthCheck > 1024){
						console.log("widthCheck : " + widthCheck);
						currentList[i] = 1;
					} else if(widthCheck <= 540){
						console.log("widthCheck : " + widthCheck);
						currentList[i] = 4;
					} else if(widthCheck <= 1024){
						console.log("widthCheck : " + widthCheck);
						currentList[i] = 2;
					}
					console.log("if 문 안에 currentList : " + currentList);
				}
				contentFrame[i].style.transform = `translateX(-${imageWidthCheck * currentList[i]}px)`;
				currentList[i]++;
				console.log("currentList["+ i +"] : " + currentList[i]);
			});    			
				
		
			categoryBox[i].querySelector('.category__prev').addEventListener('click', () => {
				if (currentList[i] === 1 ) {
					currentList[i] = 1;
				} else {
					currentList[i]--;
				}
				if(contentFrame[i] != null) {
					contentFrame[i].style.transform = `translateX(-${imageWidthCheck * (currentList[i] - 1)}px)`;
				}
			});	
		}
	}



