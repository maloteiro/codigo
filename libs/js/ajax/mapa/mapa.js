$(function() {
	$('#btn_add_novo').click(function() {
	  	wiOpen('?a=mapa&d=mapa&f=formCadastro');
	});
	
	$('#btn_pesquisar').click(function() {
	  	wiOpen('?a=mapa&d=mapa&f=formConsulta');
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
			CKEDITOR.instances.dsc_mapa_descricao.updateElement();							
			var params = $('#formulario').serialize(); 
			//alert(params)           
			$.ajax({
				type: "POST",
				url: '?',
				data: params,
				beforeSend: function(){
					//CKEDITOR.instances.dsc_mapa_descricao.updateElement();
					$('#message-red').hide();					
		        },
				success: function(txt){					
					$('.red-left').html(txt);
					$('#update').attr("value","S");
					$('#seq_mapa').attr("value",$('#tmp_seq_mapa').val());
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