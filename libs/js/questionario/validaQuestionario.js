function abrirJanela(url,w,h) {
		
try { recibo_produtividade.close(); } catch(err) {}
		
var wl = (screen.width-w)/2;		
var wt = (screen.height-h)/2;

recibo_produtividade = window.open(url, 'recibo_produtividade', 'width='+w+',height='+h+',scrollbars=yes,menubar=no,left='+wl+',top='+wt);

}

function perguntaAssociada(seq_pergunta,seq_questionario,seq_associada,div,opcao,contador){
	
	var url = "?d=questionarios&a=questionarios&f=_buscarPerguntaAssociada";
	
	$.ajax({
		type: "POST",
		url: url,		
		data: 'seq_pergunta=' + seq_pergunta + 
			  '&seq_questionario=' + seq_questionario + 
			  '&seq_associada=' + seq_associada ,
		beforeSend: function()	
		{
			
		},
		success: function(txt){				
			var valores = document.getElementById('resposta_pergunta_'+contador).options[document.getElementById('resposta_pergunta_'+contador).selectedIndex].text;
			var maiusculo = opcao.toUpperCase();			
			if(maiusculo.indexOf(valores.toUpperCase())!= -1){				
				document.getElementById('seq_associada_preenchida_'+contador).value = 'S';
				document.getElementById(div).innerHTML = txt;
			}else{
				document.getElementById('seq_associada_preenchida_'+contador).value = 'N';
				document.getElementById(div).innerHTML = '';
			}
			
				
			
		}
	}
	);
}

function grupoAssociado(seq_pergunta,seq_questionario,seq_grupo,div,opcao,contador){	
	var url = "?d=questionarios&a=questionarios&f=_buscarGrupoAssociado";
	
	$.ajax(
	{
		type: "POST",
		url: url,
		data: 'seq_pergunta=' + seq_pergunta + 
			  '&seq_questionario=' + seq_questionario + 
			  '&seq_grupo=' + seq_grupo ,
		beforeSend: function()	
		{
			
		},
		success: function(txt)
		{			
			var valores = document.getElementById('resposta_pergunta_'+contador).options[document.getElementById('resposta_pergunta_'+contador).selectedIndex].text;
			var maiusculo = opcao.toUpperCase();
						
			if(maiusculo.indexOf(valores.toUpperCase())!= -1){
				document.getElementById('seq_grupo_preenchido_'+contador).value = 'S';
				document.getElementById(div).innerHTML = txt;
			}else{
				document.getElementById('seq_grupo_preenchido_'+contador).value = 'N';
				document.getElementById(div).innerHTML = '';
			}
			
				
			
		}
	}
	);
}

function carregaOutros(contador, tipo){	
	var outros = false;	
	if(tipo=="Checkbox"){
		var qtd_check = document.getElementById('qtd_check_'+contador).value;
		for (var i = 1; i <= qtd_check; i++){
			var valores = document.getElementById('resposta_check_' + contador + '_' + i).value;						
			if (document.getElementById('resposta_pergunta_' + contador + '_' + i).checked) {				
				if ((valores.toUpperCase() == "OUTROS") || (valores.toUpperCase() == "OUTRO") || (valores.toUpperCase() == "OUTRAS") || (valores.toUpperCase() == "OUTRA") || (valores.toUpperCase() == "OUT") || (valores.toUpperCase() == "OUTRO(S)" || (valores.toUpperCase() == "OUTRA(S)"))) {					
					outros = true;					
				}				
			}			
		};		
	}
	
	if(tipo=="Radio"){
		var qtd_radio = document.getElementById('qtd_radio_'+contador).value;
		for (var i = 1; i <= qtd_radio; i++){
			var valores = document.getElementById('resposta_radio_' + contador + '_' + i).value;						
			if (document.getElementById('resposta_pergunta_' + contador + '_' + i).checked) {				
				if ((valores.toUpperCase() == "OUTROS") || (valores.toUpperCase() == "OUTRO") || (valores.toUpperCase() == "OUTRAS") || (valores.toUpperCase() == "OUTRA") || (valores.toUpperCase() == "OUT") || (valores.toUpperCase() == "OUTRO(S)" || (valores.toUpperCase() == "OUTRA(S)"))) {					
					outros = true;					
				}				
			}			
		};		
	}
	
	if (tipo == "Combobox") {
		var valores = document.getElementById('resposta_pergunta_'+contador).options[document.getElementById('resposta_pergunta_'+contador).selectedIndex].text; 
		if ((valores.toUpperCase() == "OUTROS") || (valores.toUpperCase() == "OUTRO") || (valores.toUpperCase() == "OUTRAS") || (valores.toUpperCase() == "OUTRA") || (valores.toUpperCase() == "OUT") || (valores.toUpperCase() == "OUTRO(S)" || (valores.toUpperCase() == "OUTRA(S)"))) {					
			outros = true;					
		}
	}
		
	if(outros){		
		document.getElementById('resposta_outros_' + contador).className = 'required campo ';		
		document.getElementById('div_outros_' + contador).style.display='block';
	}else{
		document.getElementById('resposta_outros_' + contador).className = '';
		document.getElementById('resposta_outros_' + contador).value='';
		document.getElementById('div_outros_' + contador).style.display='none';
	}		
}

