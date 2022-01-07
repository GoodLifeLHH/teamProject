/**
 * 
 */
let selectedSeatsArray = new Array();
let seatWrapper = document.querySelector('.seat-wrapper');
let clicked = '';
let div = '';
let seat = document.querySelectorAll('.seat');
let selectedSeats = document.querySelector('.selected-seats');
let allSeat = document.querySelector('.all-seats');
let remainSeat = document.querySelector('.remain-seats');
let remainSeats = document.querySelector('.remainSeat');
let reserveNumber = document.querySelector('.reserve-number');
let selectSeatListSeatR = document.querySelectorAll(
	'.select-seat-ul-seatR li'
);
let selectSeatListSeatS = document.querySelectorAll('.select-seat-ul-seatS li');
let selectSeatListSeatA = document.querySelectorAll('.select-seat-ul-seatA li');
let selectSeatListUlActive = '';
let seatRNumber = 0;
let seatSNumber = 0;
let seatANumber = 0;
let allNumber = 0;
let prevNumber = 0;
let seatRMoney = 0;
let seatSMoney = 0;
let seatAMoney = 0;
let allMoney = 0;

let checkRNumber = 0;
let checkSNumber = 0;
let checkANumber = 0;

let selectNumberSeatR = document.querySelectorAll('.select-number-seatR');
let selectNumberSeatS = document.querySelectorAll('.select-number-seatS');
let selectNumberSeatA = document.querySelectorAll('.select-number-seatA');

//예약 관련
let selectedPlay = document.querySelector('.selected-play');
let selectedTheaterPlaceInfo = document.querySelectorAll(
	'.selected-theater-place-info'
);
let theaterTime = document.querySelector('.theater-time');
let theaterDate = document.querySelector('.theater-date');
let ticketPrice = document.querySelector('.ticket-price');
let payMoney = document.querySelector('.payMoney');

let seatForm = document.querySelector('.seatForm');
let reserveButton = document.querySelector('.reserve-button');
let title = document.querySelector('.title');
let selectedTheater = document.querySelector('.selectedTheater');
let reserveDate = document.querySelector('.reserveDate');
let runningTime = document.querySelector('.runningTime');
let ticketNumber = document.querySelector('.ticketNumber');
let selectedSeat = document.querySelector('.selectedSeat');

//버튼클릭시 다른 class 추가 초기화해주기
function selectSeatList(list) {
	allNumber = 0;
	allMoney = 0;
	list.forEach(function(li) {
		//클릭시에 다른 class초기화해주기
		initList(list, li);
	});
}

function initList(list, li) {
	li.addEventListener('click', function() {
		list.forEach(function(li) {
			li.classList.remove('select-seat-ul-active');
		});
		li.classList.add('select-seat-ul-active');
		selectSeatListUlActive = document.querySelectorAll(
			'.select-seat-ul-active'
		);
		console.log("selectSeatListUlActive : " + selectSeatListUlActive);
		selectListUiFunction(selectSeatListUlActive);
		console.log('금액 : ' + allMoney);

		console.log("seatRNumber : " + seatRNumber);
		console.log("seatSNumber : " + seatSNumber);
		console.log("seatANumber : " + seatANumber);
		console.log("allNumber : " + allNumber);
	});
}

function selectListUiFunction(selectSeatListUlActive) {
	selectSeatListUlActive.forEach(function(li) {

		if (li.parentNode.classList.contains('select-seat-ul-seatR')) {
			seatRNumber = Number(li.innerHTML);
			seatRMoney = 20000 * seatRNumber;
			allMoney = seatRMoney + seatSMoney + seatAMoney;
			allNumber = seatRNumber + seatSNumber + seatANumber;
			ticketPrice.innerHTML = allMoney + '원';
			if (allNumber > 16) {
				li.classList.remove('select-seat-ul-active');
				allMoney -= seatRMoney;
				allNumber = allNumber - seatRNumber;

				selectNumberSeatR[0].classList.add('select-seat-ul-active');
				ticketPrice.innerHTML = allMoney + '원';
			}
		} else if (li.parentNode.classList.contains('select-seat-ul-seatS')) {
			seatSNumber = Number(li.innerHTML);
			seatSMoney = 8000 * seatSNumber;
			allMoney = seatRMoney + seatSMoney + seatAMoney;
			allNumber = seatRNumber + seatSNumber + seatANumber;
			ticketPrice.innerHTML = allMoney + '원';
			if (allNumber > 16) {
				li.classList.remove('select-seat-ul-active');
				//seatRNumber = seatSNumber = seatANumber = 0;
				allMoney -= seatSMoney;
				allNumber = allNumber - seatSNumber;

				selectNumberSeatS[0].classList.add('select-seat-ul-active');
				ticketPrice.innerHTML = allMoney + '원';
			}
		} else if (li.parentNode.classList.contains('select-seat-ul-seatA')) {
			seatANumber = Number(li.innerHTML);
			seatAMoney = 8000 * seatANumber;
			allMoney = seatRMoney + seatSMoney + seatAMoney;
			allNumber = seatRNumber + seatSNumber + seatANumber;
			ticketPrice.innerHTML = allMoney + '원';
		}


		// allNumber = seatRNumber + seatSNumber + seatANumber;
		// allMoney = seatRMoney + seatSMoney + seatAMoney;
		console.log(allNumber + '명');
		ticketPrice.innerHTML = allMoney + '원';

		payMoney.value = allMoney;
		console.log(allMoney);
	});
}

