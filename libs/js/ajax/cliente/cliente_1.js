$(function() {
	 $("#formulario").validate({
	 	event: 'blur',		
	    invalidHandler: function(form, validator) {
      		var errors = validator.numberOfInvalids();      		
      		if (errors) {         			     		
        		$('#table_message').show();
      		} 
    	},
		errorLabelContainer: "#messageBoxAtribuicao",		
		wrapper: "div",		
		rules:{
			"ind_estado_civil":{
				required: true								
			},
			"nom_cliente_nome":{
				required: true								
			},
			"dsc_cliente_email":{
				required: true								
			},
			"txt_cliente_observacoes":{
				required: true
				
				//function(textarea) {
		        //    CKEDITOR.instances.txt_cliente_observacoes.updateElement(); // update textarea
		        //    var editorcontent = textarea.value.replace(/<[^>]*>/gi, ''); // strip tags
		        //    return editorcontent.length === 0;
        		//}								
			}
			
			
		},
		messages:{			
			"ind_estado_civil":{
				required: "Preencha o campo estado civil"								
			},
			"nom_cliente_nome":{
				required: "Preencha o campo nome"								
			},
			"dsc_cliente_email":{
				required: "Preencha o campo e-mail"								
			},
			"txt_cliente_observacoes":{
				required: "Preencha o campo observações"								
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
	
	$('#btn_add_novo').click(function() {
	  	wiOpen('?a=cliente&d=cliente&f=formCadastro');
	});
	
	$('#btn_pesquisar').click(function() {
	  	wiOpen('?a=cliente&d=cliente&f=formConsulta');
	});
	
	/*$("#formulario").validate({		
	    invalidHandler: function(form, validator) {
      		var errors = validator.numberOfInvalids();      		
      		if (errors) {         			     		
        		$('#table_message').show();
      		} 
    	},
		errorLabelContainer: "#messageBoxAtribuicao",		
		wrapper: "div",		
		rules:{
			"dsc_mapa_localidade":{
				required: true								
			},
			"dsc_mapa_latitude":{
				required: true								
			},
			"dsc_mapa_longitude":{
				required: true								
			},
			"dsc_mapa_descricao":{
				 required: function() {
                         CKEDITOR.instances.dsc_mapa_descricao.updateElement();
                }
				//required: true								
			}
		},
		messages:{			
			"dsc_mapa_localidade":{
				required: "O campo localidade é obrigatório"								
			},
			"dsc_mapa_latitude":{
				required: "O campo latitude é obrigatório"								
			},
			"dsc_mapa_longitude":{
				required: "O campo longitude é obrigatório"								
			},
			"dsc_mapa_descricao":{
				required: "O campo descrição é obrigatório"								
			}
		},
		submitHandler: function(){
			//CKEDITOR.instances.dsc_mapa_descricao.updateElement();							
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
					$('#seq_cliente').attr("value",$('#tmp_seq_cliente').val());
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
	    
	});*/
});