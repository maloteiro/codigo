$(function() {
	$('#btn_add_novo').click(function() {
	  	wiOpen('?a=admin&d=admin&f=formOrgao');
	});
	
	$('#btn_pesquisar').click(function() {
	  	wiOpen('?a=admin&d=admin&f=consultaOrgao');
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
			"tip_orgao_tipo":{
				required: true								
			},
			"dsc_orgao":{
				required: true								
			},
			"sig_orgao_sigla":{
				required: true								
			},
			"seq_perfil":{
				required: true								
			}
		},
		messages:{			
			"tip_orgao_tipo":{
				required: "O campo tipo é obrigatório"								
			},
			"dsc_orgao":{
				required: "O campo nome é obrigatório"								
			},
			"sig_orgao_sigla":{
				required: "O campo sigla é obrigatório"								
			},
			"seq_perfil":{
				required: "O campo perfil é obrigatório"								
			}
		},
		submitHandler: function(){				
			var params = $('#formulario').serialize(); 
			//alert(params)           
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
					$('#seq_orgao').attr("value",$('#tmp_seq_orgao').val());
					$('#message-red').show();													
				}
			});
	    },
	    errorClass: "invalid",
	    unhighlight: function(element, errorClass) {
			if (this.numberOfInvalids() == 0) {
				$("#table_message").hide();
			}			
		}
	    
	});
});