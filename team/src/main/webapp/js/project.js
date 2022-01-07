/**
 * 팀 프로젝트 스크립트
 */
function project(){};

project.view = function(){
	$frm = $('#frm_search')[0];
	$frm.action = 'view';
	$frm.submit();
}
project.noticeList = function(){
	$frm = $('#frm_search')[0];
	$frm.action = 'noticeList';
	$frm.submit();
}
project.notice = function(){
	$frm = $('#frm_search')[0];
	$frm.action = 'notice';
	$frm.submit();
}
project.ticket = function(){
	$frm = $('#frm_search')[0];
	$frm.action = 'ticket';
	$frm.submit();
}
project.join = function(){
	$frm = $('#frm_search')[0];
	$frm.action = 'join';
	$frm.submit();
}
project.login = function(){
	$frm = $('#frm_search')[0];
	$frm.action = 'login';
	$frm.submit();
}
project.search = function(){
	$frm = $('#frm_search')[0];
	$frm.action = 'searchList';
	$frm.submit();
}
project.reserve = function(){
	$frm = $('#frm_search')[0];
	$frm.action = 'seat';
	$frm.submit();
}
project.maps = function(){
	$frm = $('#frm_search')[0];
	$frm.action = 'maps';
	$frm.submit();
}
$(function(){
	
	$('#menu_btn').click(function(){
		$('#menu_bar').css('display', 'block')
		$('#close_btn').click(function(){
			$('#menu_bar').css('display', 'none')
		})
	})
	
	$('#search_btn').click(function(){
		$('#search_bar').css('display', 'block')
		
		
		$('#close_searchBtn').click(function(){
			$('#search_bar').css('display', 'none')
		})
	})
})
