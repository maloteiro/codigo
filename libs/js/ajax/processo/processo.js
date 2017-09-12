$(function() {
	$('#btn_add_novo').click(function() {
	  	wiOpen('?a=processo&d=processo&f=formCadastro');
	});
	
	$('#btn_pesquisar').click(function() {
	  	wiOpen('?a=processo&d=processo&f=formConsulta');
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
			"dsc_empresa_fantasia":{
				required: true								
			},
			"dsc_empresa_telefone":{
				required: true								
			}
			
			
		},
		messages:{			
			"dsc_empresa_fantasia":{
				required: "Preencha o campo nome fantasia"								
			},
			"dsc_empresa_telefone":{
				required: "Preencha o campo telefone"								
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