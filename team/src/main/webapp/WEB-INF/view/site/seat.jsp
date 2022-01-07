<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>seat</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="stylesheet" type='text/css' href="./css/seat.css">
</head>
<body>
	<div class="select-container">
		<div class="select-wrapper">
			<div class="select-seat-container">
				<div class="select-seat-number-container">
					<div class="select-seat-number-wrapper" id="selectSeatNumberWrapper">
						<div class="select-seat">
							<div class="select-seat-grade">R석(A,B,C 좌석)</div>
							<div class="select-seat-number">
								<ul class="select-seat-ul select-seat-ul-seatR">
									<li class="select-number-seatR ">0</li>
									<li class="select-number-seatR">1</li>
									<li class="select-number-seatR">2</li>
									<li class="select-number-seatR">3</li>
									<li class="select-number-seatR">4</li>
									<li class="select-number-seatR">5</li>
									<!--  <li class="select-number-seatR">6</li>
                                    <li class="select-number-seatR">7</li>
                                    <li class="select-number-seatR">8</li> -->
								</ul>
							</div>
						</div>
						<div class="select-seat">
							<div class="select-seat-grade">S석(D,E,F 좌석)</div>
							<div class="select-seat-number">
								<ul class="select-seat-ul select-seat-ul-seatS">
									<li class="select-number-seatS">0</li>
									<li class="select-number-seatS">1</li>
									<li class="select-number-seatS">2</li>
									<li class="select-number-seatS">3</li>
									<li class="select-number-seatS">4</li>
									<li class="select-number-seatS">5</li>
									<!-- <li class="select-number-seatS">6</li>
                                    <li class="select-number-seatS">7</li>
                                    <li class="select-number-seatS">8</li> -->
								</ul>
							</div>
						</div>
						<div class="select-seat">
							<div class="select-seat-grade">A석(G,H,I,J 좌석)</div>
							<div class="select-seat-number">
								<ul class="select-seat-ul  select-seat-ul-seatA">
									<li class="select-number-seatA">0</li>
									<li class="select-number-seatA">1</li>
									<li class="select-number-seatA">2</li>
									<li class="select-number-seatA">3</li>
									<li class="select-number-seatA">4</li>
									<li class="select-number-seatA">5</li>
									<!-- <li class="select-number-seatA">6</li>
                                    <li class="select-number-seatA">7</li>
                                    <li class="select-number-seatA">8</li> -->
								</ul>
							</div>
						</div>

					</div>

				</div>
				<div class="select-seatNumber">
					<div class="reserve-number-wrapper">
						<div class="reserve-number-title">선택된 좌석 수</div>
						<div class="reserve-number"></div>
						<br/>
						<div class="select-play-place">
							<span>남은좌석</span><span class="remain-seats"></span>/<span
								class="all-seats"></span>
						</div>
					</div>
				</div>
				<div class="select-seat-information">
					<div class="selected-play">getTitle</div>
					<div class="select-seat-information-wrapper">
						<div class="select-play-place selected-theater-place-info">getTheater</div>
						<div class="select-play-place selected-theater-place-info">getStage</div>

					</div>
					<div class="select-play-date">
						<div class="theater-date">getPlayDate</div>
						<div class="theater-time">getRunningTime</div>
					</div>
					<div class="selected-seats-wrapper">
						<span class="selected-seats-title">좌석번호</span> <span
							class="selected-seats">선택한 좌석이 없습니다.</span>
					</div>
					<div class="ticket-price-wrapper">
						<div class="ticket-price-title">가격</div>
						<div class="ticket-price">0원</div>
					</div>
					<form class="seatForm" method="post">
						<input type="hidden" class="title" name="title"> <input
							type="hidden" class="selectedTheater" name="selectedTheater">
						<input type="hidden" class="reserveDate" name="movieDate">
						<input type="hidden" class="runningTime" name="runningTime">
						<input type="hidden" class="remainSeat" name="remainSeat">
						<input type="hidden" class="movieAge" name="movieAge"
							value="getMovieAge">
						<!-- 티켓의수(선택한 좌석) -->
						<input type="hidden" class="ticketNumber" name="ticketNumber">
						<input type="hidden" class="selectedSeat" name="selectedSeat">
						<!-- 결제 정보 -->
						<input type="hidden" class="payMoney" name="payMoney"> <input
							type="button" class="reserve-button" value="결제하기"></input>
					</form>
				</div>

			</div>
			<div class="seat-container">

				<div class="seat-wrapper">
					<div class="screen-view-wrapper">
						<div class="screen-view">무대</div>
					</div>
					<div class="exit-wrapper">
						<div class="main-exit">출입구</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="./js/seat.js"></script>
</body>
</html>