selectSeatList(selectSeatListSeatR);
selectSeatList(selectSeatListSeatS);
selectSeatList(selectSeatListSeatA);

for (let i = 1; i < 11; i++) {
	div = document.createElement('div');
	div.classList = 'seatButtonWrapper';
	seatWrapper.append(div);

	for (let j = 1; j < 13; j++) {
		let input = document.createElement('input');
		input.type = 'button';
		input.name = 'seats';
		input.classList = 'seat';
		//3중포문을 사용하지 않기위해
		mapping(input, i, j);
		div.append(input);
		//클릭시 이벤트
		inputClickEvent(input);
	}

	seat = document.querySelectorAll('.seat');
	remainSeat.innerHTML = seat.length;
	allSeat.innerHTML = seat.length;
}

seat.forEach(function(data) {
	//console.log(data.value.substring(1, data.value.length));
	// console.log(data.value.substring(0, data.value.length - 1));
	if (data.value.substring(1, data.value.length) == '3' |
		data.value.substring(1, data.value.length) == '7') {
		data.classList.add('left-margin');
	} else if (data.value.substring(1, data.value.length) == '10') {
		data.classList.add('right-margin');
	}
	//앞자리가 E로끝나는 좌석들에 class 추가
	if (
		data.value.substring(0, data.value.length - 1) == 'E' ||
		data.value.substring(0, data.value.length - 2) == 'E'
	) {
		data.classList.add('top-margin');
	}
});

