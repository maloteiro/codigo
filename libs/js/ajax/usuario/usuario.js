$(document).ready(function() {
	$("#formAlterarSenha").validate({	
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
        }
	});
});