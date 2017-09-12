$(function() {
	$('#btn_add_novo').click(function() {
	  	wiOpen('?a=servidor&d=servidor&f=formSolicitacao');
	});
	
	$('#btn_pesquisar').click(function() {
	  	wiOpen('?a=servidor&d=servidor&f=consultaSolicitacao');
	});	
	
	
	$("#formulario").validate({		
	    invalidHandler: function(form, validator) {
      		var errors = validator.numberOfInvalids();      		
      		if (errors) {         			     		
        		$('#table_message').show();
      		} 
    	},
		errorLabelContainer: "#messageBoxAtribuicao",		
		wrapper: "div",		
		rules:{
			"seq_sistema":{
				required: true								
			},
			"flg_solicitacao_servidor":{
				required: true								
			},
			"flg_solicitacao_fisico":{
				required: true								
			},
			"num_solicitacao_memoria":{
				required: true								
			},
			"tip_solicitacao_memoria":{
				required: true								
			},
			"num_solicitacao_nucleo":{
				required: true								
			},
			"num_solicitacao_disco":{
				required: true								
			},
			"tip_solicitacao_disco":{
				required: true								
			}
			
			
			
		},
		messages:{			
			"seq_sistema":{
				required: "Preencha o campo sistema operacional"								
			},
			"flg_solicitacao_servidor":{
				required: "Preencha o campo Tipo de servidor"								
			},
			"flg_solicitacao_fisico":{
				required: "Preencha o campo Tipo de servidor (F�sico ou virtual)"								
			},
			"num_solicitacao_memoria":{
				required: "Preencha o campo quantidade de mem�ria"								
			},
			"tip_solicitacao_memoria":{
				required: "Preencha o campo quantidade de mem�ria"								
			},
			"num_solicitacao_nucleo":{
				required: "Preencha o campo quantidade de n�cleos"								
			},
			"num_solicitacao_disco":{
				required: "Preencha o campo Quantidade de espa�o em disco"								
			},
			"tip_solicitacao_disco":{
				required: "Preencha o campo Quantidade de espa�o em disco"								
			}
			
		},
		submitHandler: function(){
			documents.forms[0].submit();				
			/*var params = $('#formulario').serialize(); 
			/*$('#formulario').submit();
			alert(params)           
			$.ajax({
				type: "POST",
				url: '?',
				enctype: 'multipart/form-data',
				data: params,
				beforeSend: function(){
					$('#message-red').hide();					
		        },
				success: function(txt){					
					$('.red-left').html(txt);
					$('#update').attr("value","S");
					$('#seq_usuario').attr("value",$('#tmp_seq_usuario').val());
					$('#message-red').show();													
				}
			});*/
	    },
	    errorClass: "invalid",
	    unhighlight: function(element, errorClass) {
			if (this.numberOfInvalids() == 0) {
				$("#table_message").hide();
			}			
		}
	    
	});
});