function inputClickEvent(input) {
	input.addEventListener('click', function(e) {
		console.log("e.target.value : " + e.target.value);

		let checkRSeat = e.target.value.substring(0, e.target.value.length - 1) == 'A' ||
			e.target.value.substring(0, e.target.value.length - 2) == 'A' ||
			e.target.value.substring(0, e.target.value.length - 1) == 'B' ||
			e.target.value.substring(0, e.target.value.length - 2) == 'B' ||
			e.target.value.substring(0, e.target.value.length - 1) == 'C' ||
			e.target.value.substring(0, e.target.value.length - 2) == 'C';

		let checkSSeat = e.target.value.substring(0, e.target.value.length - 1) == 'D' ||
			e.target.value.substring(0, e.target.value.length - 2) == 'D' ||
			e.target.value.substring(0, e.target.value.length - 1) == 'E' ||
			e.target.value.substring(0, e.target.value.length - 2) == 'E' ||
			e.target.value.substring(0, e.target.value.length - 1) == 'F' ||
			e.target.value.substring(0, e.target.value.length - 2) == 'F';

		let checkASeat = e.target.value.substring(0, e.target.value.length - 1) == 'G' ||
			e.target.value.substring(0, e.target.value.length - 2) == 'G' ||
			e.target.value.substring(0, e.target.value.length - 1) == 'H' ||
			e.target.value.substring(0, e.target.value.length - 2) == 'H' ||
			e.target.value.substring(0, e.target.value.length - 1) == 'I' ||
			e.target.value.substring(0, e.target.value.length - 2) == 'I' ||
			e.target.value.substring(0, e.target.value.length - 1) == 'J' ||
			e.target.value.substring(0, e.target.value.length - 2) == 'J';

		if (checkRSeat) {
			if (seatRNumber < 1) {
				alert("R석 입니다.");
				return;
			} else if (checkRNumber < seatRNumber && seatRNumber >= 1) {
				checkRNumber += 1;
				console.log("insertCheckRNumber:" + checkRNumber);
			} else {
				alert("이미 좌석을 선택하셨습니다.");
				return;
			}
		}
		if (checkSSeat) {
			if (seatSNumber < 1) {
				alert("S석 입니다.");
				return;
			} else if (checkSNumber < seatSNumber && seatSNumber >= 1) {
				checkSNumber += 1;
			} else {
				alert("이미 좌석을 선택하셨습니다.");
				return;
			}
		}
		if (checkASeat) {
			if (seatANumber < 1) {
				alert("A석 입니다.");
				return;
			} else if (checkANumber < seatANumber && seatANumber >= 1) {
				checkANumber += 1;
			} else {
				alert("이미 좌석을 선택하셨습니다.");
				return;
			}
		}

		//중복방지 함수
		selectedSeatsArray = selectedSeatsArray.filter(
			function(element, index) {
				selectedSeatsArray.indexOf(element) != index
			});

		//click class가 존재할때(제거해주는 toggle)
		if (input.classList.contains('clicked')) {

			if (checkRSeat) {
				checkRNumber -= 2;
				console.log("delCheckRNumber:" + checkRNumber);
			} else if (checkSSeat) {
				checkSNumber -= 2;
			} else if (checkASeat) {
				checkANumber -= 2;
			}

			input.classList.remove('clicked');
			clicked = document.querySelectorAll('.clicked');
			//배열안의 값 제거
			selectedSeatsArray.splice(selectedSeatsArray.indexOf(e.target.value), 1);
			clicked.forEach(function(data) {
				selectedSeatsArray.push(data.value);
			});


			//class가 존재안할때 추가해주는 toggle
		} else {
			input.classList.add('clicked');
			clicked = document.querySelectorAll('.clicked');
			//선택한 번호의 갯수를 넘기면 동작 못하게 하는 코드
			console.log("allNumber : " + allNumber);
			if (clicked.length > 8) {
				input.classList.remove('clicked');
				alert("지정한 인원수를 넘었습니다(최대 8명)");
				return;
			}

			clicked.forEach(function(data) {
				selectedSeatsArray.push(data.value);
			});
		}

		console.log(selectedSeatsArray.length);
		console.log(selectedSeatsArray);
		//좌석번호의 innerHTML 설정
		selectedSeats.innerHTML = selectedSeatsArray;
		reserveNumber.innerHTML = selectedSeatsArray.length;
		remainSeat.innerHTML = seat.length - selectedSeatsArray.length;
		// if (selectedSeatsArray.length > 4) {
		//     return;
		// }
	});
}

function mapping(input, i, j) {
	if (i === 1) {
		input.value = 'A' + j;
	} else if (i == 2) {
		input.value = 'B' + j;
	} else if (i == 3) {
		input.value = 'C' + j;
	} else if (i == 4) {
		input.value = 'D' + j;
	} else if (i == 5) {
		input.value = 'E' + j;
	} else if (i == 6) {
		input.value = 'F' + j;
	} else if (i == 7) {
		input.value = 'G' + j;
	} else if (i === 8) {
		input.value = 'H' + j;
	} else if (i == 9) {
		input.value = 'I' + j;
	} else if (i == 10) {
		input.value = 'J' + j;
	} else if (i == 11) {
		input.value = 'K' + j;
	}
}

//form 제출시 hidden설정하기
reserveButton.addEventListener('click', function() {
	title.value = selectedPlay.innerHTML;
	selectedTheater.value =
		selectedTheaterPlaceInfo[0].innerHTML +
		' ' +
		selectedTheaterPlaceInfo[1].innerHTML;
	reserveDate.value = theaterDate.innerHTML;
	runningTime.value = theaterTime.innerHTML;
	ticketNumber.value = reserveNumber.innerHTML;
	selectedSeat.value = selectedSeats.innerHTML;
	remainSeats.value = remainSeat.innerHTML;
	console.log(allNumber + '임');
	console.log(ticketNumber.value);
	console.log(allNumber == ticketNumber.value);
	console.log(allNumber == Number(ticketNumber.value));
	if (
		Number(ticketNumber.value) == allNumber &&
		ticketNumber.value != '0' &&
		ticketNumber.value != 0
	) {
		seatForm.action = 'payment';
		seatForm.submit();
	} else {
		alert('좌석을 모두선택해 주세요.');
	}
});