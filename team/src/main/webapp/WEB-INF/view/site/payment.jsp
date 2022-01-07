<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>payment</title>
<link rel='stylesheet' type='text/css' href='./css/payment.css'>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="./js/kakao.js"></script>
<script src="./js/payment.js"></script>
</head>
<body>

<div class="container">
	<form id="formConfirm" name="formConfirm" accept-charset='euc-kr' method="POST">
	<div class="select-title">결제하기</div>
	
	<div class="inner_left">
		<img src="//ticketimage.interpark.com/TicketImage/onestop/notice_title.gif" alt="취소수수료 동의후 결제하기 버튼클릭" />
		<br/>
		<h3 class="title"><img src="//ticketimage.interpark.com/TicketImage/onestop/stit_cancel.gif" alt="취소수수료" /></h3>
		
					<img src="//ticketimage.interpark.com/TicketImage/onestop/sac_cancelfee_02.jpg" alt="취소수수료"/>
				
		<ul>
			
				<li>관람일 3일 전까지, 예매 당일 밤 12시 이전 취소시에는 취소수수료 없음</li>
				<li>관람일 2일 전부터는, 예매 당일 취소시에도 취소수수료 부과됨(취소기간 내에 한함)</li>
				<li>날짜지정이 없는 상시상품의 경우 취소수수료 없음(단, 종료 후 환불 불가)</li>
				<li>특정상품의 경우 취소수수료 정책이 달라질 수 있습니다.</li>
				
			<li>배송 시작 후 취소 시에는  <em class="col2">배송비가 환불되지 않으며,</em> 취소수수료는 반송된 <em class="col2">티켓의 도착 일자를 기준</em>으로 부과됩니다. </li>
			
		</ul>
		
			<div id="agreement" class="agreement">
			<h3><img src="//ticketimage.interpark.com/TicketImage/onestop/txt_agree.gif" alt="개인정보 제3자 정보제공" /></h3>

			<div id="agreement_box" class="box">
				예술의전당 입장권 판매 대행사인 (주)인터파크가 제공하는 서비스를 통하여 이용자간 거래관계가 이루어진 경우 고객응대 및 공연정보 안내 등을 위하여 관련한 정보는 필요한 범위내에서 거래 당사자에게 아래와 같이 제공됩니다.<br />
				<br />
				1. 개인정보 제공 동의<br />
				인터파크는 개인정보보호법에 따라 이용자의 개인정보에 있어 아래와 같이 알리고 동의를 받아 상품의 기획사에 제공합니다.<br />
				<br />
				2. 개인정보 제공받는자 <br />
				<span class="text_emphasis">예술의전당</span><br />
				<br />
				3. 개인정보 이용 목적<br />
				<span class="text_emphasis">
				기획사 : 티켓 현장발권, 캐스팅 변경, 공연취소 등에 대한 고객 안내, 티켓 정당 예매 확인 및 관련 업무 수행<br />
				</span>
				<br />
				4. 개인정보 제공 항목<br />
				<span class="text_emphasis">성명, 아이디, 전화번호, 휴대폰번호, 이메일주소, 주문/배송 정보</span><br />
				<br />
				5. 개인정보 보유 및 이용 기간<br />
				<span class="text_emphasis">개인정보 이용목적 달성 시까지(단, 관계 법령의 규정에 의해 보존의 필요가 있는 경우 및 사전 동의를 득한 경우 해당 보유기간까지)</span>
				<br/><br />※ 위 개인정보 제공에 대한 동의를 거부할 권리가 있으며, 만약 동의를 거부할 경우 티켓 예매서비스 이용에 제한을 받을 수 있습니다.
                   <br /><br />
			</div>
			
			</div>
			
		<p class="check">
			<input id="CancelAgree" onclick="fnCheckCancelAgree()" type="checkbox" >
			<label for="CancelAgree" class="check1">취소수수료/취소기한을 확인하였으며, 동의합니다.</label>
			<input id="CancelAgree2" onclick="fnCheckCancelAgree()" type="checkbox" >
			<label for="CancelAgree2" class="check2">제3자 정보제공 내용에 동의합니다.</label>				
		</p>
	</div>

	<div class="inner_right">
		<div class=pay_info>
			<h3 class="title"><img src="//ticketimage.interpark.com/TicketImage/onestop/stit_payment_03.gif" alt="결제정보" /></h3>
			<table class="list2">
				<caption>결제상세정보</caption>
				<colgroup>
				<col width="50%" />
				<col width="50%" />
				</colgroup>
				<tr>
					<th>결제방법</th>
					<th class="brN">결제할 금액</th>
				</tr>
			
				<tr>
					<td>신용카드</td>
					<td class="taR">
					Price
					</td>
				</tr>
			
			</table>
			<p class="exp">우측 결제하기 버튼 클릭 후 다음 페이지에서 예매 확인서가 정상적으로 나타나지 않거나 에러 메시지를 받은 경우,<br />
				<strong>반드시 [예매확인/취소]에서 예매내역을 확인해 주시기 바랍니다.</strong></p>
		</div>
		
		<div class="show_info">
		 <div class="image"><img src="./img/han.gif" width="98" height="104" alt="한화생명과 함께하는 예술의전당 11시 콘서트(1월) 포스터" onerror="this.src='http://ticketimage.interpark.com/TicketImage/onestop/no_image.gif'"/></div>
		 <div class="exp">
		     <em><span title="한화생명과 함께하는 예술의전당 11시 콘서트(1월)">한화생명과 함께하는 예술의전당 11시 콘서트(1월)</span></em>
		     <ul>
		         <li>2022.01.27 ~ 2022.01.27</li>
		         <li><span title="예술의전당 콘서트홀">예술의전당 콘서트홀</span></li>
		         <li>8세이상 관람가능</li>
		         <li>관람시간 : 120분</li>
		     </ul>
		 </div>
		</div>
		
		<div class="buy_info">
		 <h3 class="title"><img src="//ticketimage.interpark.com/TicketImage/onestop/tit_buy.gif" alt="나의 예매정보 선택현황" /></h3>
		 <table>
			 <colgroup><col width="32%" /><col width="68%" /></colgroup>
			 <tbody>
			 
			   <tr class="fir" >
			       <th>일시</th>
			       <td><span id="MyPlayDate" name="MyPlayDate">selectedTheater</span></td>
			   </tr>
			   
			   <tr>
			       
			       <th>선택좌석<br />(<span id="MySelectedSeatCnt" name="MySelectedSeatCnt">0</span>석)</th>
			       
			       <td class="seat">
			           <div class="scrollY">
			               <ul>
			                   <span id="MySelectedSeat" name="MySelectedSeat"></span>
			               </ul>
			           </div>
			       </td>
			   </tr>
			   <tr>
			       <th>티켓금액</th>
			       <td><span id="MyTicketAmt" name="MyTicketAmt">Price</span></td>
			   </tr>
		
			   <tr>
			       <th>할인</th>
			       <td><div class="skip"><span id="MyDiscount" name="MyDiscount">Discount</span></div></td>
			   </tr>
			   
			   <tr>
			       <th>취소기한 </th>
			       <td class="txt1"><span id="MyCancelableDate" name="MyCancelableDate">관람일시 선택 후 확인가능</span></td>
			   </tr>
			   <tr class="line2">
			       <th>취소수수료 </th>
			       <td class="txt1"> <span id="MyCancelPenalty" name="MyCancelPenalty">관람일시 선택 후 확인가능</span></td>
			   </tr>
			   <tr class="total">
			       <th>총 결제금액</th>
			       <td><span id="MyTotalAmt" name="MyTotalAmt"><strong>0</strong> 원</span></td>
			   </tr>
			     
			 </tbody>
		 </table>
		 <p class="btn" id="LargeNextBtn" style="display:;"><a href="javascript:fnNextStep('P');" id="LargeNextBtnLink" onfocus="this.blur();" title="다음단계 페이지 이동"><img src="//ticketimage.interpark.com/TicketImage/onestop/btn_next.gif" alt="다음단계" id="LargeNextBtnImage"/> </a></p>
		 
		</div>
		
	</div>
	</form>
</div>
</body>
</html>