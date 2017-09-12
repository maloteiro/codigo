
	function visualizarWEB2() {
		
		var sendFormulario = new criaFormulario('?d=dados&a=dados&f=marcarVisualizacaoWEB2');
			
		// adiciona campos e valores ao formul�rio
		sendFormulario = addChildFormulario(sendFormulario, "visualizar_web2", "input", "hidden");
		sendFormulario = addValueChildFormulario(sendFormulario, "visualizar_web2", "true");

		sendFormulario.submit();	
	}
	

	function SolicitarInclusaoCompetencia(hs) {
		try {
			
			hs.htmlExpand(
							$id('link-highslide-html'), 
							{ 
								contentId: 'highslide-html-ajax',
								wrapperClassName: 'highslide-white', 
								outlineType: 'rounded-white',
								outlineWhileAnimating: true, 
								objectType: 'ajax', 
								preserveContent: true 
							} 
						);
			
		} catch(e) {						
			var sendFormulario = new criaFormulario('?d=dados&a=dados&f=formPasso1');				
			sendFormulario = addChildFormulario(sendFormulario, "form_solicita_competencia", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "form_solicita_competencia", "true");
			sendFormulario.submit();		
		}
	}	
	
	function abrirCadastroProdutividadeServentia(seq_produtividade_serventia, acao_form) {
		try {
			var sendFormulario = new criaFormulario('?d=dados&a=dados&f=formPasso1');
			
			sendFormulario = addChildFormulario(sendFormulario, "form_cadastro_produtividade_serventia", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "form_cadastro_produtividade_serventia", "true");
						
			sendFormulario = addChildFormulario(sendFormulario, "seq_produtividade_serventia", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "seq_produtividade_serventia", seq_produtividade_serventia);
			
			sendFormulario = addChildFormulario(sendFormulario, "acao_form", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "acao_form", acao_form);
			
			sendFormulario.submit();		
		} catch(e) {
			return false;
		}
	}
	
	function abrirCadastroProdutividadeMagistrado(seq_magistrado, seq_produtividade_magistrado, acao_form) {
		try {
			
			var sendFormulario = new criaFormulario('?d=dados&a=dados&f=formPasso4');
			
			sendFormulario = addChildFormulario(sendFormulario, "form_cadastro_produtividade_magistrado", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "form_cadastro_produtividade_magistrado", "true");
			
			sendFormulario = addChildFormulario(sendFormulario, "seq_magistrado", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "seq_magistrado", seq_magistrado);
			
			sendFormulario = addChildFormulario(sendFormulario, "seq_produtividade_magistrado", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "seq_produtividade_magistrado", seq_produtividade_magistrado);			
			
			sendFormulario = addChildFormulario(sendFormulario, "acao_form", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "acao_form", acao_form);
				
			sendFormulario.submit();		
			
		} catch(e) {
			return false;
		}
	}
	
	function abrirFormCadastroMagistrado(seq_magistrado_serventia) {
		try {
			var sendFormulario = new criaFormulario('?d=dados&a=dados&f=formPasso2');
			
			sendFormulario = addChildFormulario(sendFormulario, "form_cadastro_magistrado_serventia", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "form_cadastro_magistrado_serventia", "true");
			
			sendFormulario = addChildFormulario(sendFormulario, "seq_magistrado_serventia_carregado", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "seq_magistrado_serventia_carregado", seq_magistrado_serventia);
			
			sendFormulario.submit();		
		} catch(e) {
			return false;
		}		
	}
	
	function abrirFormCadastroSecretaria(seq_secretaria_serventia, visualizacao) {
		try {
			var sendFormulario = new criaFormulario('?d=dados&a=dados&f=formPasso3');

			sendFormulario = addChildFormulario(sendFormulario, "form_cadastro_secretaria_serventia", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "form_cadastro_secretaria_serventia", "true");

			sendFormulario = addChildFormulario(sendFormulario, "seq_secretaria_serventia", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "seq_secretaria_serventia", seq_secretaria_serventia);

			if(visualizacao == 'visualizacao') {
				
				sendFormulario = addChildFormulario(sendFormulario, "form_cadastro_secretaria_serventia_visu", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "form_cadastro_secretaria_serventia_visu", "true");

			}
			
			sendFormulario.submit();		
		} catch(e) {
			return false;
		}		
	}
	
	function abrirFormVisualizacaoMagistrado(seq_magistrado_serventia) {
		try {
			var sendFormulario = new criaFormulario('?d=dados&a=dados&f=formPasso2');
			
			sendFormulario = addChildFormulario(sendFormulario, "form_cadastro_visualiza_magistrado", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "form_cadastro_visualiza_magistrado", "true");
			
			sendFormulario = addChildFormulario(sendFormulario, "seq_magistrado_serventia", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "seq_magistrado_serventia", seq_magistrado_serventia);
			
			sendFormulario.submit();		
		} catch(e) {
			return false;
		}		
	}
	
	function abrirCadastroSecretaria(hs) {
	/**/	
		try { 								
				return hs.htmlExpand(
							$id("link-cadastro-secretaria"), 
							{ 
								contentId: 'highslide-html-ajax',
								wrapperClassName: 'highslide-white', 
								outlineType: 'rounded-white',
								outlineWhileAnimating: true, 
								objectType: 'ajax', 
								preserveContent: false
							} 
						);					
		} catch(e) {
			var sendFormulario = new criaFormulario('?d=dados&a=dados&f=formPasso3');				
			sendFormulario = addChildFormulario(sendFormulario, "form_cadastro_secretaria", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "form_cadastro_secretaria", "true");
			sendFormulario.submit();		
		}
	/**/	
	/** /
			var sendFormulario = new criaFormulario('?d=dados&a=dados&f=formPasso3');				
			sendFormulario = addChildFormulario(sendFormulario, "form_cadastro_secretaria", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "form_cadastro_secretaria", "true");
			sendFormulario.submit();		
	/**/
		
	}
	
	function abrirCadastroMagistrado(hs) {
	/**/	
		try { 		
						
				return hs.htmlExpand(
							$id("link-cadastro-magistrado"), 
							{ 
								contentId: 'highslide-html-ajax',
								wrapperClassName: 'highslide-white', 
								outlineType: 'rounded-white',
								outlineWhileAnimating: true, 
								objectType: 'ajax', 
								preserveContent: false
							} 
						);			
		
		} catch(e) {
			var sendFormulario = new criaFormulario('?d=dados&a=dados&f=formPasso3');				
			sendFormulario = addChildFormulario(sendFormulario, "form_cadastro_magistrado", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "form_cadastro_magistrado", "true");
			sendFormulario.submit();		
		}
	/**/
		
	}
	
	function abrirAlteracaoSecretaria(hs, seq_secretaria_serventia) {
		try { 		
						
				return hs.htmlExpand(
							$id("link-cadastro-secretaria-" + seq_secretaria_serventia), 
							{ 
								contentId: 'highslide-html-ajax',
								wrapperClassName: 'highslide-white', 
								outlineType: 'rounded-white',
								outlineWhileAnimating: true, 
								objectType: 'ajax', 
								preserveContent: false
							} 
						);		
		} catch(e) {
			var sendFormulario = new criaFormulario('?d=dados&a=dados&f=formPasso3');				
			sendFormulario = addChildFormulario(sendFormulario, "form_cadastro_secretaria", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "form_cadastro_secretaria", "true");
			
			sendFormulario = addChildFormulario(sendFormulario, "carregar_secretaria", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "carregar_secretaria", "true");
			
			sendFormulario = addChildFormulario(sendFormulario, "seq_secretaria_serventia", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "seq_secretaria_serventia", seq_secretaria_serventia);
			
			sendFormulario.submit();		
		}
		
	}

	function SalvarInformacoesOrgao () {
		try {
			if(ValidaInformacoesOrgao()) {
			//	var competencias_juiz = document.getElementsByName('competencias_juiz');
			//	var verifica_existencia = false;
								
				// Monta XML com as competencias do Juiz
			//	var xml_competencias_juiz = '<?xml version="1.0" encoding="iso-8859-1" ?>';				
			//	xml_competencias_juiz += "<COMPETENCIAS_JUIZ>";
			//	for(i=0; i<competencias_juiz.length; i++) {
					
			//		if(competencias_juiz[i].checked == true) {
			//			xml_competencias_juiz += "<COMPETENCIA>" + competencias_juiz[i].value + "</COMPETENCIA>";														verifica_existencia = true;
			//		}
			//	}
			//	xml_competencias_juiz += "</COMPETENCIAS_JUIZ>";		
				
				// Cria o formul�rio de envio via POST
				var sendFormulario = new criaFormulario('?d=dados&a=dados&f=salvarInformacoesOrgao');
		
				// Adiciona CAMPOS e VALORES ao formul�rio
			//	sendFormulario = addChildFormulario(sendFormulario, "xml_competencias_juiz", "input", "hidden");
			//	sendFormulario = addValueChildFormulario(sendFormulario, "xml_competencias_juiz", xml_competencias_juiz);
				
				sendFormulario = addChildFormulario(sendFormulario, "dat_instalacao", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "dat_instalacao", $id('dat_instalacao').value);
				
				sendFormulario = addChildFormulario(sendFormulario, "qnt_concursados", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "qnt_concursados", $id('qnt_concursados').value);
				
				sendFormulario = addChildFormulario(sendFormulario, "qnt_tercerizados", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "qnt_tercerizados", $id('qnt_tercerizados').value);
				
				sendFormulario = addChildFormulario(sendFormulario, "qnt_cedidos", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "qnt_cedidos", $id('qnt_cedidos').value);
				
				sendFormulario = addChildFormulario(sendFormulario, "qnt_efetivos", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "qnt_efetivos", $id('qnt_efetivos').value);
				
				sendFormulario = addChildFormulario(sendFormulario, "qnt_afastados", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "qnt_afastados", $id('qnt_afastados').value);
				
				sendFormulario = addChildFormulario(sendFormulario, "qnt_outros", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "qnt_outros", $id('qnt_outros').value);
								
				sendFormulario.submit();
				
			//	if(verifica_existencia) {
			//		// Subimita o formul�rio via POST
			//		sendFormulario.submit();
			//	} else {
			//		alert("Selecione no m�nimo uma compet�ncia para esta serventia.");
			//		return false;
			//	}
			}
		} catch (err){
			alert("N�o foi poss�vel enviar o formul�rio de informa��es da �rg�o.");			
		}
	}
	
	function ValidaInformacoesOrgao() {
		/** /
		if($id('dat_instalacao').value == ""){				
			alert("Verifique Data da Instala��o do �rg�o Jurisdicional.");
			$id('dat_instalacao').focus();
			return false;
		} 
		/**/
		// else 
		if($id('qnt_concursados').value == "") {
			alert("Verifique a Quantidade de Servidores Concursados.");
			$id('qnt_concursados').focus();
			return false;
		} else if($id('qnt_tercerizados').value == "") {
			alert("Verifique a Quantidade de Servidores Tercerizados.");
			$id('qnt_tercerizados').focus();
			return false;
		} else if($id('qnt_cedidos').value == "") {
			alert("Verifique a Quantidade de Servidores Cedidos.");
			$id('qnt_cedidos').focus();
			return false;
		} else if($id('qnt_efetivos').value == "") {
			alert("Verifique a Quantidade de Servidores Efetivos.");
			$id('qnt_efetivos').focus();
			return false;
		} else if($id('qnt_afastados').value == "") {
			alert("Verifique a Quantidade de Servidores Afastados.");
			$id('qnt_afastados').focus();
			return false;
		} else {
			
			return true;
			
		}
	}
	
	function _validarPasso(num_passo) {
		
		var objHTTP = new getHTTP();
		
		//se tiver suporte ajax		
		if(objHTTP) {
						
			objHTTP.open("POST", "?d=dados&a=dados&f=_validarPasso", true);
			objHTTP.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			
			objHTTP.onreadystatechange = function() {
				
				var default_viewer = $id('default_viewer');

				//enquanto estiver processando...emite a msg de carregando
				if(objHTTP.readyState == 1) {
					default_viewer.innerHTML = "<img src='./html/img/loading1.gif' />";
				}
				//ap�s ser processado - chama fun��o processXML que vai varrer os dados
				if(objHTTP.readyState == 4 ) {			
					if(objHTTP.responseText) {										
						default_viewer.innerHTML = "";
					}
				}
			}
						
			//passa o c�digo do projeto escolhido
			var params = "num_passo=" + num_passo;
			objHTTP.send(params);
		}	
		
	}	
	
	function AdicionarProdutividadeServentia() {
	//	try {
			if(ValidaProdutividadeServentia()) {
				var sendFormulario = $id('formulario_produtividade_serventia');

				// Subimita o formul�rio via POST
				sendFormulario.submit();
			}
			
	//	} catch (err){
	//		alert("N�o foi poss�vel enviar o formul�rio de cadastro de informa��es da secretaria.");			
	//	}
	}
	
	function SalvarProdutividadeMagistrado(seq_magistrado_serventia) {
		try {
			if(ValidaProdutividadeMagistrado(seq_magistrado_serventia)) {
				var sendFormulario = $id('formulario_produtividade_magistrado');

				// Subimita o formul�rio via POST
				sendFormulario.submit();
			}
			
		} catch (err){
			alert("N�o foi poss�vel enviar o formul�rio de cadastro de informa��es da secretaria.");			
		}
	}
	
	function salvarPasso5() {
		try {
			//if(ValidaProdutividadeMagistrado(seq_magistrado_serventia)) {
				var sendFormulario = $id('formulario_passo_5');

				// envia o formul�rio via POST
				sendFormulario.submit();
			//}
			
		} catch (err){
			alert("N�o foi poss�vel enviar o formul�rio.");			
		}
	}
	
	function SalvarProdutividadeServentia(seq_serventia) {
		try {
			if(ValidaProdutividadeServentia(seq_serventia)) {
				var sendFormulario = $id('formulario_produtividade_serventia');

				// Subimita o formul�rio via POST
				sendFormulario.submit();
			}
			
		} catch (err){
			alert("N�o foi poss�vel enviar o formul�rio de cadastro de informa��es da secretaria.");			
		}
	}
	
	function gerarPDFProdutividadeMagistrado(seq_magistrado, seq_produtividade_magistrado) {		
		try {
			/** /
			//open.window('?d=dados&a=dados&f=geraPDFProdutividadeMagistrado','_blank','fullscreen');
			window.open(
						"?d=dados&a=relatorioProdutividadePDF&f=geraPDFProdutividadeMagistrado&seq_magistrado="+seq_magistrado+"&seq_produtividade_magistrado="+seq_produtividade_magistrado, 
						"appPopUpWindow",
						""
			);
			//window.open('index.php?d=dados&a=dados&f=geraPDFProdutividadeMagistrado&seq_magistrado='+seq_magistrado+'&seq_produtividade_magistrado='+seq_produtividade_magistrado,'appPopUpWindow ','width=490,height=580,left=200,top=200,resizable');
			/**/
			
			var sendFormulario = new criaFormulario('?d=dados&a=relatorioProdutividadePDF&f=geraPDFProdutividadeMagistrado');
							
			sendFormulario = addChildFormulario(sendFormulario, "seq_magistrado", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "seq_magistrado", seq_magistrado);
			
			sendFormulario = addChildFormulario(sendFormulario, "seq_produtividade_magistrado", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "seq_produtividade_magistrado", seq_produtividade_magistrado);
							
			// Subimita o formul�rio via POST
			sendFormulario.submit();
			
		} catch(err) {
			alert(err.description + "\n\n" + err.message);
		}
	}
	
	function gerarPDFProdutividadeServentia(seq_produtividade_serventia) {		
		try {
			/** /
			//open.window('?d=dados&a=dados&f=geraPDFProdutividadeMagistrado','_blank','fullscreen');
			window.open(
						"?d=dados&a=relatorioProdutividadePDF&f=geraPDFProdutividadeMagistrado&seq_magistrado="+seq_magistrado+"&seq_produtividade_magistrado="+seq_produtividade_magistrado, 
						"appPopUpWindow",
						""
			);
			//window.open('index.php?d=dados&a=dados&f=geraPDFProdutividadeMagistrado&seq_magistrado='+seq_magistrado+'&seq_produtividade_magistrado='+seq_produtividade_magistrado,'appPopUpWindow ','width=490,height=580,left=200,top=200,resizable');
			/**/
			
			var sendFormulario = new criaFormulario('?d=dados&a=relatorioProdutividadePDF&f=geraPDFProdutividadeServentia');
							
			sendFormulario = addChildFormulario(sendFormulario, "seq_produtividade_serventia", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "seq_produtividade_serventia", seq_produtividade_serventia);
							
			// Subimita o formul�rio via POST
			sendFormulario.submit();
			
		} catch(err) {
			alert(err.description + "\n\n" + err.message);
		}
	}
	
	
	
	function AdicionarInformacoesSecretaria () {
		
		try {
			if(ValidaInformacoesSecretaria()) {
					
				var sendFormulario = new  MontarFormSecretaria('?d=dados&a=dados&f=adicionaSecretariaServentia');
				
				// Subimita o formul�rio via POST
				sendFormulario.submit();
			}
			
		} catch (err){
			alert("N�o foi poss�vel enviar o formul�rio de cadastro de informa��es da secretaria.");			
		}
	}
	
	function AtualizarInformacoesSecretaria(seq_secretaria_serventia) {
		try {
			if(ValidaInformacoesSecretaria()) {
					
				var sendFormulario = new  MontarFormSecretaria('?d=dados&a=dados&f=atualizaSecretariaServentia', seq_secretaria_serventia);
				
				// Subimita o formul�rio via POST
				sendFormulario.submit();
			}
			
		} catch (err){
			alert("N�o foi poss�vel enviar o formul�rio de atualiza��o das informa��es da secretaria.");			
		}
	}	
	
	function AdicionarInformacoesMagistrado() {			
	//	try {
			if(ValidaInformacoesMagistrado()) {					
					
				var sendFormulario = new criaFormulario('?d=dados&a=dados&f=adicionaMagistradoServentia');
								
				sendFormulario = addChildFormulario(sendFormulario, "seq_magistrado", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "seq_magistrado", $id('nome_magistrado').value);				
				sendFormulario = addChildFormulario(sendFormulario, "ind_tipo_juiz", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "ind_tipo_juiz", $id('ind_tipo_juiz').value);
				
			//	sendFormulario = addChildFormulario(sendFormulario, "situacao_magistrado", "input", "hidden");
			//	sendFormulario = addValueChildFormulario(sendFormulario, "situacao_magistrado", $id('situacao_magistrado').value);
			//	sendFormulario = addChildFormulario(sendFormulario, "dt_ingresso_magistrado", "input", "hidden");
			//	sendFormulario = addValueChildFormulario(sendFormulario, "dt_ingresso_magistrado", $id('dt_ingresso_magistrado').value);
			//	sendFormulario = addChildFormulario(sendFormulario, "dt_saida_magistrado", "input", "hidden");
			//	sendFormulario = addValueChildFormulario(sendFormulario, "dt_saida_magistrado", $id('dt_saida_magistrado').value);
								
				// Subimita o formul�rio via POST
				sendFormulario.submit();
			}
			
	//	} catch (err){
	//		alert("N�o foi poss�vel enviar o formul�rio de cadastro de informa��es do magistrado.");			
	//	}
	}
	
	function AtualizarInformacoesMagistrado() {			
		try {
			if(ValidaInformacoesMagistrado()) {
				
				// Cria o formul�rio de envio via POST
				var sendFormulario = new criaFormulario('?d=dados&a=dados&f=atualizaMagistradoServentia');
				
				sendFormulario = addChildFormulario(sendFormulario, "seq_magistrado", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "seq_magistrado", $id('seq_magistrado_serventia_carregado').value);				
				sendFormulario = addChildFormulario(sendFormulario, "ind_tipo_juiz", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "ind_tipo_juiz", $id('ind_tipo_juiz').value);
				
			//	sendFormulario = addChildFormulario(sendFormulario, "situacao_magistrado", "input", "hidden");
			//	sendFormulario = addValueChildFormulario(sendFormulario, "situacao_magistrado", $id('situacao_magistrado').value);
			//	sendFormulario = addChildFormulario(sendFormulario, "dt_ingresso_magistrado", "input", "hidden");
			//	sendFormulario = addValueChildFormulario(sendFormulario, "dt_ingresso_magistrado", $id('dt_ingresso_magistrado').value);
			//	sendFormulario = addChildFormulario(sendFormulario, "dt_saida_magistrado", "input", "hidden");
			//	sendFormulario = addValueChildFormulario(sendFormulario, "dt_saida_magistrado", $id('dt_saida_magistrado').value);
				
				// Subimita o formul�rio via POST
				sendFormulario.submit();
			}
			
		} catch (err){
			alert("N�o foi poss�vel enviar o formul�rio de cadastro de informa��es do magistrado.");			
		}
	}
	
	function ValidaProdutividadeServentia() {	/**/
		try {
			/** /
			if($id('dsc_observacao').value == "") {
				alert("Digite uma observa��o sobre esta produtividade.");
				$id('dsc_observacao').focus();
				return false;									
			}
			/**/
			
			for(i=0; i<$id('qnt_total_perguntas').value; i++) {
				var num_pergunta = i+1;
				if($id('resposta_pergunta_' + num_pergunta).value == "") {
					alert("Informe a produtividade para a pergunta: " + num_pergunta);
					$id('resposta_pergunta_' + num_pergunta).focus();					
					var validador = false;
					return false;
				} else {
					validador = true;
				}
			}
			
			if(validador) {
				return true;				
			} else {
				return false;
			}
		} catch(err) {
			alert(err.description + "\n" + err.message);
		}
	}
	
	function ValidaProdutividadeMagistrado(seq_magistrado) {				
		try {			
			//	if($id('dat_dia_inicial').value == "") {
			//		alert("Digite a dia do per�odo inicial.");
			//		$id('dat_dia_inicial').focus();
			//		return false;									
			//	} else 
			//	if($id('dat_dia_inicial').value < $id('data_ultima_produtividade').value.substr(8, 2)) {
			//		alert("O per�odo inicial n�o pode ser inferior a data final da �ltima produtividade cadastrada.");
			//		$id('dat_dia_inicial').focus();
			//		return false;									
				//	} else
							
				dia_ref_inicial = $id('dat_inicial').value.substring(0,2);
				mes_ref_inicial = $id('dat_inicial').value.substring(3,5);
				ano_ref_inicial = $id('dat_inicial').value.substring(6,10);
				
				dia_ref_final = $id('dat_final').value.substring(0,2);
				mes_ref_final = $id('dat_final').value.substring(3,5);
				ano_ref_final = $id('dat_final').value.substring(6,10);
				
			//	for(i=0; i<9; i++) {
			//		dia_ref_inicial = (dia_ref_inicial == i)? '0' + dia_ref_inicial	: dia_ref_inicial;
			//		mes_ref_inicial = (mes_ref_inicial == i)? '0' + mes_ref_inicial	: mes_ref_inicial;
			//		dia_ref_final = (dia_ref_final == i)? '0' + dia_ref_final	: dia_ref_final;
			//		mes_ref_final = (mes_ref_final == i)? '0' + mes_ref_final	: mes_ref_final;
			//	}
			
			//	if($id('data_ultima_produtividade_num') != '') {
			//		alert(ano_ref_final + '' + mes_ref_inicial + '' + dia_ref_inicial + "\n" + $id('data_ultima_produtividade_num').value);
			//	}
				
				if($id('dat_inicial').value == "") {
					alert("Informe a data inicial.");
					$id('dat_inicial').focus();
					return false;													
				} else if($id('dat_final').value == "") {
					alert("Informe a data final.");
					$id('dat_final').focus();
					return false;													
				} else if(ano_ref_inicial < "2009") {
					alert("Este cadastro s� � v�lido apartir de 2009.");
					$id('dat_inicial').focus();
					return false;													
				} else if($id('dat_inicial').value == "") {
					alert("Digite a dia do per�odo final.");
					$id('dat_inicial').focus();
					return false;									
				} else if($id('dat_final').value == "") {
					alert("Digite a dia do per�odo final.");
					$id('dat_final').focus();
					return false;									
				} else if(mes_ref_inicial != $id('num_mes_pendente').value) {				
					alert("O per�odo informado deve estar dentro do m�s de refer�ncia.\nM�s de refer�ncia: " + $id('mes_referencia').value);
					$id('dat_inicial').value = "";
					$id('dat_inicial').focus();
					return false;									
				} else if(mes_ref_inicial != mes_ref_final) {				
					alert("O per�odo informado deve estar dentro do mesmo m�s de refer�ncia.\nA data final deve estar dentro do mesmo m�s da data inicial");
					$id('dat_final').value = "";
					$id('dat_final').focus();
					return false;									
				} else if(verificaPeriodoProdutividadeMagistrado(seq_magistrado)) {
				
			//	if(parseInt($id('dat_inicial').value.substring(3,5)) == now.getMonth()) {
			//		alert("N�o � preciso cadastrar o m�s atual.");
			//		if(confirm('Deseja cancelar este cadastro?')) {
			//			document.location.href='?d=dados&a=dados&f=formPasso4';
			//		}
			//		return false;
			//	}
			
			//	else if($id('dat_dia_final').value <  $id('dat_dia_inicial').value) {
			//		alert("O per�odo final n�o pode ser inferior ao per�odo inicial.");
			//		$id('dat_dia_final').focus();
			//		return false;									
			//	} 
				
			//	var existe_podutividade = getValorRadio('existe_podutividade');
				
			//	if(existe_podutividade == undefined || existe_podutividade == '') {
			//		if(confirm('Este magistrado possui produtividade neste m�s de refer�ncia?\n\nClique em OK se sim\nClique em Cancelar se n�o')){
			//			$id('existe_podutividade_sim').checked = "true";	
			//			$id('questionario_produtividade').style.display = 'block';
			//			return false;
			//		} else {
			//			$id('existe_podutividade_nao').checked = "true";	
			//			$id('questionario_produtividade').style.display = 'none';
			//			return false;
			//		}
			//	}
				
			//	if ($id('existe_podutividade_sim').checked == true) {			
					
					for(i=0; i<$id('qnt_total_perguntas').value; i++) {
						var num_pergunta = i+1;
						if($id('resposta_pergunta_' + num_pergunta).value == "") {
							
							alert("Informe a produtividade para a pergunta: " + num_pergunta);
							$id('resposta_pergunta_' + num_pergunta).focus();					
							return false;
							
						} else {
							return true;
						}
					}
					
			//	} else if($id('dsc_observacao').value == "") {
			//		alert("Descreva o motivo deste magistrado n�o possuir informa��es para este m�s de referencia.");
			//		$id('dsc_observacao').focus();
			//		return false;
			//	}
			
			}
						
			
		} catch(err) {
			alert(err.description + "\n" + err.message);
		}
		/**/
		return true;
	}
	
	function ValidaInformacoesMagistrado() {
		if($id('ind_tipo_juiz').value == "") {
			alert("Selecione o tipo de magistrado.");
			$id('ind_tipo_juiz').focus();
			return false;									
		} else if($id('nome_magistrado').value == ""){				
			alert("Selecione o Magistrado.");
			$id('nome_magistrado').focus();
			return false;
	//	} else if($id('dt_ingresso_magistrado').value == "") {
	//		alert("Verifique o data de ingresso do magistrado na serventia.");
	//		$id('dt_ingresso_magistrado').focus();
	//		return false;
	//	} else if($id('situacao_magistrado').value == "") {
	//		alert("Indique a situa��o atual do magistrado na serventia.");
	//		$id('situacao_magistrado').focus();
	//		return false;
	//	} else if($id('situacao_magistrado').value == 2 ) {
	//		if($id('dt_saida_magistrado').value == "") {
	//			alert("Verifique a data de sa�da do magistrado.");
	//			$id('dt_saida_magistrado').focus();
	//			return false;					
	//		} else if($id('nome_magistrado_beneficiado').value == "") {
	//			alert("Verifique o nome do magistrado beneficiado.");
	//			$id('nome_magistrado_beneficiado').focus();
	//			return false;					
	//		} else if($id('dt_ingresso_serv_beneficiado').value == "") {
	//			alert("Verifique a data de ingresso do magistrado beneficiado.");
	//			$id('dt_ingresso_serv_beneficiado').focus();
	//			return false;					
	//	} else if($id('dt_ingresso_magistrado').value == "" ) {
	//			alert("Verifique a data de in�cio das atividades do magistrado.");
	//			$id('dt_ingresso_magistrado').focus();
	//			return false;
	//	} else if($id('situacao_magistrado').value == "4" ){
	//		if($id('dt_saida_magistrado').value == "" ) {
	//			alert("Verifique a data de t�rmido das atividades do magistrado.");
	//			$id('dt_saida_magistrado').focus();
	//			return false;
	//		} else {
	//			// Caso tenha validado todos os campos acima, retorna TRUE
	//			return true;				
	//		}
		} else {
			// Caso tenha validado todos os campos acima, retorna TRUE
			return true;								
		}
	//	} else {
	//		// Caso tenha validado todos os campos acima, retorna TRUE
	//		return true;							
	//	} 
	}
	
	function ValidaInformacoesSecretaria() {
		var radioTipoResponsavel = getValorRadio('ind_tipo_responsavel');
		if(radioTipoResponsavel == "0" || radioTipoResponsavel == "1") {
			if($id('responsavel_serventia').value == ""){				
				alert("Verifique o Nome do Respons�vel.");
				$id('responsavel_serventia').focus();
				return false;
			} else if($id('ind_tipo_denominacao').value == "") {
				alert("Verifique o Tipo da Serventia.");
				$id('ind_tipo_denominacao').focus();
				return false;
			} else if($id('email_secretaria').value == "") {
				alert("Verifique o Email da Secretaria.");
				$id('email_secretaria').focus();
				return false;					
			} else if(!validaEmail($id('email_secretaria').value)) {
				alert("Indique um Email v�lido para a Secretaria.");
				$id('email_secretaria').focus();
				return false;									
			} else if($id('ddd_secretaria').value == "") {
				alert("Verifique o DDD a Serventia.");
				$id('ddd_secretaria').focus();
				return false;									
			} else if($id('tel_secretaria').value == "") {
				alert("Verifique o Telefone para a Secretaria.");
				$id('tel_secretaria').focus();
				return false;									
			} else if($id('ddd_tel_outro').value == "") {
				alert("Verifique o Outro DDD/Telefone para a Secretaria.\nCaso n�o exista, Verifique o telefone da Secretaria novamente.");
				$id('ddd_tel_outro').focus();
				return false;									
			} else if($id('tel_outro').value == "") {
				alert("Verifique o Outro DDD/Telefone para a Secretaria.\nCaso n�o exista, Verifique o telefone da Secretaria novamente.");
				$id('tel_outro').focus();
				return false;									
			} else if($id('uf_serventia').value == "") {
				alert("Verifique a UF/Estado da Secretaria.");
				$id('uf_serventia').focus();
				return false;									
			} else if($id('cidade_serventia').value == "") {
				alert("Verifique a Cidade da Secretaria.");
				$id('cidade_serventia').focus();
				return false;									
			} else if($id('end_serventia_judicial').value == "") {
				alert("Verifique o Endere�o F�sico da Secretaria. (Rua, Avenida, etc)");
				$id('end_serventia_judicial').focus();
				return false;									
			} else if($id('num_end_serventia').value == "") {
				alert("Verifique o N�mero do Endere�o F�sico da Secretaria. (N�mero da Sala, Loja, Casa, etc)");
				$id('num_end_serventia').focus();
				return false;									
			} else if($id('cep_end_serventia').value == "") {
				alert("Verifique o CEP da Secretaria.");
				$id('cep_end_serventia').focus();
				return false;									
			} else if($id('bairro_end_serventia').value == "") {
				alert("Verifique o Bairro da Secretaria.");
				$id('bairro_end_serventia').focus();
				return false;									
			} else {
				
				// Caso tenha validado todos os campos acima, retorna TRUE
				return true;									
				
			} 
		} else {
			alert("Verifique o N�vel de Responsabilidade do cadastrado.");			
			return false;
		}
	}
	
	function MontarFormMagistrado(action_form) {
	//	try {
			
			// Cria o formul�rio de envio via POST
			var sendFormulario = new criaFormulario(action_form);
			
			sendFormulario = addChildFormulario(sendFormulario, "seq_magistrado_serventia", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "seq_magistrado_serventia", $id('seq_magistrado_serventia').value);
			
			sendFormulario = addChildFormulario(sendFormulario, "seq_magistrado", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "seq_magistrado", $id('nome_magistrado').value);
			
		//	sendFormulario = addChildFormulario(sendFormulario, "dt_ingresso_magistrado", "input", "hidden");
		//	sendFormulario = addValueChildFormulario(sendFormulario, "dt_ingresso_magistrado", $id('dt_ingresso_magistrado').value);
						
		//	sendFormulario = addChildFormulario(sendFormulario, "situacao_magistrado", "input", "hidden");
		//	sendFormulario = addValueChildFormulario(sendFormulario, "situacao_magistrado", $id('situacao_magistrado').value);
			
		//	sendFormulario = addChildFormulario(sendFormulario, "dt_saida_magistrado", "input", "hidden");
		//	sendFormulario = addValueChildFormulario(sendFormulario, "dt_saida_magistrado", $id('dt_saida_magistrado').value);
			
		//	sendFormulario = addChildFormulario(sendFormulario, "seq_magistrado_beneficiado", "input", "hidden");
		//	sendFormulario = addValueChildFormulario(sendFormulario, "seq_magistrado_beneficiado", $id('nome_magistrado_beneficiado').value);
			
		//	sendFormulario = addChildFormulario(sendFormulario, "dt_ingresso_serv_beneficiado", "input", "hidden");
		//	sendFormulario = addValueChildFormulario(sendFormulario, "dt_ingresso_serv_beneficiado", $id('dt_ingresso_serv_beneficiado').value);
			
			sendFormulario = addChildFormulario(sendFormulario, "ind_tipo_juiz", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "ind_tipo_juiz", $id('ind_tipo_juiz').value);
			
			return sendFormulario;
			
	//	} catch (err){
	//		alert("N�o foi poss�vel criar o formul�rio de magistrado.");			
	//	}
			
	}
	
	function MontarFormSecretaria(action_form, seq_secretaria_serventia) {
		try {
			// Cria o formul�rio de envio via POST
			var sendFormulario = new criaFormulario(action_form);
			
			// adiciona campos e valores ao formul�rio
			sendFormulario = addChildFormulario(sendFormulario, "seq_secretaria_serventia", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "seq_secretaria_serventia", seq_secretaria_serventia);
			
			var ind_tipo_responsavel = getValorRadio('ind_tipo_responsavel');
			sendFormulario = addChildFormulario(sendFormulario, "ind_tipo_responsavel", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "ind_tipo_responsavel", ind_tipo_responsavel);
			
			sendFormulario = addChildFormulario(sendFormulario, "responsavel_serventia", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "responsavel_serventia", $id('responsavel_serventia').value);
			
			sendFormulario = addChildFormulario(sendFormulario, "ind_tipo_denominacao", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "ind_tipo_denominacao", $id('ind_tipo_denominacao').value);
			
			sendFormulario = addChildFormulario(sendFormulario, "email_secretaria", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "email_secretaria", $id('email_secretaria').value);
			
			sendFormulario = addChildFormulario(sendFormulario, "ddd_secretaria", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "ddd_secretaria", $id('ddd_secretaria').value);
			
			sendFormulario = addChildFormulario(sendFormulario, "tel_secretaria", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "tel_secretaria", $id('tel_secretaria').value);
			
			sendFormulario = addChildFormulario(sendFormulario, "ddd_tel_outro", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "ddd_tel_outro", $id('ddd_tel_outro').value);
			
			sendFormulario = addChildFormulario(sendFormulario, "tel_outro", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "tel_outro", $id('tel_outro').value);
						
			sendFormulario = addChildFormulario(sendFormulario, "uf_serventia", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "uf_serventia", $id('uf_serventia').value);
						
			sendFormulario = addChildFormulario(sendFormulario, "cidade_serventia", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "cidade_serventia", $id('cidade_serventia').value);
			
			sendFormulario = addChildFormulario(sendFormulario, "end_serventia_judicial", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "end_serventia_judicial", $id('end_serventia_judicial').value);
						
			sendFormulario = addChildFormulario(sendFormulario, "num_end_serventia", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "num_end_serventia", $id('num_end_serventia').value);
						
			sendFormulario = addChildFormulario(sendFormulario, "bairro_end_serventia", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "bairro_end_serventia", $id('bairro_end_serventia').value);
						
			sendFormulario = addChildFormulario(sendFormulario, "complemento_end_serventia", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "complemento_end_serventia", $id('complemento_end_serventia').value); 
						
			sendFormulario = addChildFormulario(sendFormulario, "cep_end_serventia", "input", "hidden");
			sendFormulario = addValueChildFormulario(sendFormulario, "cep_end_serventia", $id('cep_end_serventia').value);
			
			return sendFormulario;
			
		} catch (err){
			alert("N�o foi poss�vel criar o formul�rio de secretaria.");			
		}
			
	}
	
	function AlterarSecretariaServentia(hs, seq_secretaria_serventia) {
		try {
			if(seq_secretaria_serventia) {
				
				setSESSION("seq_secretaria_serventia", seq_secretaria_serventia);
				
				hs.htmlExpand(
								$id('link-alterar-secretaria'), 
								{ 
									contentId: 'highslide-html-ajax',
									wrapperClassName: 'highslide-white', 
									outlineType: 'rounded-white',
									outlineWhileAnimating: true, 
									objectType: 'ajax', 
									preserveContent: true 
								} 
							);
				
				limpaSESSION("seq_secretaria_serventia");
			}
						
		} catch (err){
			
			try {			
				// Cria o formul�rio de envio via POST
				var sendFormulario = new criaFormulario('?d=dados&a=dados&f=formPasso3');
			
				// adiciona campos e valores ao formul�rio
				sendFormulario = addChildFormulario(sendFormulario, "carregar_secretaria", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "carregar_secretaria", "true");
				
				sendFormulario = addChildFormulario(sendFormulario, "seq_secretaria_serventia", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "seq_secretaria_serventia", seq_secretaria_serventia);
				
				sendFormulario = addChildFormulario(sendFormulario, "form_cadastro_secretaria", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "form_cadastro_secretaria", "true");
	
				// Subimita o formul�rio via POST
				sendFormulario.submit();
			} catch(errr) {
				alert("N�o foi poss�vel enviar o formul�rio de altera��o da secretaria.");			
			}
		}		
	}
	
	function InativarMagistradoServentia(seq_magistrado, seq_magistrado_serventia) {
		try {
			box_confirm = confirm("Ao inativar um magistrado a situa��o do magistrado na serventia ser� marcada como DESLIGADO DA SERVENTIA, e a data de sa�da do magistrado ser� definida para a data da inativa��o. Podendo ser mudada posteriormente no Passo 2\n\nDeseja realmente inativar este magistrado?");
			
			if(box_confirm == true) {
				// Cria o formul�rio de envio via POST
				var sendFormulario = new criaFormulario('?d=dados&a=dados&f=inativarMagistradoServentia');
			
				// adiciona campos e valores ao formul�rio
				sendFormulario = addChildFormulario(sendFormulario, "seq_magistrado", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "seq_magistrado", seq_magistrado);
			
				// adiciona campos e valores ao formul�rio
				sendFormulario = addChildFormulario(sendFormulario, "seq_magistrado_serventia", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "seq_magistrado_serventia", seq_magistrado_serventia);
	
				// Subimita o formul�rio via POST
				sendFormulario.submit();
			}
			
		} catch (err){
			alert("N�o foi poss�vel enviar o formul�rio de exclus�o da secretaria.");			
		}		
	}
	
	function ExcluirMagistradoServentia(seq_magistrado, seq_magistrado_serventia) {
		try {
			box_confirm = confirm("Deseja realmente excluir este registro?");
			
			if(box_confirm == true) {
				// Cria o formul�rio de envio via POST
				var sendFormulario = new criaFormulario('?d=dados&a=dados&f=excluirMagistradoServentia');
			
				// adiciona campos e valores ao formul�rio
				sendFormulario = addChildFormulario(sendFormulario, "seq_magistrado", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "seq_magistrado", seq_magistrado);
				
				// adiciona campos e valores ao formul�rio
				sendFormulario = addChildFormulario(sendFormulario, "seq_magistrado_serventia", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "seq_magistrado_serventia", seq_magistrado_serventia);
	
				// Subimita o formul�rio via POST
				sendFormulario.submit();
			}
			
		} catch (err){
			alert("N�o foi poss�vel enviar o formul�rio de exclus�o da secretaria.");			
		}		
	}
	
	function ExcluirProdutividadeMagistrado(seq_produtividade_magistrado) {
		try {
			box_confirm = confirm("Deseja realmente excluir este registro?");
			
			if(box_confirm == true) {
				// Cria o formul�rio de envio via POST
				var sendFormulario = new criaFormulario('?d=dados&a=dados&f=excluirProdutividadeMagistrado');
			
				// adiciona campos e valores ao formul�rio
				sendFormulario = addChildFormulario(sendFormulario, "seq_produtividade_magistrado", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "seq_produtividade_magistrado", seq_produtividade_magistrado);
	
				// Subimita o formul�rio via POST
				sendFormulario.submit();
			}
		} catch (err){
			alert("N�o foi poss�vel enviar o formul�rio de exclus�o da produtividade.");			
		}		
	}
	
	function ExcluirProdutividadeServentia(seq_produtividade_serventia) {
		try {
			box_confirm = confirm("Deseja realmente excluir este registro?");
			
			if(box_confirm == true) {
				// Cria o formul�rio de envio via POST
				var sendFormulario = new criaFormulario('?d=dados&a=dados&f=excluirProdutividadeServentia');
			
				// adiciona campos e valores ao formul�rio
				sendFormulario = addChildFormulario(sendFormulario, "seq_produtividade_serventia", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "seq_produtividade_serventia", seq_produtividade_serventia);
	
				// Subimita o formul�rio via POST
				sendFormulario.submit();
			}
			
		} catch (err){
			alert("N�o foi poss�vel enviar o formul�rio de exclus�o da produtividade.");			
		}		
	}
	
	function ExcluirSecretariaServentia(seq_secretaria_serventia) {		
		try {
			box_confirm = confirm("Deseja realmente excluir este registro?");
			
			if(box_confirm == true) {
				// Cria o formul�rio de envio via POST
				var sendFormulario = new criaFormulario('?d=dados&a=dados&f=excluirSecretariaServentia');
			
				// adiciona campos e valores ao formul�rio
				sendFormulario = addChildFormulario(sendFormulario, "seq_secretaria_serventia", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "seq_secretaria_serventia", seq_secretaria_serventia);
	
				// Subimita o formul�rio via POST
				sendFormulario.submit();
			} else {
				return false;				
			}
		} catch (err){
			alert("N�o foi poss�vel enviar o formul�rio de exclus�o da secretaria.");			
		}		
	}
	
	function carregaCidades(uf) {
		
		var objHTTP = new getHTTP();
		
		//se tiver suporte ajax		
		if(objHTTP) {
						
			objHTTP.open("POST", "?d=dados&a=dados&f=_buscarCidade", true);
			objHTTP.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			
			objHTTP.onreadystatechange = function() {
				
				var callback = $id('span_cidade');

				//enquanto estiver processando...emite a msg de carregando
				if(objHTTP.readyState == 1) {
					callback.innerHTML = " - <span class='form_info'>Processando...</span>";   
				}
				//ap�s ser processado - chama fun��o processXML que vai varrer os dados
				if(objHTTP.readyState == 4 ) {			
					if(objHTTP.responseText) {										
						callback.innerHTML = objHTTP.responseText;
					}
				}
			}
						
			//passa o c�digo do projeto escolhido
			var params = "uf=" + uf;
			objHTTP.send(params);
		}
	}
	
	function carregaEmailTelefoneMagistrado(seq_magistrado) {
		
		var objHTTP = new getHTTP();
		
		//se tiver suporte ajax		
		if(objHTTP) {
						
			objHTTP.open("POST", "?d=dados&a=dados&f=_carregaEmailTelefoneMagistrado", true);
			objHTTP.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			
			objHTTP.onreadystatechange = function() {
				
				var callback = $id('default_viewer');

				//enquanto estiver processando...emite a msg de carregando
				if(objHTTP.readyState == 1) {
					callback.innerHTML = "<span class='form_info'><img src='./html/img/loading1.gif' />Processando...</span>";
				}
				//ap�s ser processado - chama fun��o processXML que vai varrer os dados
				if(objHTTP.readyState == 4 ) {			
					if(objHTTP.responseText) {										
						callback.innerHTML = "";
						var email_telefone = objHTTP.responseText;
						dados = email_telefone.split(":");
						
						try {
							$id('email_magistrado').value = dados[0];
							$id('telefone_magistrado').value = dados[1];	
							$id('dt_ingresso_magistrado').focus();
						} catch(err) {
							return;
						}
					}
				}
			}
						
			var params = "seq_magistrado=" + seq_magistrado;
			objHTTP.send(params);
			
			return;
		}		
	}
	
	function checarCompetenciaServentia(input_check) { 
		
		var acao = "";
		var objHTTP = new getHTTP();
		//se tiver suporte ajax
		
		if(objHTTP) {
			
			if(input_check.checked == true) {
				acao 		= "INSERIR";
				style_class	= "infoInserido";
			} else {
				acao = "DELETAR";
				style_class	= "infoDeletado";
			}
			
			objHTTP.open("POST", "?d=dados&a=dados&f=_checarCompetenciaServentia", true);
			objHTTP.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			
			objHTTP.onreadystatechange = function() {
				
				var callback = $id('callback_competencia_' + input_check.value);

				//enquanto estiver processando...emite a msg de carregando
				if(objHTTP.readyState == 1) {
					callback.innerHTML = " - <span class='form_info'>Processando...</span>";
				}
				//ap�s ser processado - chama fun��o processXML que vai varrer os dados
				if(objHTTP.readyState == 4 ) {			
					if(objHTTP.responseText) {
						callback.innerHTML = " - <span class='" + style_class + "'>" + objHTTP.responseText + "</span>";
					}
				}
			}
						
			//passa o c�digo do projeto escolhido
			var params = "acao=" + acao + "&seq_competencia_juizo=" + input_check.value;
			objHTTP.send(params);
		}
		
	}
	
	function verificaMagistradoBeneficiado() {
		try {
			if($id('situacao_magistrado').value == 1 ) {
				$id('boxMagistradoBeneficiado').style.display = "none";
				$id('dt_saida_magistrado').value = "";
				$id('nome_magistrado_beneficiado').value = "";
				$id('dt_ingresso_serv_beneficiado').value = "";
			} else if($id('situacao_magistrado').value == 2 ) {
				$id('boxMagistradoBeneficiado').style.display = "block";
			} else {
				$id('situacao_magistrado').value = 1;
				$id('boxMagistradoBeneficiado').style.display = "none";
			}
			return true;
		} catch(err) {
			return false;
		}
	}
	
	function checarMagistradoAtivo(input_check) { 
		if(input_check.checked == true) {			
			$id('dt_saida_magistrado').disabled = true;
		} else {
			$id('dt_saida_magistrado').disabled = false;
		}
	}
	
	function avisarDataInvalida() {
		try {
			$id('dat_instalacao').className = "campo_invalido";
		} catch(err) {
			return false;
		}
	}
	
	function closeCallback() {
		try {
			$id('boxContainerCallbackMessage').className = "display-none";
		} catch(err) {
			return;
		}				
	}
	
	function contaCaracteres(campo, campo_div, maximo_permitido) {
		if(campo.value != "") {
			
			total = campo.value.length;
			if(total > maximo_permitido)
			{
				alert("Total excedido");
	            campo.value = campo.value.substr(0,maximo_permitido);
	            total = total-1;
	            document.getElementById(campo_div).innerHTML="Total de caracteres: <b>"+total+"</b>. M&aacute;ximo permitido: " + maximo_permitido;
			}
			document.getElementById(campo_div).innerHTML="Total de caracteres: <b>"+total+"</b>. M&aacute;ximo permitido: " + maximo_permitido;
		} else {
			document.getElementById(campo_div).innerHTML="<br />";
		}
	}
	
	function infoProdutividadeServentia() {

		alert("O formul�rio de cadastro de produtividade da serventia est� aberto nesta p�gina.\nCadastre as informa��es da serventia, antes de avan�ar para este formul�rio.");
		$id('resposta_pergunta_7').focus();
		return false;
			
	}
	
	function verificaQuestionarioProdutividadeMagistrado(radio) {
		
		if(radio.value == 'sim') {
			$id('combo_existe_podutividade').value = "sim";
			$id('questionario_produtividade').className = 'display-block';
			$id('info_questionario_aberto').className = 'display-block';
		} else if(radio.value == 'nao') {
			$id('combo_existe_podutividade').value = "nao";
			$id('questionario_produtividade').className = 'display-none';
			$id('info_questionario_aberto').className = 'display-none';
		}
		
	}
	
	
	function ImprimirReciboProdutividade () {
		/*
	    var oPrint, oJan;
	    oPrint	= window.document.getElementById('recibo_produtividade').innerHTML;
	    oJan	= window.open(pg);	    
	    oJan.document.write(oPrint);
	    oJan.history.go();
	    oJan.window.print();
		*/
		
		/**/
		try  { $id('cell-passo-1').style.display = 'block'; } catch(err) {}
		try  { $id('cell-passo-2').style.display = 'block'; } catch(err) {}
		try  { $id('cell-passo-3').style.display = 'block'; } catch(err) {}
		try  { $id('cell-passo-4').style.display = 'block'; } catch(err) {}
		
		try  { 
			window.print(); 
		} 
		catch(err) {
			alert("N�o foi poss�vel chamar a  Fun��o de Imprimir do seu navegador de internet.\n\nPara imprimir o recibo segure as teclas:           [Ctrl]   +    [P] ");		
			return;
		}
		/**/
	}
	

	function setaMesDeReferencia() {
		try {

			var int_mes = $id('dat_inicial').value.substring(3,5);
			var int_ano = $id('dat_inicial').value.substring(6,10);
			var vlr_campo = '';

			switch(int_mes) {
				case '01': vlr_campo = 'JANEIRO / ' + int_ano; break;
				case '02': vlr_campo = 'FEVEREIRO / ' + int_ano; break;
				case '03': vlr_campo = 'MAR�O / ' + int_ano; break;
				case '04': vlr_campo = 'ABRIL / ' + int_ano; break;
				case '05': vlr_campo = 'MAIO / ' + int_ano; break;
				case '06': vlr_campo = 'JUNHO / ' + int_ano; break;
				case '07': vlr_campo = 'JULHO / ' + int_ano; break;
				case '08': vlr_campo = 'AGOSTO / ' + int_ano; break;
				case '09': vlr_campo = 'SETEMBRO / ' + int_ano; break;
				case '10': vlr_campo = 'OUTUBRO / ' + int_ano; break;
				case '11': vlr_campo = 'NOVEMBRO / ' + int_ano; break;
				case '12': vlr_campo = 'DEZEMBRO / ' + int_ano; break;
			}
			alert(vlr_campo);
			$id('mes_referencia').value = vlr_campo;

		} catch(err) {
			return false;
		}
	}
		
	function showProdutividadeMagistrado(seq_magistrado) {
		try {
			if($id('bodyProdutividadeMagistrado-'+seq_magistrado).className == 'display-none') {
				$id('bodyProdutividadeMagistrado-'+seq_magistrado).className = 'display-block';
			} else {
				$id('bodyProdutividadeMagistrado-'+seq_magistrado).className = 'display-none';
			}
		} catch(err) {
			return false;
		}
	}
	
	function printdiv(printpage)
	{
		var a = window.open('','printpage','width=750,height=2000,scrollbars=yes,resizable=0');
		a.document.open("text/html");
		a.document.write(
							'<html>' +
							'<head>' + 
							'<link href="./html/css/style.css" rel="stylesheet" type="text/css" />' + 
							'<script type="text/javascript" src="./extras/functions.js" charset="iso-8859-1"></script>' + 
							'<script type="text/javascript" src="./extras/dados/interfaceDados.js"></script>' + 
							'</head>' + 
							'<body class="popup"><br />'
						);
		a.document.write(document.getElementById(printpage).innerHTML);		
		//document.getElementById('seq_pergunta_8').style.pageBreakBefore = 'always';
		a.document.write('</body></html>');
		a.print();
		a.document.close();
	}
	
	
	function mostraDataFinalAtividades(situacao_magistrado) {
		if(situacao_magistrado == '4') {
			$id('dt-termino-atividades-magistrado').className = 'display-block';
		} else {
			$id('dt-termino-atividades-magistrado').className = 'display-none';	
		}
	}

	function AtivarMagistradoServentia(seq_magistrado, seq_magistrado_serventia) {			
		try {
			box_confirm = confirm("Ao ativar um magistrado a situa��o do magistrado na serventia ser� definida como ATIVO, e ser�o cobradas as produtividades entre a data de entrada do magistrado at� a data atual.\n\nDeseja realmente ativar este magistrado?");
			
			if(box_confirm == true) {
				// Cria o formul�rio de envio via POST
				var sendFormulario = new criaFormulario('?d=dados&a=dados&f=ativarMagistradoServentia');
			
				// adiciona campos e valores ao formul�rio
				sendFormulario = addChildFormulario(sendFormulario, "seq_magistrado", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "seq_magistrado", seq_magistrado);
			
				// adiciona campos e valores ao formul�rio
				sendFormulario = addChildFormulario(sendFormulario, "seq_magistrado_serventia", "input", "hidden");
				sendFormulario = addValueChildFormulario(sendFormulario, "seq_magistrado_serventia", seq_magistrado_serventia);
	
				// Subimita o formul�rio via POST
				sendFormulario.submit();
			}
			
		} catch (err){
			alert("N�o foi poss�vel enviar o formul�rio de ativa��o da secretaria.");			
		}
	}
	
	
		
		function verificaExistenciaQuestionario(combo_existe_podutividade) {
			if(combo_existe_podutividade.value == "nao")	{
				$id('existe_podutividade_sim').checked = false;
				$id('existe_podutividade_nao').checked = true;
			$id('questionario_produtividade').className = 'display-none';
			$id('info_questionario_aberto').className = 'display-none';
			} else if(combo_existe_podutividade.value == "sim")	{
				$id('existe_podutividade_nao').checked = false;
				$id('existe_podutividade_sim').checked = true;
				$id('questionario_produtividade').className = 'display-block';
				$id('info_questionario_aberto').className = 'display-block';
			}
		}
		
		function escondeRespostaNaoCompete(chebox_nao_compete) {
		//	try {
				var id_resposta = '';
				if(chebox_nao_compete.checked == true) {
					id_resposta = 'resposta_pergunta_'+chebox_nao_compete.value;
					$id(id_resposta).value = '0';
					$id('resp_nao_compete_'+chebox_nao_compete.value).className = "display-none";
				} else {
					$id('resp_nao_compete_'+chebox_nao_compete.value).className = "display-block";
				}
		//	} catch(err) {
				//return	false;
		//	}				
		}
		
		
		function verificaPeriodoProdutividadeMagistrado(seq_magistrado, seq_produtividade_magistrado) {
		try {		
			var dat_inicial = $id('dat_inicial').value;
			var dat_final = $id('dat_final').value;
						
			if(dat_inicial != "" && dat_final != "") {
				
				var objHTTP = new getHTTP();
					
				if(objHTTP) {
								
					objHTTP.open(
									"POST", 
									"index.php?" + 
									"d=dados&" +
									"a=dados&" +
									"f=_verificaPeriodoProdutividadeMagistrado&" + 
									"dat_inicial=" + dat_inicial + "&" + 
									"dat_final=" + dat_final + "&" + 
									"seq_produtividade_magistrado=" + seq_produtividade_magistrado + "&" + 
									"seq_magistrado=" + seq_magistrado,
									true
								);
					
					objHTTP.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
					
					objHTTP.onreadystatechange = function() {
						
						if(objHTTP.readyState == 1) {
							void(0);   
						}				
						if(objHTTP.readyState == 4 ) {
							
							var response = trim(objHTTP.responseText);
							response = response.split(":");
							
							if(response[1] == 'existe_produtividade') {
								
								var txt_msg = "J� existe uma produtividade informada para este per�odo.";
								$id('boxContainerCallbackMessage').className = "display-block";
								$id('boxCallbackMessage').style.backgroundColor = "#FFFFCC";								
								$id('boxCallbackMessage').innerHTML = "<li>" + txt_msg + "</li>" + $id('boxCallbackMessage').innerHTML;
								alert(txt_msg);
								$id('dat_final').value = "";
								$id('dat_final').focus();
								return false;
								
							} else if(response[1] == 'nao_existe_produtividade') {
								var txt_msg = "Ainda n�o existe nenhuma uma produtividade informada para este per�odo.</li><li>Esta produtividade poder� ser salva ap�s o preenchimento do formul�rio!";
								$id('boxContainerCallbackMessage').className = "display-block";
								$id('boxCallbackMessage').style.backgroundColor = "#9DD4EB";								
								$id('boxCallbackMessage').innerHTML = "<li>" + txt_msg + "</li>";
								return true;
							}
							void(0);
						}
					}
					var params = "";
									
					objHTTP.send(params);
				}
				
			}
			
		} catch(err) {
			alert("SISTEMA: N�o foi poss�vel verificar o per�odo da produtividade.\nMESSAGE: " + err.description);
			return false;
		}
	}	
	
		
		
		function verificaPeriodoProdutividadeServentia(seq_serventia, seq_produtividade_serventia) {
//		try {		
			var dat_inicial = $id('dat_inicial').value;
			var dat_final = $id('dat_final').value;
						
			if(dat_inicial != "" && dat_final != "") {
				
				var objHTTP = new getHTTP();
					
				if(objHTTP) {
								
					objHTTP.open(
									"POST", 
									"index.php?" + 
									"d=dados&" +
									"a=dados&" +
									"f=_verificaPeriodoProdutividadeServentia&" + 
									"dat_inicial=" + dat_inicial + "&" + 
									"dat_final=" + dat_final + "&" + 
									"seq_produtividade_serventia=" + seq_produtividade_serventia + "&" + 
									"seq_serventia=" + seq_serventia,
									true
								);
					
					objHTTP.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
					
					objHTTP.onreadystatechange = function() {
						
						if(objHTTP.readyState == 1) {
							void(0);   
						}				
						if(objHTTP.readyState == 4 ) {
							
							var response = trim(objHTTP.responseText);
							response = response.split(":");
							
							if(response[1] == 'existe_produtividade') {
								
								var txt_msg = "J� existe uma produtividade informada para este per�odo.";
								$id('boxContainerCallbackMessage').className = "display-block";
								$id('boxCallbackMessage').style.backgroundColor = "#FFFFCC";								
								$id('boxCallbackMessage').innerHTML = "<li>" + txt_msg + "</li>" + $id('boxCallbackMessage').innerHTML;
								alert(txt_msg);
								$id('dat_final').value = "";
								$id('dat_final').focus();
								return false;
								
							} else if(response[1] == 'nao_existe_produtividade') {
								var txt_msg = "Ainda n�o existe nenhuma uma produtividade informada para este per�odo.<br />Esta produtividade poder� ser salva!";
								$id('boxContainerCallbackMessage').className = "display-block";
								$id('boxCallbackMessage').style.backgroundColor = "#9DD4EB";								
								$id('boxCallbackMessage').innerHTML = "<li>" + txt_msg + "</li>";
								return true;
							}
							void(0);
						}
					}
					var params = "";
									
					objHTTP.send(params);
				}
				
			}
			
//		} catch(err) {
//			alert("SISTEMA: N�o foi poss�vel verificar o per�odo da produtividade.\nMESSAGE: " + err.description);
//		}
	}	
	
	
	
	
	function trocaNumMesReferencia(num_mes) {
		try {
			$id('num_mes_pendente').value = num_mes.substring(4,6);
		} catch(err) {
			return false;
		}		
	}	