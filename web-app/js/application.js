if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
		
	})(jQuery);
}

function showDialog(modalObj){
	$('#'+modalObj).modal('show');
}


function chkImg(url,modalObj){
	
	if($('#imgUrl').val()==""){
		alert("請輸入圖片網址");
		return false;
	}
	
	if($('#imgUrl').val().indexOf('http://')!=0){
		alert("請輸入 http:// 開頭的位置");
		return false;
	}
	
	$('#previewImg').attr("src",$('#imgUrl').val());
	
	$('#'+modalObj).modal('show');
	$.post(url, { imgUrl: $('#imgUrl').val() } ).done(function(data) {  if(data.code==0){alert('辨識成功');  $('#resp').html("伺服器回傳："+data); }else{alert('失敗')}; $('#resp').html("伺服器回傳："+data);  $('#pageModal').modal('hide');  }).fail(function() { alert("error"); });
	
}


