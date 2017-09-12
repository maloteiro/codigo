function atualizaAgendamento(status, seq_agendamento, div, obs){		
	$.ajax(
	{
		type: "POST",
		url: '?',
		data: 'd=index&a=index&f=AtualizarStatus&status='+status+'&seq_agendamento='+seq_agendamento+'&obs='+obs,
		beforeSend: function(){
		},
		success: function(txt){
			$('#'+div).html(txt);
		}
	}
	);
}

function verJustificativa(seq_agendamento){
	
	$.ajax(
	{
		type: "POST",
		url: '?',
		data: 'd=index&a=index&f=verJustificativa&seq_agendamento='+seq_agendamento,
		beforeSend: function(){
		},
		success: function(txt){
			//alert(txt);
			document.getElementById('justificativa').value=txt;
		}
	}
	);
}

$(function() {
	// a workaround for a flaw in the demo system (http://dev.jqueryui.com/ticket/4375), ignore!
	$("#dialog").dialog("destroy");
	
	$("#dialog-form").dialog({
		resizable: false,
		autoOpen: false,
		height: 212,
		width: 420,
		modal: true,
		buttons: {
			'Confirmar': function() {
				atualizaAgendamento('nao',$('#negativo').val(),'status_agendamento'+$('#negativo').val(),$('#observacoes').val())
				wiOpen('?a=index&d=index&f=Principal&num_horas='+$('#num_horas').val());
				$(this).dialog('close');				
			},
			Cancelar: function() {				
				$(this).dialog('close');
			}
		},
		close: function() {
			$('#observacoes').attr('value','');
						
		}
	});		
	
	
	$('.red')
		.button()
		.click(function() {	
			var valor = this.id;
			var tamanho = valor.length;
			var identificacao = valor.substr(1,tamanho);
			$('#negativo').attr('value',identificacao);		
			$('#dialog-form').dialog('open');
		});
	$('.green')
		.button()
		.click(function() {			
			var valor = this.id;
			var tamanho = valor.length;
			var identificacao = valor.substr(1,tamanho);
			atualizaAgendamento('sim',identificacao,'status_agendamento'+identificacao,'');
		});
	
});

$(function() {
	// a workaround for a flaw in the demo system (http://dev.jqueryui.com/ticket/4375), ignore!
	$("#dialog").dialog("destroy");
	
	$("#dialog-justificativa").dialog({
		resizable: false,
		autoOpen: false,
		height: 212,
		width: 420,
		modal: true,
		buttons: {
			'OK': function() {				
				$(this).dialog('close');				
			}
		},
		close: function() {
			$('#justificativa').attr('value','');
						
		}
	});
	
	$('.vJustificativa')
		.button()
		.click(function() {			
			var valor = this.id;
			var tamanho = valor.length;
			var identificacao = valor.substr(1,tamanho);			
			verJustificativa(identificacao);
			$('#dialog-justificativa').dialog('open');
		});
	
});
