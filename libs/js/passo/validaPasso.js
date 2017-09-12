function escondeDivMsg(){
	document.getElementById('div_msg').style.display='none';
	$.ajax(
	{
		type: "POST",
		url: '?d=integrar&a=produtividade&f=_excluiMsgSessao',
		data: '',
		beforeSend: function()
		{
		},
		success: function(txt)
		{
	
		}
	}
	);
}
function contaCaracteres(campo, campo_div, maximo_permitido)
{
	if(campo.value != "")
	{
		total = campo.value.length;
		if(total > maximo_permitido)
		{
			alert("Total excedido");
            campo.value = campo.value.substr(0,maximo_permitido);
            total = total-1;
            document.getElementById(campo_div).innerHTML="Total de caracteres: <b>"+total+"</b>. M&aacute;ximo permitido: " + maximo_permitido;
		}
		document.getElementById(campo_div).innerHTML="Total de caracteres: <b>"+total+"</b>. M&aacute;ximo permitido: " + maximo_permitido;
	}
	else
		document.getElementById(campo_div).innerHTML="";
}

function atualizaVara(url,div,seq_competencia_juizo)
	{
		//alert(seq_competencia_juizo);
		//alert(url);
		$.ajax(
		{
			type: "POST",
			url: url,
			data: 'seq_competencia_juizo=' + seq_competencia_juizo,
			beforeSend: function()	
			{
				
			},
			success: function(txt)
			{
				//alert(txt);
				document.getElementById(div).innerHTML=txt;
				//$(div).html(txt);
				//atualizaMunicipioAbrangido(codigo);
			}
		}
		);
	}    