function carregaNaoAplica(contador, tipo){
	var naoAplica = false;
	var posicao=0;
	var qtd_check = document.getElementById('qtd_check_' + contador).value;
	for (var i = 1; i <= qtd_check; i++) {
		var valores = document.getElementById('resposta_check_' + contador + '_' + i).value;
		if ((valores.toUpperCase() == "NÃO UTILIZA") || (valores.toUpperCase() == "NAO UTILIZA") || (valores.toUpperCase() == "NÃO APLICA") || (valores.toUpperCase() == "NAO APLICA") || (valores.toUpperCase() == "NÃO SE APLICA") || (valores.toUpperCase() == "NAO SE APLICA") || (valores.toUpperCase() == "NÃO ADOTA") || (valores.toUpperCase() == "NAO ADORA")) {
			if(document.getElementById('resposta_pergunta_'+contador+'_'+i).checked){
				posicao = i;
				naoAplica = true;
			}
		}
	}
	if(naoAplica==true){
		for (var i = 1; i <= qtd_check; i++) {			
			if(i!=posicao){
				document.getElementById('resposta_pergunta_'+contador+'_'+i).checked=false;
				document.getElementById('resposta_pergunta_'+contador+'_'+i).disabled=true;
				document.getElementById('div_numerico_'+contador+'_'+i).style.display='none';
			}
		}
	}else{
		for (var i = 1; i <= qtd_check; i++) {			
			if(i!=posicao){				
				document.getElementById('resposta_pergunta_'+contador+'_'+i).disabled=false;
			}
		}
	}
	
}

function numerico(valor, pergunta, contador, contador_check){
	if (document.getElementById('resposta_pergunta_' + contador + '_' + contador_check).checked) {
		var url = "?d=questionarios&a=questionarios&f=_buscarNumerica";		
		$.ajax({
			type: "POST",
			url: url,
			data: 'pergunta='+pergunta+'&valor='+valor+'&posicao='+contador+'&posicao_check='+contador_check,
			beforeSend: function(){
			
			},
			success: function(txt){				
				var resposta=txt.split('|');				
				if (resposta[1] == '1') {					
					document.getElementById('div_numerico_' + contador + '_' + contador_check).innerHTML = resposta[2];
					document.getElementById('div_numerico_' + contador + '_' + contador_check).style.display = 'block';
				}
					
			}
		});
	}else{		
		document.getElementById('div_numerico_' + contador + '_' + contador_check).innerHTML = '' ;
		document.getElementById('div_numerico_'+contador+'_'+contador_check).style.display='none';
	}
	
}












