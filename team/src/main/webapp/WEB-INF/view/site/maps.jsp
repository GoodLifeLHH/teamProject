<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>오시는 길·주차안내 | 소식·이용·참여 | 예술의전당</title>
	<link rel="stylesheet" type="text/css" href="./css/maps.css">
</head>
<body>
	<div id="maps_head">
		<img src="img/maps.png" style="width:100%; height:200px; margin-top:100px;">
	</div>
<div id="maps">
	<div class="maps_header">
		<div class="adress">
			<h1 class="maps_addressTitle">오시는길, 주차안내</h1>
			<p class="maps_address">주소 도로명 서울시 서초구 남부순환로 2406 예술의전당 (우 06757) </br> 지번 서울시 서초구 서초동 700번지 </br> 건물명 예술의전당(오페라하우스, 음악당, 한가람미술관,한가람디자인미술관, 서울서예박물관)</p>
	  </div>
	</div>					
	<div id="map" style="width:500px;height:550px;"></div>
		<script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=c8de39133e40daa705a8572a813fb680"></script>
			<script>
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = {
				        center: new kakao.maps.LatLng(37.479196696108446, 127.01163347229928), // 지도의 중심좌표
				        level: 5, // 지도의 확대 레벨
				        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
				    }; 
				// 지도를 생성한다 
				var map = new kakao.maps.Map(mapContainer, mapOption); 
				// 지도에 마커를 생성하고 표시한다
				var marker = new kakao.maps.Marker({
				    position: new kakao.maps.LatLng(37.479196696108446, 127.01163347229928), // 마커의 좌표
				    map: map // 마커를 표시할 지도 객체
				});			
			</script>
		<h2 class="maps_notice">원활한 관람을 위해서 대중교통 이용을 부탁드립니다.</h2>
	</div>
 	<div class="maps main">
      <div class="tabs">
        <div class="tab" data-tab-target="#tab1">
          <p>대중교통 이용안내</p>
        </div>
        <div class="tab" data-tab-target="#tab2">
          <p>승용차 이용안내</p>
        </div>
        <div class="tab" data-tab-target="#tab3">
          <p>공연장, 전시장 찾아가기</p>
        </div>
         <div class="tab" data-tab-target="#tab4">
          <p>실시간 주차정보</p>
         </div>
      </div>
  </div>
    <div class="maps content">
      <div id="tab1" data-tab-content class="items active">
       				<ul>
								<li>지하철</li>
									<ul>3호선<br/> 남부터미널역 5번출구 <br/>도보이동(약5~10분 소요)<br/>마을버스 22번(초록색)을 타고 두 정거장 이동</ul>
									<ul>2호선</br> 서초역 3번 출구 </br>마을버스 11번(초록색)을 타고 네정거장 이동 </br>도보이동(약20~25분 소요)</ul>
									<ul>4호선</br> 사당역 1번출구 </br>마을버스 17번(초록색)을 타고 16개 정거장 이동</ul>
								<li>버스</li>
									<ul>간선</br> 406,405</ul>
									<ul>지선</br> 5413</ul>
									<ul>직행</br> 1500-2,1553</ul>
									<ul>마을</br> 서초11,서초17,서초22</ul>
							</ul>
      </div>
      <div id="tab2" data-tab-content class="items">
       			 <ul>
								<li>남부순환로</li>
									<ul>양재 방면에서 오시는 경우</br>경부고속도로 서초IC 예술의전당 방향 →남부순환로 </br>사당방면으로 직진→ 예술의전당앞 교차로 좌측에 </br>예술의전당</ul>
									<ul>사당 방면에서 오시는 경우</br> 남부순환로 양재방면으로 직진→예술의전당앞 교차로 </br>우측에 예술의전당</ul>
								<li>올림픽대로</li>
									<ul>공항 방면에서 오시는 경우</br> 올림픽대로 반표대교 분기점에서 고속터미널 방면으로 </br>좌회전→곧바로 반포대교 고가차로를 타고 </br>서초역 방면으로 직진→서초3동 사거리를 지나 우면산</br>터널 옆으로 우측도로 진집→예술의전당앞 교차로 정면에</br>예술의전당</ul>
									<ul>잠실 방면에서 오시는 경우</br> 올림픽대로 한남대교 분기점에서 한남IC진입→곧이어</br>한남IC부산방향으로 경부고속도로 진입→서초IC</br>예술의전당 방향으로 나와 사당방면으로 직진→예술의전당</br>앞 교차로 좌측에 예술의전당</ul>
							</ul>
      </div>
      <div id="tab3" data-tab-content class="items">
        			<ul>
								<li>비타민스테이션 안내도</li>
									<ul>오페라하우스 비타민스테이션 로비에서</br>공연장,전시장 찾아가기</ul>
									<img src="img/maps1.gif" style="width:800px; height:600px;">
								<li>사전정산기 설치장소</li>
									<ul>신속한 출차를 위해</br>각 공간에 비치된 사전 정산기를 이용하여</br>미리 주차요금을 정산하여 주시기를 바랍니다.</ul>
									<ul>설치장소</br>오페라하우스 1층,2층,3층</br>음악당 지층, 1층</br>한가람미술관 1층, 한가람디자인미술관 1층,</br>한가람미술관 광장(통로)</br>비타민스테이션</ul>
									<img src="img/maps2.gif" style="width:800px; height:600px;">
							</ul>
      </div>
       <div id="tab4" data-tab-content class="items">
       				<ul>
								<li>실시간주차 가능대수</li>
									<ul>음악당주차장</br> 총611대 590</br>오페라주차장</br> 총699대 660 </ul>
								<li>주차장 이용안내</li>
									<ul>공연.전시 시설과 가까운 주차장을 이용하세요</ul>
									<ul>음악당 주차장</br> 콘서트홀,IBK챔버홀, 리사이틀홀, 인춘아트홀, 서울서예박물관, 세계음악분수 이용고객</ul>
									<ul>오페라 주차장</br> 오페라극장, 토월극장, 자유소극장, 서비스플라자, 한가람미술관, 한가람디자인미술관, 미술아카데미 이용고객</ul>							
							</ul>
      </div>
    </div>
     <script src="./js/maps.js"></script>
</body>
</html>