function inserir(acao)
    {
		competencias_juiz 		= document.getElementsByName('id_competencia_juiz[]');
		id_juiz_titular	  				= document.dadosServentia.id_juiz_titular.value;
		dat_ingresso_juiz_titular		= document.dadosServentia.dat_ingresso_juiz_titular.value;
		ddd_telefone_fixo_juiz  = document.dadosServentia.ddd_telefone_gabinete_juiz.value;
		telefone_fixo_juiz  	= document.dadosServentia.telefone_gabinete_juiz.value;
		ddd_telefone_cel_juiz  	= document.dadosServentia.ddd_telefone_cel_juiz.value;
		telefone_cel_juiz  		= document.dadosServentia.telefone_cel_juiz.value;
		email_eletronico_juiz	= document.dadosServentia.email_eletronico_juiz.value;

		ind_juiz_titular			= document.getElementsByName('ind_juiz_titular');
		
		id_juiz_titular2	  		= document.dadosServentia.id_juiz_titular2.value;
		dat_ingresso_juiz_titular2	= document.dadosServentia.dat_ingresso_juiz_titular2.value;
		ddd_telefone_gabinete_juiz2  = document.dadosServentia.ddd_telefone_gabinete_juiz2.value;
		telefone_gabinete_juiz2  	= document.dadosServentia.telefone_gabinete_juiz2.value;
		ddd_telefone_cel_juiz2  	= document.dadosServentia.ddd_telefone_cel_juiz2.value;
		telefone_cel_juiz2  		= document.dadosServentia.telefone_cel_juiz2.value;
		email_eletronico_juiz2	= document.dadosServentia.email_eletronico_juiz2.value;
		
		possui_juiz_titular_sim	=	document.dadosServentia.possui_juiz_titular_sim;
		
		dat_instalacao			=	document.dadosServentia.dat_instalacao.value;
		
	//****************** Validacao das Competencias do Juizo ***********************************// 
	var marcado = 0; 
	for(i=0; i<=competencias_juiz.length; i++)
     {
	    if(competencias_juiz[i])
	    { 
  			if(competencias_juiz[i].checked)
	  		{
				marcado = 1;
	  		}
	    }
     }	

     if (!marcado){
       document.getElementById("div_msg").innerHTML = "Selecione a(s) Competência(s) do Juízo";
  	    return false;
     }	
	
     
 	 if (dat_instalacao == ""){
        document.getElementById("div_msg").innerHTML = "Informe a Data de Instalação.";
        document.getElementById('dat_instalacao').focus();
        alert("Informe o novo campo Data de Instalação do Órgão Jurisdicional.");
  	    return false;
     }
     
	if(possui_juiz_titular_sim.checked)
	{
     
	     //****************** Validacao Primeiro Juiz Titular ***********************************// 
	     if (id_juiz_titular == ""){
	        document.getElementById("div_msg").innerHTML = "Informe o Nome do Juiz Titular.";
	        document.getElementById('id_juiz_titular').focus();
	  	    return false;
	     }
	     
	     if(id_juiz_titular != 1)
	     {
		     if (dat_ingresso_juiz_titular == ""){
		        document.getElementById("div_msg").innerHTML = "Informe a Data de Ingresso do Juiz na titularidade do Juízo.";
		        document.getElementById('dat_ingresso_juiz_titular').focus();
		  	    return false;
		     }
		     
		     
		    if((ddd_telefone_fixo_juiz == "" || telefone_fixo_juiz == "") && (ddd_telefone_cel_juiz == "" || telefone_cel_juiz == ""))
		 	{
				document.getElementById("div_msg").innerHTML = "Informe ao menos um DDD e um Telefone do Juiz Titular.";
		        document.getElementById('ddd_telefone_gabinete_juiz').focus();
		  	    return false;
			}
		
		     if (email_eletronico_juiz == ""){
		        document.getElementById("div_msg").innerHTML = "Informe o Endereço Eletrônico do Juiz Titular.";
		        document.getElementById('email_eletronico_juiz').focus();
		  	    return false;
		     }
	     }
	
	     //****************** Validacao Segundo Juiz Titular ***********************************// 
	     if(ind_juiz_titular[0].checked){
	     	
	        if (id_juiz_titular2 == "")
	        {
		        document.getElementById("div_msg").innerHTML = "Informe o Nome do Segundo Juiz Titular.";
		        document.getElementById('id_juiz_titular2').focus();
		  	    return false;
	     	}
	     	
	     if(id_juiz_titular2 != 2)
	     {
	     	
	     	if (id_juiz_titular == id_juiz_titular2)
	        {
		        document.getElementById("div_msg").innerHTML = "Os Nome dos Juízes titulares não podem ser iguais.";
		        document.getElementById('id_juiz_titular2').focus();
		  	    return false;
	     	}
	     	
	     	if (dat_ingresso_juiz_titular2 == ""){
		        document.getElementById("div_msg").innerHTML = "Informe a Data de Ingresso do Segundo Juiz na titularidade do Juízo.";
		        document.getElementById('dat_ingresso_juiz_titular2').focus();
		  	    return false;
		     }
		     
		     
		    if((ddd_telefone_gabinete_juiz2 == "" || telefone_gabinete_juiz2 == "") && (ddd_telefone_cel_juiz2 == "" || telefone_cel_juiz2 == ""))
		 	{
				document.getElementById("div_msg").innerHTML = "Informe ao menos um DDD e um Telefone do segundo Juiz Titular.";
		        document.getElementById('ddd_telefone_gabinete_juiz2').focus();
		  	    return false;
			}
		
		     if (email_eletronico_juiz2 == ""){
		        document.getElementById("div_msg").innerHTML = "Informe o Endereço Eletrônico do segundo Juiz Titular.";
		        document.getElementById('email_eletronico_juiz2').focus();
		  	    return false;
		     }
	     }   
	     	
	     }
	} 	

		if(!document.getElementById('tabela_secretaria'))	
		{
	        document.getElementById("div_msg").innerHTML = "Insira ao menos uma Secretaria.";
	  	    return false;
		}

	 //****************** Envio dos dados do formulario ***********************************// 
	  if(acao != 'alterar')
	  {
		 document.dadosServentia.action = '?d=dados&a=dados&f=salvarPasso1';
	     document.dadosServentia.submit(); 
	  }
	  else
	  {
	  	 document.dadosServentia.action = '?d=dados&a=dados&f=alterarPasso1';
	     document.dadosServentia.submit(); 
	  }
    
    }
    
    function inserePasso2(tipo_juiz){
    	
		respostas = document.getElementsByName('valor_resposta[]');
  		dat_inicial = document.getElementById('dat_inicial').value;
  		dat_final = document.getElementById('dat_final').value;
  		nomeJuiz = document.getElementById('id_juiz').value;
  		id_titular_substituto = document.getElementById('id_titular_substituto').value;
		
		if((dat_inicial=="") || (dat_final =="")){
			alert("O Período Inicial e o Período Final devem ser preenchidos.");
			return false;
		}
  		
  		if(nomeJuiz==""){
			alert("Informe o Nome do Juiz.");
			return false;
		}
  		
  		if(tipo_juiz==""){
			alert("Informe o Tipo do Juiz.");
			return false;
		}
		
		if(!document.getElementById('usuario_vago'))
		{
			if(tipo_juiz==1 && id_titular_substituto == "" && document.getElementById('tr_titular').style.display == '')
			{
				alert("Informe o Nome do Titular.");
				return false;
			}
		}
		
		data_inicialrespostas = document.getElementsByName('valor_resposta[]');
		for(i=0; i<=respostas.length; i++){
		if(respostas[i]){ 
				if(respostas[i].value == ""){
					alert("Informe todos os campos.");
		  	    	return false;
				}
			}
		}
		
		return true;
    }
    
	function mostra(id,display)
	{
		document.getElementById(id).style.display='';
	}

	
	function someJuiz(id,display)
	{
		
		document.getElementById(id).style.display='none';
		
		document.dadosServentia.id_juiz_titular2.value = '';
		document.dadosServentia.dat_ingresso_juiz_titular2.value = '';
		document.dadosServentia.ddd_telefone_gabinete_juiz2.value = '';
		document.dadosServentia.telefone_gabinete_juiz2.value = '';
		document.dadosServentia.ddd_telefone_cel_juiz2.value = '';
		document.dadosServentia.telefone_cel_juiz2.value = '';
		document.dadosServentia.email_eletronico_juiz2.value = '';
	}
	
	function someTudo(id,display)
	{
		
		document.getElementById(id).style.display='none';
		
		document.dadosServentia.id_juiz_titular.value = '';
		document.dadosServentia.dat_ingresso_juiz_titular.value = '';
		document.dadosServentia.ddd_telefone_gabinete_juiz.value = '';
		document.dadosServentia.telefone_gabinete_juiz.value = '';
		document.dadosServentia.ddd_telefone_cel_juiz.value = '';
		document.dadosServentia.telefone_cel_juiz.value = '';
		document.dadosServentia.email_eletronico_juiz.value = '';
		
		document.dadosServentia.id_juiz_titular2.value = '';
		document.dadosServentia.dat_ingresso_juiz_titular2.value = '';
		document.dadosServentia.ddd_telefone_gabinete_juiz2.value = '';
		document.dadosServentia.telefone_gabinete_juiz2.value = '';
		document.dadosServentia.ddd_telefone_cel_juiz2.value = '';
		document.dadosServentia.telefone_cel_juiz2.value = '';
		document.dadosServentia.email_eletronico_juiz2.value = '';
		
	}
	
	function some(id,display)
	{
		document.getElementById('id_juiz_auxiliar').value = '';
		document.getElementById('email_juiz_auxiliar').value = '';
		document.getElementById(id).style.display='none';
	}
	
	function atualizaCidade(url,div,codigo,cidade_serventia)
	{
		
		$.ajax(
		{
			type: "POST",
			url: url,
			data: 'uf=' + codigo + '&cidade_serventia=' + cidade_serventia,
			beforeSend: function()	
			{
				
			},
			success: function(txt)
			{
				$(div).html(txt);
			}
		}
		);
	}
	
  function somarcampos(codigo)
  {
  	
  	var codigo12 = 0; var codigo13 = 0; var codigo14 = 0; var codigo15 = 0;
  	
  	if(document.getElementById('valor_resposta12')){
	  	if(document.getElementById('valor_resposta12').value != '')
	  		codigo12 = document.getElementById('valor_resposta12').value;
  	}  		
  		
  	if(document.getElementById('valor_resposta13')){
	  	if(document.getElementById('valor_resposta13').value != '')	
	  		codigo13 = document.getElementById('valor_resposta13').value;
  	}
  	
  	if(document.getElementById('valor_resposta14')){	
	  	if(document.getElementById('valor_resposta14').value != '')	
	  		codigo14 = document.getElementById('valor_resposta14').value;
  	}
  	 		
  	if(document.getElementById('valor_resposta15')){
	  	if(document.getElementById('valor_resposta15').value != '')	
	  		codigo15 = document.getElementById('valor_resposta15').value;
  	}
  	else
  	{
  		document.getElementById('soma_total').style.display = 'none';
  	}
  	
	valor = (parseInt(codigo12) + parseInt(codigo13) + parseInt(codigo14) + parseInt(codigo15));
  	
	document.getElementById("div_total").innerHTML = valor;
  }

  function abreDivPerguntas(cod_substituto){
  	var dat_inicial = document.getElementById('dat_inicial').value;
  	var dat_final = document.getElementById('dat_final').value;
  	var id_juiz = document.getElementById('id_juiz').value;
  	var ind_tipo_juiz = document.getElementById('ind_tipo_juiz').value;
  	
	if(dat_inicial!="" && dat_final!="" && id_juiz!="" && ind_tipo_juiz!="")
		buscaPerguntas(ind_tipo_juiz,cod_substituto);
	
  }
  
  function buscaPerguntas(ind_tipo_juiz,cod_substituto)
  {
  	$.ajax(
		{
			
			type: "POST",
			url: "?d=dados&a=dados&f=_montaPerguntas",
			data: 	"ind_tipo_juiz=" + ind_tipo_juiz  + "&cod_substituto=" + cod_substituto,
			beforeSend: function()	
			{
				
			},
			success: function(txt)
			{
				$(document.getElementById('perguntas')).html(txt);
			}
		}
		);
	}	
  
  function insereMagistrado(mes_referencia,tipo_juiz){
  	
	if(verificaMesReferencia(mes_referencia,tipo_juiz) && inserePasso2(tipo_juiz))
		salvarProdutividade();
  }
  
  function alterarPasso(mes_referencia,tipo_juiz){

  		if(verificaMesReferencia(mes_referencia,tipo_juiz) && inserePasso2(tipo_juiz))
  		{
  			document.formPergunta.action="?d=dados&a=dados&f=alterarMagistrado";
	  		document.formPergunta.submit();
		}	
  		else
  			return false;
  }
  
  function verificaPeriodo(juiz,id_dados_serventia,cod_substituto)
  {
	dat_inicial 	   = document.getElementById('dat_inicial');
	dat_final 		   = document.getElementById('dat_final');
	id_juiz     	   = document.getElementById('id_juiz').value;
	
	if(document.getElementById('id_titular_substituto'))
		id_juiz_substituto =document.getElementById('id_titular_substituto').value;

  	if(dat_inicial.value!="" && dat_final.value!="" && id_juiz != "" && juiz != ""){
	  	if(verificaDatInicioDatFim(dat_inicial,dat_final)){
			$.ajax(
				{
					type: "POST",
					url: "?d=dados&a=dados&f=validaData",
					data: 	"dat_inicial=" 				+ dat_inicial.value + 
							"&dat_final=" 				+ dat_final.value +
							"&id_dados_serventia="		+ id_dados_serventia + 
							"&cod_substituto="			+ cod_substituto +
							"&id_juiz=" 				+ id_juiz +
							"&id_tit_substituto=" 		+ id_juiz_substituto +								
							"&juiz="					+ juiz ,
					beforeSend: function()	
					{
						
					},
					success: function(txt)
					{
						if(txt == 'errotitular'){
							alert('O Magistrado Selecionado não é o Titular do Órgão Jurisdicional.');
							document.getElementById('id_juiz').value = "";
							dat_inicial.focus();
						}
						if(txt == 'ano'){
							alert('Lançamento do período fora do ano corrente.');
							dat_inicial.value="";
							dat_final.value="";
							dat_inicial.focus();
						}
						//document.getElementById("validaData").innerHTML = txt;
						if(txt == 'true'){
							alert('Período informado já cadastrado. Informe outro período.');
							dat_inicial.value="";
							dat_final.value="";
							dat_inicial.focus();
						}
					}
				}
				);
	  		}		
  	   }	
  }
  
  function finalizarOperacao()
  {
  	if(confirm('Deseja enviar os dados agora?')){
  		alert('Dados enviados com sucesso!');
  		document.location.href='?d=index&a=index&f=index';
  	}
  	else{
  		document.getElementsByName('pergunta_titular')[1].checked = false;
  		
  	}
  }
  function mudaMesReferencia(mes,ano,passo){
  		
  	$.ajax(
			{
				type: "POST",
				url: "?d=dados&a=dados&f=mudaMesReferencia",
				data: 	"mes=" + mes + "&ano_atual=" + ano,
				beforeSend: function()	
				{
					
				},
				success: function()
				{
					history.go(0);
				}
			}
		);
  }
  
  function salvarProdutividade(){
  	
  		var dadosUsuario;
  	  	
  		dat_inicial              = document.getElementById('dat_inicial').value;
     	dat_final	         	 = document.getElementById('dat_final').value;
	    id_juiz            	 	 = document.getElementById('id_juiz').value;
	    ind_tipo_juiz			 = document.getElementById('ind_tipo_juiz').value;
     	id_tipo_pergunta		 = document.getElementsByName('id_tipo_pergunta[]');
     	valor_resposta		 	 = document.getElementsByName('valor_resposta[]');
     	dsc_observacao           = document.getElementById('dsc_observacao').value;
     	
     	if(document.getElementById('id_titular_substituto'))
			id_juiz_substituto =document.getElementById('id_titular_substituto').value;
  	  
      //montando array das perguntas e respostas para serem enviadas via ajax	
      for(i = 0; i < id_tipo_pergunta.length; i++)
      {
        if(id_tipo_pergunta[i])
    	{
	        if(id_tipo_pergunta[i].value != '')
	          dadosUsuario += "&id_tipo_pergunta[]=" + id_tipo_pergunta[i].value + "&valor_resposta[]=" + valor_resposta[i].value;
        }  
      }
      
      dadosUsuario += "&dat_inicial=" + dat_inicial + 
                	  "&dat_final=" + dat_final +
                	  "&dsc_observacao=" + dsc_observacao +
                	  "&id_juiz=" + id_juiz +
                	  "&id_titular_substituto=" + id_juiz_substituto +
                	  "&ind_tipo_juiz=" + ind_tipo_juiz;   
       
     	
     	$.ajax(
			{
				type: "POST",
				url: "?d=dados&a=dados&f=salvarMagistrado",
				data: 	dadosUsuario,
				beforeSend: function()	
				{
					
				},
				success: function()
				{
					alert('Produtividade Cadastrada! \nPara impressão do Recibo clique na opção recibo da produtividade cadastrada.');
					document.location.href='?d=dados&a=dados&f=formPasso2';
				}
			}
		);
  	
  }

 function geraRecibo(cod_substituto)
 {
 	if(window.confirm(" Deseja imprimir o recibo de envio da produtividade? "))
 		abrirJanela('?d=dados&a=dados&f=geraRecibo&cod_substituto='+cod_substituto,800,550);
 }
  
 function alterarProdutividade(){
  	
  		var dadosUsuario;
  	  	
  		cod_substituto			 = document.getElementById('cod_substituto').value;
  		
  		dat_inicial              = document.getElementById('dat_inicial').value;
     	dat_final	         	 = document.getElementById('dat_final').value;
	    id_juiz            	 	 = document.getElementById('id_juiz').value;
	    ind_tipo_juiz			 = document.getElementById('ind_tipo_juiz').value;
     	id_tipo_pergunta		 = document.getElementsByName('id_tipo_pergunta[]');
     	valor_resposta		 	 = document.getElementsByName('valor_resposta[]');
  	  
      //montando array das perguntas e respostas para serem enviadas via ajax	
      for(i = 0; i < id_tipo_pergunta.length; i++)
      {
        if(id_tipo_pergunta[i])
    	{
	        if(id_tipo_pergunta[i].value != '')
	          dadosUsuario += "&id_tipo_pergunta[]=" + id_tipo_pergunta[i].value + "&valor_resposta[]=" + valor_resposta[i].value;
        }  
      }
      
      dadosUsuario += "&dat_inicial=" + dat_inicial + 
                	  "&dat_final=" + dat_final +
                	  "&id_juiz=" + id_juiz +
                	  "&ind_tipo_juiz=" + ind_tipo_juiz +
                	  "&cod_substituto=" + cod_substituto;   
       
     	
     	$.ajax(
			{
				type: "POST",
				url: "?d=dados&a=dados&f=alterarMagistrado",
				data: 	dadosUsuario,
				beforeSend: function()	
				{
					
				},
				success: function()
				{
					
				}
			}
		);
  	
  }
  
