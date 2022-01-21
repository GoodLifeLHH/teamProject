$(function(){ 
	$('#LargeNextBtn').click(function(){
		$.ajax({
				url:'kakaopay',
				dataType: 'json',
				success:function(data){
					var box = data.next_redirect_pc_url;
					window.open(box, 'vucket',"width=450, height=500, left=700, top=300");
				},
				error:function(error){
					alert(error);
				}
		});
	});
});