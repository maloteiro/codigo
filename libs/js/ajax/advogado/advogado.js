$(function() {
	$('#btn_add_novo').click(function() {
	  	wiOpen('?a=advogado&d=advogado&f=formCadastro');
	});
	
	$('#btn_pesquisar').click(function() {
	  	wiOpen('?a=advogado&d=advogado&f=formConsulta');
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
			"nom_advogado_nome":{
				required: true								
			},
			"num_advogado_oab":{
				required: true								
			}
			
			
		},
		messages:{			
			"nom_advogado_nome":{
				required: "Preencha o campo nome"								
			},
			"num_advogado_oab":{
				required: "Preencha o campo OAB"								
			}
			
		},
		submitHandler: function(){
			documents.forms[0].submit();
	    },
	    errorClass: "invalid",
	    unhighlight: function(element, errorClass) {
			if (this.numberOfInvalids() == 0) {
				$("#table_message").hide();
			}			
		}
	    
	});
});