//Validar se os campos foram preenchidos.
function Verificacao(form){
  var campos = new Array();
  switch (form)
  {
    //Cad. Unidade Beneficiada
	case  1: campos = ['no_beneficiada','ds_endereco']; 
			 nomes  = ['Nome Unidade Beneficiada','Endereço da Unidade Beneficiada']; break; 			 
    //Cad. Cronograma de Desenbolso
    case  2: campos = ['nu_mes_cronograma_desembolso']; 
			 nomes  = ['Mês']; break; 			 			 
	//Cad. Meta
	case  3: campos = ['qt_solicitada_meta','co_unidade_medida_siafi','nu_mes_inicio_solic_meta','nu_mes_fim_solic_meta','ds_meta']; 
			 nomes  = ['Quantidade','Medida','Mês início','Mês fim','Descrição da Meta']; break; 			 			 		 
	//Cad. Etapa
	case  4: campos = ['qt_solicitada_etapa','co_unidade_medida_siafi','nu_mes_inicio_solic_etapa','nu_mes_fim_solic_etapa','ds_etapa']; 
			 nomes  = ['Quantidade','Medida','Mês início','Mês fim','Descrição da Etapa']; break; 			 			 		 
	//Cad. Item
	case  5: campos = ['co_elemento_despesa','co_grupo','co_item','ds_item','qt_item_solic','vl_item_unitario_solic','ds_especif_tecnica']; 
			 nomes  = ['Elemento Despesa','Grupo','Item','Nome','Quantidade','Valor Unitário','Especificação Técnica']; break; 			 			 		 		 
  	//Cad. Cronograma de Desembolso - SESAN - agente financeiro = 2
  	case 6: campos = ['nu_meta','nu_mes_cronograma_desembolso']; 
			nomes  = ['Meta','Mês']; break; 
  };
  for (var i = 0; i < campos.length; i++){
		var cp = document.getElementsByName(campos[i]);
		if ((trim(cp[0].value) == '') || (trim(cp[0].value) == '0,00')){
			alert('O Campo ' + nomes[i] + ' é obrigatório !!!');
			cp[0].focus();
			return false;
		}
		if (! isNaN(trim(cp[0].value))){
			if (cp[0].value == 0){
				alert('O Campo ' + nomes[i] + ' é obrigatório !!!');
				cp[0].focus();
				return false;
			}
		}
  };
  return true;	
}
//Funcao usada pela funcao Verificacao()
function trim(str){
	while (str.charAt(0) == " ")
	str = str.substr(1,str.length -1);

	while (str.charAt(str.length-1) == " ")
	str = str.substr(0,str.length-1);

	return str;
}
