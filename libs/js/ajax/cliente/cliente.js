$(function() {	
	dialog = $( "#dialog-message" ).dialog({
		autoOpen: false,
		modal: true,
		height: 600,
		width: 800,
		buttons: {
			Ok: function() {
				$( this ).dialog( "close" );
			}
		}
	});
	$('#btn_add_nova_entrevista').click(function() {
	  	wiOpen('?a=cliente&d=cliente&f=formCadastroEntrevista&seq_cliente='+$('#seq_cliente').val());
	});
	
	$('#btn_add_novo_artefato').click(function() {
	  	wiOpen('?a=cliente&d=cliente&f=formCadastroArtefato&seq_cliente='+$('#seq_cliente').val());
	});
        
    $('#btn_add_novo').click(function() {
	  	wiOpen('?a=cliente&d=cliente&f=formCadastro');
	});
        
	$('#btn_voltar_entrevista').click(function() {
	  	wiOpen('?a=cliente&d=cliente&f=formCadastro&seq_cliente='+$('#seq_cliente').val());
	});
	
	$('#btn_voltar_artefato').click(function() {
	  	wiOpen('?a=cliente&d=cliente&f=formCadastro&seq_cliente='+$('#seq_cliente').val());
	});
	
	$('#btn_pesquisar').click(function() {
	  	wiOpen('?a=cliente&d=cliente&f=formConsulta');
	});	
});

function busca_conteudo(seq_artefato){
	$.ajax({
		type: "POST",
		url: '?',
		data: 'a=cliente&d=cliente&f=ajaxVisualizar&seq_artefato='+seq_artefato+'&token='+$('#token').val()+'&seq_cliente='+$('#seq_cliente').val(),
		beforeSend: function(){				
		},
		success: function(txt){
			$('#conteudoArquivo').html(txt);
			dialog.dialog( "open" );
			//$('#message-red').show();													
		}
	});
	
	
}