function carregaOutrosAssociada(sequencial,tipo){			
	var outros = false;	
	if (document.getElementById('qtd_check_associada_' + sequencial)) {
		//if (tipo == "Checkbox") {
			var qtd_check = document.getElementById('qtd_check_associada_' + sequencial).value;
			for (var i = 1; i <= qtd_check; i++) {
				var valores = document.getElementById('resposta_associada_check_' + sequencial + '_' + i).value;
				if (document.getElementById('resposta_associada_' + sequencial + '_' + i).checked) {
					if ((valores.toUpperCase() == "OUTROS") || (valores.toUpperCase() == "OUTRO") || (valores.toUpperCase() == "OUTRAS") || (valores.toUpperCase() == "OUTRA") || (valores.toUpperCase() == "OUT") || (valores.toUpperCase() == "OUTRO(S)" || (valores.toUpperCase() == "OUTRA(S)"))) {
						outros = true;
					}
				}
			};
		//}
	}
	
	if (document.getElementById('qtd_associada_radio_' + sequencial)) {
		var qtd_radio = document.getElementById('qtd_associada_radio_'+sequencial).value;
		for (var i = 1; i <= qtd_radio; i++){
			var valores = document.getElementById('resposta_associada_radio_' + sequencial + '_' + i).value;						
			if (document.getElementById('resposta_associada_' + sequencial + '_' + i).checked) {				
				if ((valores.toUpperCase() == "OUTROS") || (valores.toUpperCase() == "OUTRO") || (valores.toUpperCase() == "OUTRAS") || (valores.toUpperCase() == "OUTRA") || (valores.toUpperCase() == "OUT") || (valores.toUpperCase() == "OUTRO(S)" || (valores.toUpperCase() == "OUTRA(S)"))) {					
					outros = true;					
				}				
			}			
		};		
	}
	
	if (document.getElementById('resposta_associada_' + sequencial)) {
		//alert('aqui');		
		//if (tipo == "Combobox") {
			var valores = document.getElementById('resposta_associada_' + sequencial).options[document.getElementById('resposta_associada_' + sequencial).selectedIndex].text;
			if ((valores.toUpperCase() == "OUTROS") || (valores.toUpperCase() == "OUTRO") || (valores.toUpperCase() == "OUTRAS") || (valores.toUpperCase() == "OUTRA") || (valores.toUpperCase() == "OUT") || (valores.toUpperCase() == "OUTRO(S)" || (valores.toUpperCase() == "OUTRA(S)"))) {
				outros = true;
			}
		//}
	}
	if (document.getElementById('resposta_associada_' + sequencial) || document.getElementById('qtd_check_associada_' + sequencial)) {
		if (outros) {
			document.getElementById('resposta_outros_associada_' + sequencial).className = 'required campo ';
			document.getElementById('div_outros_associada_' + sequencial).style.display = 'block';
		}
		else {
			document.getElementById('resposta_outros_associada_' + sequencial).className = '';
			document.getElementById('resposta_outros_associada_' + sequencial).value = '';
			document.getElementById('div_outros_associada_' + sequencial).style.display = 'none';
		}		
	}		
}






function numericoAssociada(valor, pergunta, contador, contador_check){	
	if (document.getElementById('resposta_associada_' + pergunta + '_' + contador_check).checked) {
		var url = "?d=questionarios&a=questionarios&f=_buscarNumericaAssociada";		
		$.ajax({
			type: "POST",
			url: url,
			data: 'pergunta='+pergunta+'&valor='+valor+'&posicao='+contador+'&posicao_check='+contador_check,
			beforeSend: function(){
			
			},
			success: function(txt){								
				var resposta=txt.split('|');				
				if (resposta[1] == '1') {					
					document.getElementById('div_numerico_associada_' + pergunta + '_' + contador_check).innerHTML = resposta[2];
					document.getElementById('div_numerico_associada_' + pergunta + '_' + contador_check).style.display = 'block';
				}
					
			}
		});
	}else{		
		document.getElementById('div_numerico_associada_' + pergunta + '_' + contador_check).innerHTML = '' ;
		document.getElementById('div_numerico_associada_'+ pergunta +'_'+contador_check).style.display='none';
	}
	
}




function perguntaAssociadaAssociada(seq_pergunta,seq_questionario,seq_associada,div,opcao,contador){
	
	var url = "?d=questionarios&a=questionarios&f=_buscarPerguntaAssociada";
	
	$.ajax({
		type: "POST",
		url: url,		
		data: 'seq_pergunta=' + seq_pergunta + 
			  '&seq_questionario=' + seq_questionario + 
			  '&seq_associada=' + seq_associada ,
		beforeSend: function()	
		{
			
		},
		success: function(txt){
			//alert(txt);				
			var valores = document.getElementById('resposta_associada_'+seq_pergunta).options[document.getElementById('resposta_associada_'+seq_pergunta).selectedIndex].text;
			var maiusculo = opcao.toUpperCase();			
			if(maiusculo.indexOf(valores.toUpperCase())!= -1){				
				document.getElementById('seq_associada_preenchida_'+seq_pergunta).value = 'S';
				document.getElementById(div).innerHTML = txt;
			}else{
				document.getElementById('seq_associada_preenchida_'+seq_pergunta).value = 'N';
				document.getElementById(div).innerHTML = '';
			}
			
				
			
		}
	}
	);
}

