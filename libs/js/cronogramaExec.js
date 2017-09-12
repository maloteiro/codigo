{literal}
<script src="extras/simpletreemenu.js"></script>
<link rel="stylesheet" href="extras/lightbox/css/lightbox.css" media="screen,projection" type="text/css" />
<link rel="stylesheet" href="extras/lightbox/css/default.css" media="screen,projection" type="text/css" />
<script src="extras/validaCampo.js"></script>
<script src="extras/mascaraMoeda.js"></script>
<script src="extras/buscaInstrucaoTela.js"></script>
<link href="template/padrao/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="extras/scriptaculous/lib/prototype.js" charset="iso-8859-1"></script>
<script type="text/javascript" src="extras/mascaraGenerica.js" charset="iso-8859-1"></script>
<script type="text/javascript" src="extras/scriptaculous/src/scriptaculous.js?load=effects,dragdrop" charset="iso-8859-1"></script>

<script>
//cronogramaExec_formMeta.html
function validaMeta()
{
	if (! Verificacao(3))
		return false;
	else
	{
		var nu_mes_inicio_solic_meta = $('nu_mes_inicio_solic_meta').value;
		var nu_mes_fim_solic_meta = $('nu_mes_fim_solic_meta').value;
		if(nu_mes_inicio_solic_meta > nu_mes_fim_solic_meta)
			alert("O campo Mês fim deve ser maior que o Mês início");
		else
			salvaMeta();
	}
}
//cronogramaExec_formEtapa.html
function validaEtapa(nu_meta)
{
	if (! Verificacao(4))
		return false;
	else
	{
		var nu_mes_inicio_solic_etapa = $('nu_mes_inicio_solic_etapa').value;
		var nu_mes_fim_solic_etapa = $('nu_mes_fim_solic_etapa').value;
		if(nu_mes_inicio_solic_etapa > nu_mes_fim_solic_etapa)
			alert("O campo Mês fim deve ser maior que o Mês início");
		else
			salvaEtapa(nu_meta);
	}
}
function validaItem(nu_meta,nu_etapa,vl_utilizado,tipo_despesa,vl_utilizado_02,tipo_despesa_02,totalCorrente,totalCapital,qt_item,vl_item)
{
	if(vl_utilizado != ""){
		if(qt_item != ""){
			qt_item = parseFloat(qt_item);
			vl_item = parseFloat(vl_item);
			valorAnteriorItem = qt_item * vl_item;
		}
		else{
			valorAnteriorItem = 0;
		}
		//Pega o tipo de despesa do item que está sendo cadastrado ou alterado: CORRENTE ou CAPITAL.
		var co_despesa_item = $('co_elemento_despesa').value.split("_");
		co_despesa_item = co_despesa_item[1];
		
		//valor do item que o usuário está incluindo.
		var valorItem = $('valorTotal').value;
		valorItem = valorItem.replace(".","");
		valorItem = valorItem.replace(".","");
		valorItem = valorItem.replace(".","");
		valorItem = valorItem.replace(",",".");
 		valorItem = parseFloat(valorItem);
		var total = 0;
		if(qt_item != ""){
			if(co_despesa_item == 'CORRENTE')
			{
				if(totalCorrente > 	valorAnteriorItem)
					total = totalCorrente - valorAnteriorItem;
				else
					total = valorAnteriorItem - totalCorrente;
			}
			else
			{
				if(totalCapital > 	valorAnteriorItem)
					total = totalCapital - valorAnteriorItem;
				else
					total = valorAnteriorItem - totalCapital;
			}		
		}
		else
		{
			if(co_despesa_item == 'CORRENTE')
				total = totalCorrente;
			else
				total = totalCapital;	
		}
			
		//valor que poderá ser utilizado neste pré-projeto
		vl_utilizado = parseFloat(vl_utilizado);
		vl_utilizado_02 = parseFloat(vl_utilizado_02)
		
		//valor existente cadastrado.
		if(total == "")
			total = 0;		
		total = parseFloat(total);
		soma = total + valorItem;

/*
		alert(co_despesa_item);
		alert(tipo_despesa_02);
		alert(soma+" valor Utilizado "+vl_utilizado_02);
*/

		/*if(co_despesa_item == tipo_despesa_02)
		{
			if(soma > vl_utilizado_02){
				alert("O valor utilizado para este pré-projeto é R$ "+formatCurrency(vl_utilizado_02)+".\n A soma dos itens não pode ultrapassar este valor.");
				return false;
			}
		}
		else
		{
			if(soma > vl_utilizado){
				alert("O valor utilizado para este pré-projeto é R$ "+formatCurrency(vl_utilizado)+".\n A soma dos itens não pode ultrapassar este valor.");
				return false;
			}
		}*/
	}
	
	//Verifica o valor da contrapartida quando o agente financeiro == 2
		if({/literal}{$smarty.session.co_agente_financeiro}{literal}=="02")
		{
			
			var valorItem = $('valorTotal').value;
				valorItem = valorItem.replace(".","");
				valorItem = valorItem.replace(".","");
				valorItem = valorItem.replace(".","");
				valorItem = valorItem.replace(",",".");
	 			valorItem = parseFloat(valorItem);
			//var debug = "Valor do Item : "+valorItem;
			var totalConcedente = $('totalConcedente').value;
				totalConcedente  = parseFloat(totalConcedente) + valorItem;
				if($('valorTotalAnterior').value == "")
					var valorTotalAnterior = 0;
				else
					var valorTotalAnterior = parseFloat($('valorTotalAnterior').value);
				totalConcedente -= valorTotalAnterior; 
				
			//debug +="\n totalConcedente : "+totalConcedente;
			var valorProp = $('vl_total_solic_proponente').value;
				valorProp = valorProp.replace(".","");
				valorProp = valorProp.replace(".","");
				valorProp = valorProp.replace(".","");
				valorProp = valorProp.replace(",",".");
	 			valorProp = parseFloat(valorProp);
	 		if(valorItem < valorProp)
	 		{
	 			alert("O valor da contrapartida deve ser menor ou igual ao valor do item.");	
	 			return false;
	 		}	
	 		//debug +="\n valorProponente : "+valorProp;	
			var totalProponente = $('totalProponente').value;
				totalProponente = parseFloat(totalProponente) + valorProp;
				if($('valorContrapartidaAnterior').value == "")
					var valorContrapartidaAnterior = 0;
				else	
					var valorContrapartidaAnterior = parseFloat($('valorContrapartidaAnterior').value);
				totalProponente -= valorContrapartidaAnterior;
			//debug +="\n totalProponente : "+totalProponente;
			
			//quando o tipo do recurso for emenda o total concedente vai receber a soma do custeio + capital.
			if(vl_utilizado != "" && {/literal}{$smarty.session.co_tipo_recurso}{literal}=="EMENDA"  )
				totalConcedente = vl_utilizado + vl_utilizado_02;
							
			var percentualContrapartida = (totalProponente * 100) / totalConcedente ;
			//debug +="\n percentualContrapartida : "+percentualContrapartida;
			var limiteMinimo = parseFloat($('limiteMinimo').value);
			//debug +="\n limiteMinimo : "+limiteMinimo;
			var limiteMaximo = parseFloat($('limiteMaximo').value);
			//debug +="\n limiteMaximo : "+limiteMaximo;
				
			//alert(debug);
			var contrapartidaOK = 1;
			if(limiteMaximo == 0)
			{
				if(percentualContrapartida < limiteMinimo)
					contrapartidaOK = 0;
			}
			else
			{	
				if((percentualContrapartida < limiteMinimo) || (percentualContrapartida > limiteMaximo))
					contrapartidaOK = 0;
			}	
			
			if(contrapartidaOK)
			{
				valor_contrapartida_minimo = ((totalConcedente*limiteMinimo)/100);
				valor_contrapartida_maximo = ((totalConcedente*limiteMaximo)/100);
				//alert("O Valor da Contrapartida deve estar entre R$ "+formatCurrency(valor_contrapartida_minimo)+" e R$ "+formatCurrency(valor_contrapartida_maximo)+"!");
				if(limiteMaximo == 0)
					alert("Atenção!\n A contrapartida informada até o momento está fora dos critérios estabelecidos pela LDO. Isso não impede o cadastramento do item. O valor mínimo deve ser igual ou superior a R$ "+formatCurrency(valor_contrapartida_minimo)+" e menor ou inferior a R$ "+formatCurrency(valor_contrapartida_maximo)+"!");
				else	
					alert("Atenção!\n A contrapartida informada até o momento está fora dos critérios estabelecidos pela LDO. Isso não impede o cadastramento do item. O valor mínimo deve ser igual ou superior a R$ "+formatCurrency(valor_contrapartida_minimo)+"!");
			}
			
		}
	//fim verificação contrapartida		
	
	if (! Verificacao(5))
		return false;
	
	else
	{
		salvaItem(nu_meta,nu_etapa);
	}
}
//Botão voltar sempre executa o carregaPagina
function carregaPagina()
{
	document.location.href="?d=cronogramaExec&a=cronogramaExec&f=formPrincipal";
}
//Sempre que a pagina for carregada e após a chamada do ajax de meta ou item essa função será executada.
function criaArvore()
{
	//ddtreemenu.createTree(treeid, enablepersist, opt_persist_in_days (default is 1))
	ddtreemenu.createTree("treemenu1", false);
}
//a partir do evento do onClick do mouse o arquivo simpleTreeMenu executa essa função.
function busca_ajax(e)
{

	var evento = e.id;
	var div = evento.substr(0,8);
	switch(div){
		//atualiza a div da etapa
		case "div_etap":
  			buscaEtapa(evento);
       	break

       	//Atualiza a tabela do custeio
       	case "div_item":
       		buscaItem(evento);
       	break
    }
}
//busca a etapa (AJAX)
function buscaEtapa(div)
{
	var url = "?d=cronogramaExec&a=cronogramaExec&f=_buscaEtapa";
	var myAjax = new Ajax.Updater
	(
		div,
		url,
		{
			method: "post",
			encoding: "iso-8859-1",
			parameters: {
			 				//passa como parametro a div da etapa
							div_etapa: div
						},
			onComplete: function()
			{
				criaArvore();
			}
		}
	);
}
//busca o item (AJAX)
function buscaItem(div)
{
	var url = "?d=cronogramaExec&a=cronogramaExec&f=_buscaItem";
	var myAjax = new Ajax.Updater
	(
		div,
		url,
		{
			method: "post",
			encoding: "iso-8859-1",
			parameters: {
			 				//passa como parametro a div da etapa
							div_item: div
						},
			onComplete: function()
			{
				criaArvore();
			}
		}
	);
}
//busca o Grupo (AJAX)
function buscaGrupo(co_grupo,co_item)
{
	url = '?d=cronogramaExec&a=cronogramaExec&f=_buscaGrupo'
	div = 'div_grupo';
	auxCED = $('co_elemento_despesa').value.split("_");
	$('div_grupo').innerHTML = "Aguarde...";
	var myAjax = new Ajax.Updater
	(
		div,
		url,
		{
			method: "post",
			encoding: "iso-8859-1",
			parameters: {
			 				co_elemento_despesa: auxCED[0],
			 				co_grupo: co_grupo,
			 				co_item: co_item
						},
			onComplete: function()
			{
				if(co_item != "")
					buscaItemDoGrupo(co_item);
			}
		}
	);
}
//busca o Item do Grupo
function buscaItemDoGrupo(co_item)
{
	url = '?d=cronogramaExec&a=cronogramaExec&f=_buscaItemDoGrupo'
	div = 'div_ItemDoGrupo';
	$('div_ItemDoGrupo').innerHTML = "Aguarde...";
	auxCED = $('co_elemento_despesa').value.split("_");
	var myAjax = new Ajax.Updater
	(
		div,
		url,
		{
			method: "post",
			encoding: "iso-8859-1",
			parameters: {
			 					co_grupo: $('co_grupo').value,
			 					co_elemento_despesa: auxCED[0],
			 					co_item: co_item
						},
			onComplete: function()
			{
				//div_ItemDoGrupo recebe a combo
			}
		}
	);
}
//se item igual a outros o campo nome aparecerá na tela
function atualizaDivDs_Item()
{
	if($('co_item')[$('co_item').selectedIndex].text =="OUTROS")
		$('div_ds_item').style.display = '';
	else
	{
		$('div_ds_item').style.display = 'none';
		$('ds_item').value = "";
	}
}
//calcula o valor total do item
function formatCurrency(strValue)
{
	strValue = strValue.toString().replace(/\$|\,/g,'');
	dblValue = parseFloat(strValue);

	blnSign = (dblValue == (dblValue = Math.abs(dblValue)));
	dblValue = Math.floor(dblValue*100+0.50000000001);
	intCents = dblValue%100;
	strCents = intCents.toString();
	dblValue = Math.floor(dblValue/100).toString();
	if(intCents<10)
		strCents = "0" + strCents;
	for (var i = 0; i < Math.floor((dblValue.length-(1+i))/3); i++)
		dblValue = dblValue.substring(0,dblValue.length-(4*i+3))+'.'+
		dblValue.substring(dblValue.length-(4*i+3));
	return (((blnSign)?'':'-') + dblValue + ',' + strCents);
}

