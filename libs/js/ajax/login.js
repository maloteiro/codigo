$(function() {
	$("#frmlogin").validate({		
	    invalidHandler: function(form, validator) {
      		var errors = validator.numberOfInvalids();      		
      		if (errors) {         			     		
        		$('#table_message').show();
      		} 
    	},
		errorLabelContainer: "#messageBoxAtribuicao",		
		wrapper: "div",		
		rules:{
			usuario:{
				required: true
								
			},
			senha:{
				required: true
			}
		},
		messages:{
			usuario:{
				required: "O campo usuário é obrigatório"
								
			},
			senha:{
				required: "O campo senha é obrigatório"
			}
		},
		submitHandler: function(){				
			var params = $('#frmlogin').serialize(); 
			//alert(params)           
			$.ajax({
				type: "POST",
				url: '?',
				data: params,
				beforeSend: function(){
					//$.msg({ content: 'blah blah' });
		            // mostro a div loading
		            //$('#loading').show();
		            // html(): equivalente ao innerHTML
		            //$('#loading').html("<img src='./img/loader/ajax-loader.gif' />");
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
