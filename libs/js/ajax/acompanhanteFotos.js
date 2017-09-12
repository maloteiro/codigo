function removerNormal(foto){
	$('#seq_foto').attr('value', foto);
	var params = $('#formulario').serialize();
	$.ajax({
		type: "POST",
		url: '?',		
		data: params,
		beforeSend: function(){
			$('#message-red').hide();					
        },
		success: function(txt){					
			$('.red-left').html(txt);
			$('#update').attr("value","S");
			$('#seq_usuario').attr("value",$('#tmp_seq_usuario').val());
			$('#message-red').show();
			$('#div'+foto).hide();													
		}
	});
}