function verificaMesReferencia(mes_referencia, tipo_juiz){

	dat_inicial = document.getElementById('dat_inicial').value;
	dat_final = document.getElementById('dat_final').value;

	mes_form = dat_inicial.split("/");
	mes_form2 = dat_final.split("/");
	mes_form = mes_form[1];
	mes_form2 = mes_form2[1];
	
	if(mes_referencia.length < 2)
		mes_referencia = '0' + mes_referencia;
		
	if(mes_form != mes_referencia || mes_form2 != mes_referencia){
	//if(mes_form != mes_referencia){
		alert("O mês informado deve ser igual ao mês de referência selecionado.")
		return false;
	}
	else
		return true;
}

function verificaDatInicioDatFim(objIni,objFim){
	
	dtini = objIni.value;
	dtfinal = objFim.value;
	
	dataInicio = new Date(	dtini.substring(6,10),
							dtini.substring(3,5),
							dtini.substring(0,2));
	dataFim = new Date(		dtfinal.substring(6,10),
							dtfinal.substring(3,5),
							dtfinal.substring(0,2));

	if(dataInicio > dataFim){
		alert("Período Inicial é maior que Período Final.");
		objFim.value = "";
		objFim.focus();
		return false;
	}
	else	
		return true;
}
// Script para validaï¿½ï¿½o da data.
	
 function verifica_data (obj) 
	{ 
		situacao = "";
		alerta = "";
		
		if(obj.value != "")
		{
			// converte dia, mï¿½s e ano em nï¿½meros				
			dia = Number(obj.value.substr(0,2)); 
			mes = Number(obj.value.substr(3,2)); 
			ano = Number(obj.value.substr(6,4)); 

			// verifica se o dia, mï¿½s e ano sï¿½o nï¿½meros (Ex: 01/04/2005)
			if (isNaN(dia))
			{
				situacao = "falsa";
				alerta = "* Dia deve ser expresso em numerais!\n";
			}
				
			if (isNaN(mes))
			{
				situacao = "falsa";
				if (alerta == "")
				{
					alerta = "* Mês deve ser expresso em numerais!\n";
				}
				else
				{
					alerta = alerta+"* Mês deve ser expresso em numerais!\n";
				}
			}
			if (isNaN(ano))
			{
				situacao = "falsa";
				if (alerta == "")
				{
					alerta = "* Ano deve ser expresso em numerais!\n";
				}
				else
				{
					alerta = alerta+"* Ano deve ser expresso em numerais!\n";
				}
			}
								
			// verifica o dia valido para cada mï¿½s 
			if ((dia < 1)||(dia < 1 || dia > 30) && (  mes == 4 || mes == 6 || mes == 9 || mes == 11 ) || dia > 31) 
			{ 
				situacao = "falsa";
				if (alerta == "")
				{
					alerta = "* Dia inválido para esse mês!\n";
				}
				else
				{
					alerta = alerta+"* Dia inválido para esse mês!\n";
				}
			} 
	
			// verifica se o mes ï¿½ valido 
			if (mes < 1 || mes > 12 ) 
			{ 
				situacao = "falsa";
				if (alerta == "")
				{
					alerta = "* Mês inválido!\n"; 
				}
				else
				{
					alerta = alerta+"* Mês inválido!\n";
				}
			} 
	
			// verifica se ï¿½ ano bissexto 
			if (mes == 2 && ( dia < 1 || dia > 29 || ( dia > 28 && (parseInt(ano / 4) != ano / 4)))) 
			{ 
				situacao = "falsa";
				if (alerta == "")
				{
					alerta = "* Esse ano não é bissexto!\n"; 
				}
				else
				{
					alerta = alerta+"* Esse ano não é bissexto!\n";
				}
			} 

			// verifica se o ano ï¿½ igual ao ano corrente
			/*var dataAtual 	= new Date();
			var anoAtual	= dataAtual.getFullYear();
			var mesAtual    = dataAtual.getMonth()+1;
			var diaAtual 	= dataAtual.getDate();*/
			
			    var datadigitada= new Date(ano,(mes-1),dia);
				var miliqq=datadigitada.getTime();
			
				var mydate= new Date()
			   	var mili=mydate.getTime();
			
			    var diaqq=parseInt(datadigitada.getDate());
			    var mesqq=parseInt(datadigitada.getMonth())+1;
			
			    if((dia!=diaqq) || (mes!=mesqq)){
			       situacao = "falsa";	
			       alerta = "A data digitada não é válida!\n";
			    }
			 /*   else if(miliqq > mili){
			      situacao = "falsa";
				  alerta = "Data Digitada maior que data atual!\n";
				}

			if ((diaAtual < dia)&&(mesAtual <= mes)&&(anoAtual <= ano))
			{
				situacao = "falsa";
				if (alerta == "")
				{
				 alerta = "* Data NÃO deve ser maior a Data de Hoje!\n";					
				}
				else
				{
				alerta = alerta+"* Data NÃO deve ser maior a Data de Hoje!\n";
				}
			}*/

			// verifica se a data estï¿½ em branco		
			if (obj.value == "") 
			{ 
				situacao = "falsa";
				if (alerta == "")
				{
					alerta = "* Data não pode ser em branco!\n"; 
				}
				else
				{
					alerta = alerta+"* Data não pode ser em branco!\n";
				}
			} 
				
			//verifica se a data possui menos de 10 dï¿½gitos
			if (obj.value.length <10 )
			{
				situacao = "falsa";
				if (alerta == "")
				{
					alerta = "* Data deve ser preenchida com 10 caracteres, no seguinte formato: (dd/mm/aaaa)!\n";
				}
				else
				{
					alerta = alerta+"* Data deve ser preenchida com 10 caracteres, no seguinte formato: (dd/mm/aaaa)!\n";
				}
			}

			if (situacao == "falsa") 
			{ 
				alert("Erro:\n\n"+alerta);
				obj.value = "";
				obj.focus(); 
			} 
		}
	}
	
	function abrirJanela(url,w,h)
	{
		var wl = (screen.width-w)/2;		
		var wt = (screen.height-h)/2;
		
		window.open(url, '', 'width='+w+',height='+h+',scrollbars=yes,menubar=no,left='+wl+',top='+wt);
	}

	function mostraTitularSubstituto(tipo_juiz,id_juiz_titular)
	{
		if(id_juiz_titular != '')
		{
			if(tipo_juiz == 1)
				document.getElementById('tr_titular').style.display = '';
			else
				document.getElementById('tr_titular').style.display = 'none';
		}	
	}
	
	function camposNaSessao()
	{
  		/*
  			Função Criada para que após o fechamento da pop-up que salva a secretaria 
  			ele mantenha os dados ate então digitados preenchidos no formulario
  		*/
		
  		var dadosUsuario;
  		
		id_juiz_titular              = document.getElementById('id_juiz_titular').value;
     	dat_ingresso_juiz_titular	 = document.getElementById('dat_ingresso_juiz_titular').value;
	    ddd_telefone_gabinete_juiz   = document.getElementById('ddd_telefone_gabinete_juiz').value;
	    telefone_gabinete_juiz		 = document.getElementById('telefone_gabinete_juiz').value;
     	ddd_telefone_cel_juiz		 = document.getElementById('ddd_telefone_cel_juiz').value;
     	telefone_cel_juiz		 	 = document.getElementById('telefone_cel_juiz').value;
     	email_eletronico_juiz		 = document.getElementById('email_eletronico_juiz').value;
     	
	     	if(document.getElementById('ind_juiz_titular_sim').checked)
	     	{
				id_juiz_titular2              = document.getElementById('id_juiz_titular2').value;
		     	dat_ingresso_juiz_titular2	 = document.getElementById('dat_ingresso_juiz_titular2').value;
			    ddd_telefone_gabinete_juiz2   = document.getElementById('ddd_telefone_gabinete_juiz2').value;
			    telefone_gabinete_juiz2		 = document.getElementById('telefone_gabinete_juiz2').value;
		     	ddd_telefone_cel_juiz2		 = document.getElementById('ddd_telefone_cel_juiz2').value;
		     	telefone_cel_juiz2		 	 = document.getElementById('telefone_cel_juiz2').value;
		     	email_eletronico_juiz2		 = document.getElementById('email_eletronico_juiz2').value;
	     	}
      
      dadosUsuario += "&id_juiz_titular=" + id_juiz_titular + 
                	  "&dat_ingresso_juiz_titular=" + dat_ingresso_juiz_titular +
                	  "&ddd_telefone_gabinete_juiz=" + ddd_telefone_gabinete_juiz +
                	  "&telefone_gabinete_juiz=" + telefone_gabinete_juiz +
                	  "&ddd_telefone_cel_juiz=" + ddd_telefone_cel_juiz +
                	  "&telefone_cel_juiz=" + telefone_cel_juiz +
                	  "&email_eletronico_juiz=" + email_eletronico_juiz ;
                	  
                	  if(document.getElementById('ind_juiz_titular_sim').checked)
                	  {
                	      dadosUsuario += "&id_juiz_titular2=" + id_juiz_titular2 + 
					                	  "&dat_ingresso_juiz_titular2=" + dat_ingresso_juiz_titular2 +
					                	  "&ddd_telefone_gabinete_juiz2=" + ddd_telefone_gabinete_juiz2 +
					                	  "&telefone_gabinete_juiz2=" + telefone_gabinete_juiz2 +
					                	  "&ddd_telefone_cel_juiz2=" + ddd_telefone_cel_juiz2 +
					                	  "&telefone_cel_juiz2=" + telefone_cel_juiz2 +
					                	  "&email_eletronico_juiz2=" + email_eletronico_juiz2 ; 
                	  }
     	
     	$.ajax(
			{
				type: "POST",
				url: "?d=dados&a=dados&f=camposNaSessao",
				data: 	dadosUsuario,
				beforeSend: function()	
				{
					
				},
				success: function()
				{

				}
			}
		);
	}

	function excluir_produtividade(cod_substituto)
	{
		if(confirm('Deseja Excluir a produtividade?')){
	  		document.location.href='?d=dados&a=dados&f=excluirMagistrado&cod_substituto='+cod_substituto;
	  	}
	}