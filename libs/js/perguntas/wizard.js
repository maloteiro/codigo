function abrirGrupos(){
	var questionario = document.getElementById("seq_questionario").value;
	
	$.ajax({
		type: "POST",
		url: '?d=perguntas&a=perguntas&f=_formCadastroGrupos',
		data: 'seq_questionario='+questionario  ,
		beforeSend: function(){
		
		},
		success: function(txt){			
			if (txt) {
				$('#retornoGrupos').html(txt);		
				//document.getElementById('retornoGrupos').innerHTML=txt;										
			}
		},
		error: function(txt){
			alert("Operação não pode ser executada.");					
			setTimeout("document.location.href='?d=perguntas&a=perguntas&f=wizard'", 3000);
		}
	});
	
}

function pesquisaGrupo(){
	var questionario = document.getElementById("seq_questionario").value;
	
	$.ajax({
		type: "POST",
		url: '?d=perguntas&a=perguntas&f=_formPesquisaGrupos',
		data: 'seq_questionario='+questionario  ,
		beforeSend: function(){
		
		},
		success: function(txt){			
			if (txt) {
				$('#retornoGrupos').html(txt);		
				//document.getElementById('retornoGrupos').innerHTML=txt;										
			}
		},
		error: function(txt){
			alert("Operação não pode ser executada.");					
			setTimeout("document.location.href='?d=perguntas&a=perguntas&f=wizard'", 3000);
		}
	});
}