function calculaValorTotal()
{
	var c1 = $F('qt_item_solic');
	var c2 = $F('vl_item_unitario_solic');
	var valor = c2.replace(/\./gi, "").replace(/,/gi, "\.");
	var total = parseFloat(valor*c1);
	$('valorTotal').value = formatCurrency(total);
}

//salva Meta (AJAX)
function salvaMeta()
{
	var url = "?d=cronogramaExec&a=cronogramaExec&f=_salvaMeta";
	var div = "salvaMeta";
	$('salvaMeta').value = "Aguarde...";
	var myAjax = new Ajax.Updater
	(
		div,
		url,
		{
			method: "post",
			encoding: "iso-8859-1",
			parameters: {
				qt_solicitada_meta: $F('qt_solicitada_meta'),
				co_unidade_medida_siafi: $F('co_unidade_medida_siafi'),
				nu_mes_inicio_solic_meta: $F('nu_mes_inicio_solic_meta'),
				nu_mes_fim_solic_meta: $F('nu_mes_fim_solic_meta'),
				ds_meta: $F('ds_meta'),
				nu_seq_meta: $F('nu_seq_meta')
				},
			onComplete: function()
			{
				carregaPagina();
				fecharJanela();
				// alert("Objetivos salvos com sucesso.");
			}
		}
	);
}
//salva Etapa(AJAX)
function salvaEtapa(nu_meta)
{
	var url = "?d=cronogramaExec&a=cronogramaExec&f=_salvaEtapa";
	var div = "salvaEtapa";
	$('salvaEtapa').value = "Aguarde...";
	var myAjax = new Ajax.Updater
	(
		div,
		url,
		{
			method: "post",
			encoding: "iso-8859-1",
			parameters: {
				qt_solicitada_etapa: $F('qt_solicitada_etapa'),
				co_unidade_medida_siafi: $F('co_unidade_medida_siafi'),
				nu_mes_inicio_solic_etapa: $F('nu_mes_inicio_solic_etapa'),
				nu_mes_fim_solic_etapa: $F('nu_mes_fim_solic_etapa'),
				ds_etapa: $F('ds_etapa'),
				nu_seq_etapa: $F('nu_seq_etapa'),
				nu_meta: nu_meta
				},
			onComplete: function()
			{
				carregaPagina();
				fecharJanela();
				// alert("Objetivos salvos com sucesso.");
			}
		}
	);
}
function salvaItem(nu_meta,nu_etapa)
{
var url = "?d=cronogramaExec&a=cronogramaExec&f=_salvaItem";
	var div = "salvaItem";
	$('salvaItem').innerHTML = "Aguarde...";
	auxCED = $('co_elemento_despesa').value.split("_");
	var myAjax = new Ajax.Updater
	(
		div,
		url,
		{
			method: "post",
			encoding: "iso-8859-1",
			parameters: {
				nu_meta: nu_meta,
				nu_etapa: nu_etapa,
				co_elemento_despesa: auxCED[0],
				co_grupo: $F('co_grupo'),
				co_item: $F('co_item'),
				qt_item_solic: $F('qt_item_solic'),
				vl_item_unitario_solic: $F('vl_item_unitario_solic'),
				ds_especif_tecnica: $F('ds_especif_tecnica'),
				ds_item: $F('ds_item'),
				vl_total_solic_proponente: $F('vl_total_solic_proponente'),
				co_seq_item_projeto: $F('co_seq_item_projeto'),
				valorTotal: $F('valorTotal')
				},
			onComplete: function()
			{
				carregaPagina();
				fecharJanela();
				// alert("Objetivos salvos com sucesso.");
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
function abrirJanela(url,w,h)
{
	var wl = (screen.width-w)/2;
	var wt = (screen.height-h)/2;
	window.open(url, 'janela', 'width='+w+',height='+h+',scrollbars=yes,menubar=no,left='+wl+',top='+wt);
}
function fecharJanela()
{
	window.close();
	window.opener.location.href="?d=cronogramaExec&a=cronogramaExec&f=formPrincipal";
}
</script>
{/literal}
