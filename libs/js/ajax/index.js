$(function() {	
	$("#formAlterarSenha").validate({		
	    invalidHandler: function(form, validator) {
      		var errors = validator.numberOfInvalids();      		
      		if (errors) {         			     		
        		$('#table_message').show();
        		$('#message-red').hide();
      		} 
    	},
		errorLabelContainer: "#messageBoxAtribuicao",		
		wrapper: "div",		
		rules: {
				senha_atual:{
					required: true/*,
					minlength: 6*/
				},
	            nova_senha:{
	              required: true,
				  minlength: 6
	            },
	            confirmar_senha: {
	                equalTo: "#nova_senha"
	            }
	    },		
		submitHandler: function(){				
			var params = $('#formAlterarSenha').serialize();			           
			$.ajax({
				type: "POST",
				url: '?',
				data: params,
				beforeSend: function(){
					
		        },
				success: function(txt){
					$('.red-left').html(txt);					
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