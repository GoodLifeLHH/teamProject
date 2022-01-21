/**
 * 팀 프로젝트 스크립트
 */
function project() { };
project.page = function(nowPage) {
	$frm = $('#frm_project')[0];
	$frm.nowPage.value = nowPage;
	$frm.action = 'ticket';
	$frm.submit();
}
project.cancelReservation = function() {
	$frm = $('#frm_search')[0];
	$frm.action = 'cancelReservation';
	$frm.submit();
}
project.searchPage = function(nowPage) {
	$frm = $('#frm_project')[0];
	$frm.nowPage.value = nowPage;
	$frm.action = 'searchList';
	$frm.submit();
}
project.view = function(serial) {
	$frm = $('#frm_project')[0];
	$frm.serial.value = serial;
	$frm.action = 'view';
	$frm.submit();
}
project.noticeList = function() {
	$frm = $('#frm_search')[0];
	$frm.action = 'noticeList';
	$frm.submit();
}
project.notice = function() {
	$frm = $('#frm_search')[0];
	$frm.action = 'notice';
	$frm.submit();
}
project.ticket = function() {
	$frm = $('#frm_search')[0];
	$frm.action = 'ticket';
	$frm.submit();
}
project.join = function() {
	$frm = $('#frm_search')[0];
	$frm.action = 'join';
	$frm.submit();
}
project.login = function() {
	$frm = $('#frm_search')[0];
	$frm.action = 'loginPage';
	$frm.submit();
}
project.logout = function() {
	$frm = $('#frm_login')[0];
	if(window.confirm("로그아웃 하시겠습니까?")){
		$frm.action = 'logout';
		$frm.submit();
	}
}
project.search = function() {
	$frm = $('#frm_search')[0];
	$frm.action = 'searchList';
	$frm.submit();
}
project.searchList = function() {
	$frm = $('#frm_searchList')[0];
	$frm.action = 'searchList';
	$frm.submit();
}
project.reserve = function() {
	$frm = $('#frm_search')[0];
	$frm.action = 'seat';
	$frm.submit();
}
project.maps = function() {
	$frm = $('#frm_search')[0];
	$frm.action = 'maps';
	$frm.submit();
}
project.qna = function() {
	$frm = $('#frm_search')[0];
	$frm.action = 'qna';
	$frm.submit();
}

project.refund = function() {
	$frm = $('#frm_search')[0];
	if (window.confirm("정말 취소 하시겠습니까?")) {
		$frm.action = 'result';
		$frm.submit();
	}
	return;
}
project.main = function() {
	$frm = $('#frm_search')[0];
	$frm.action = '/';
	$frm.submit();
}
project.information = function() {
	$frm = $('#frm_search')[0];
	$frm.action = 'information';
	$frm.submit();
}
project.insertPlay = function() {
	$frm = $('#frm_search')[0];
	$frm.action = 'insertPlay';
	$frm.submit();
}
project.insertPlayModify = function(serial) {
	$frm = $('#frm_project')[0];
	$frm.serial.value = serial;
	$frm.action = 'insertPlayModify';
	$frm.submit();
}

project.insertPlaySave = function() {
	if (window.confirm("연극정보를 모두 입력하셨나요?")) {
		$param = $('#frm_insertPlay').serialize();
		$.post('insertPlaySave', $param, function(data) {
			var json = JSON.parse(data);
			if (json.flag == 'OK') {
				var $fd = $('#frm_upload')[0];
				$fd.enctype = 'multipart/form-data';
				$fd.action = "fileUp?job=i";
				$fd.submit();
			} else {
				alert("저장중 오류 발생");
			}
		})
	}
}
project.insertPlayModifySave = function() {
	$param = $('#frm_insertPlay').serialize();
	
	$.post('insertPlayModifySave', $param, function(data){
		var json = JSON.parse(data);
		if(json.flag=="OK"){
			$frm = $('#frm_upload')[0];
			$frm.enctype = 'multipart/form-data';
			$frm.action = "fileUp?job=m";
			$frm.submit();
		}else{
			alert("수정중 오류가 발생했습니다.");
			$frm = $('#frm_upload')[0];
			$frm.action = 'ticket';
			$frm.submit();
		}
	})
}
project.deletePlayInfo = function() {
	if(window.confirm("정말 삭제 하시겠습니까?")){
		$frm = $('#frm_project')[0];
		$frm.action = 'deletePlayInfo';
		$frm.submit();		
	}
}

project.insertNotice = function() {
	$frm = $('#frm_search')[0];
	$frm.action = 'insertNotice';
	$frm.submit();
}
project.result = function() {
	$frm = $('#frm_search')[0];
	$frm.action = 'result';
	$frm.submit();
}
project.mypage = function() {
	$frm = $('#frm_search')[0];
	$frm.action = 'mypage';
	$frm.submit();
}
$(function() {

	$(".plus").on("click", function() {
		$(".list_hidden").removeClass("hidden");
		$(".plus").addClass("clear");
	});

	$('#menu_btn').click(function() {
		$('#menu_bar').css('display', 'block')
		$('#close_btn').click(function() {
			$('#menu_bar').css('display', 'none')
		})
	})

	$('#search_btn').click(function() {
		$('#search_bar').css('display', 'block')


		$('#close_searchBtn').click(function() {
			$('#search_bar').css('display', 'none')
		})
	})
})

