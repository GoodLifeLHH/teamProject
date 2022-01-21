/**
 * 
 */
var loadInterval = []; //이미지가 서버에 upload되었는지 체크하는 기능
function summer() {


	var fonts = [
		"맑은 고딕", "고딕", "돋음", "바탕", "바탕체", "굴립", "굴림체"
	]
	fonts.sort();

	$('#summernote').summernote({
		height: 300,
		fontNames: fonts,
		callbacks: {
			onImageUpload: function(files) {
				loadInterval.length = files.length;
				$('#insert').addClass('spinner');//spinner 추가
				
				for(var i = files.length-1 ; i>=0 ; i--){//처음에 입력된 값부터 꺼내기 위해(last in first out)
					sendFile(i, files[i]); //ajax
				}
			},
			onMediaDelete : function(target){
				console.log("삭제");
				var file = decodeURI(target[0].src);//한글이 깨져서 설정(서버 환경마다 달라서 체크 후 설정)
				
				$.ajax({
					data  : {target : file},
					type  : 'POST',
					url		: 'summerDelete',
					cache : false,
					success : function(msg){
						console.log("delete ok");
					}
				})
			}
		}
	});
}

//base64로 저장하지 않기 위해
function sendFile(intervalPos, file){
	
	var form_data = new FormData(); // form tag 생성
	form_data.append('file', file);
	$.ajax({
		data	  		: form_data,
		type 				: 'POST',
		url 	  		: 'summerUp',
		enctype 		: 'multipart/form-data',
		cache				: false,
		contentType : false, //데이터를 바이너리형태로 전송
		processData : false, //데이터를 바이너리형태로 전송
		success			: function(img){//SummerServlet의 out.print로부터 받는다
			//$('semmernote').summernote('editor.insertImage', img); 급하게 load하기때문에 에러가 난다.
			//ajax는 status == 200 readyState == 4 이지만 서버는 계속해서 저장하는 상태일 수 있다.
			loadInterval[intervalPos] = setInterval(loadCheck.bind(null, intervalPos, img), 1500); //1.5초에 한번씩 function 호출
		}
	})
}
function loadCheck(pos, img){//pos == intervalPos
	var target = new Image(); //업로드가 될 이미지
	target.onload = function(){//이미지가 모두 서버에 저장된 상태
		clearInterval(loadInterval[pos]);
		$('#summernote').summernote('editor.insertImage', img);
		$('#insert').removeClass('spinner');
	}//이미지 미리보기
	target.src = img;
}

function summer2() {


	var fonts = [
		"맑은 고딕", "고딕", "돋음", "바탕", "바탕체", "굴립", "굴림체"
	]
	fonts.sort();

	$('#summernote2').summernote({
		height: 300,
		fontNames: fonts,
		callbacks: {
			onImageUpload: function(files) {
				loadInterval.length = files.length;
				$('#insert').addClass('spinner');//spinner 추가
				
				for(var i = files.length-1 ; i>=0 ; i--){//처음에 입력된 값부터 꺼내기 위해(last in first out)
					sendFile2(i, files[i]); //ajax
				}
			},
			onMediaDelete : function(target){
				console.log("삭제");
				var file = decodeURI(target[0].src);//한글이 깨져서 설정(서버 환경마다 달라서 체크 후 설정)
				
				$.ajax({
					data  : {target : file},
					type  : 'POST',
					url		: 'summerDelete',
					cache : false,
					success : function(msg){
						console.log("delete ok");
					}
				})
			}
		}
	});
}

//base64로 저장하지 않기 위해
function sendFile2(intervalPos, file){
	
	var form_data2 = new FormData(); // form tag 생성
	form_data2.append('file', file);
	$.ajax({
		data	  		: form_data2,
		type 				: 'POST',
		url 	  		: 'summerUp',
		enctype 		: 'multipart/form-data',
		cache				: false,
		contentType : false, //데이터를 바이너리형태로 전송
		processData : false, //데이터를 바이너리형태로 전송
		success			: function(img){//SummerServlet의 out.print로부터 받는다
			//$('semmernote').summernote('editor.insertImage', img); 급하게 load하기때문에 에러가 난다.
			//ajax는 status == 200 readyState == 4 이지만 서버는 계속해서 저장하는 상태일 수 있다.
			loadInterval[intervalPos] = setInterval(loadCheck2.bind(null, intervalPos, img), 1500); //1.5초에 한번씩 function 호출
		}
	})
}
function loadCheck2(pos, img){//pos == intervalPos
	var target = new Image(); //업로드가 될 이미지
	target.onload = function(){//이미지가 모두 서버에 저장된 상태
		clearInterval(loadInterval[pos]);
		$('#summernote2').summernote('editor.insertImage', img);
		$('#insert').removeClass('spinner');
	}//이미지 미리보기
	target.src = img;
}
