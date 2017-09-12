<%@ page info='Page'
  language='java' session='true' 
%><%@ taglib
  prefix='c' uri='http://java.sun.com/jsp/jstl/core'
%><%@ taglib
  prefix='fmt' uri='http://java.sun.com/jsp/jstl/fmt'
%><%@ taglib
  prefix='tiles' uri='http://tiles.apache.org/tags-tiles'
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:initPage name="cadastro/servidor/cadastro"><jsp:useBean
  id="wipage" type="br.com.webinside.runtime.component.Page"
/><jsp:setProperty
  name="wipage" property="browserCache" value="OFF"
/><jsp:setProperty
  name="wipage" property="checkPosToken" value="false"
/><jsp:setProperty
  name="wipage" property="errorPage" value="false"
/><jsp:setProperty
  name="wipage" property="mime" value="html"
/><jsp:setProperty
  name="wipage" property="noLogin" value="OFF"
/><jsp:setProperty
  name="wipage" property="rerender" value="OFF"
/><jsp:setProperty
  name="wipage" property="security" value="ON"
/><jsp:setProperty
  name="wipage" property="syncPos" value="false"
/><jsp:setProperty
  name="wipage" property="syncPre" value="false"
/><jsp:setProperty
  name="wipage" property="sysPage" value="OFF"
/><jsp:setProperty
  name="wipage" property="title" value="Cadastro de Servidores / Hosts"
/></w:initPage><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>	
	<head>
		<title>Administração - <wi:out var="wi.proj.title"/></title>
		<!--link rel="shortcut icon" href="/<wi:out var="wi.proj.id"/>/imgs/baladeiro.gif"-->
		<meta name="resource-type" content="document" />
		<meta http-equiv="pragma" content="no-cache" />
		<meta name="revisit-after" content="1" />
		<meta name="classification" content="Intranet" />
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<meta name="description" content="" />
		<meta name="keywords" content="juridico" />
		<meta name="distribution" content="Local" />
		<meta name="rating" content="General" />
		<meta name="author" content="Charlles de Matos Sousa" />
		<meta name="language" content="pt-br" />
		<meta name="doc-class" content="Completed" />
		<meta name="doc-rights" content="Public" />
		
		<link rel="stylesheet" href="/<wi:out var="wi.proj.id"/>/libs/css/estilos.css" type="text/css" />		
		<link rel="stylesheet" href="/<wi:out var="wi.proj.id"/>/libs/css/cmxform.css" type="text/css" />
		<link rel="stylesheet" href="/<wi:out var="wi.proj.id"/>/libs/css/forms.css" type="text/css" />
		<!--link rel="stylesheet" href="/<wi:out var="wi.proj.id"/>/libs/css/buttons.css" type="text/css" /-->
		<link rel="stylesheet" href="/<wi:out var="wi.proj.id"/>libs/js/jquery/tablesorter/themes/blue/style.css" type="text/css" media="print, projection, screen" />

		<style type="text/css" title="currentStyle">
            @import "/<wi:out var="wi.proj.id"/>/libs/css/demo_page.css";
            @import "/<wi:out var="wi.proj.id"/>/libs/css/demo_table_jui.css";
        </style>		
		
        <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/validaNumero.js" charset="iso-8859-1"></script>
        <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/editar.js" charset="iso-8859-1"></script>
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/script.js" charset="iso-8859-1"></script>
		<!--script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/page.js" charset="iso-8859-1"></script-->
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/menu/menu.js" charset="iso-8859-1"></script>
		
        <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/mascaraGenerica.js" charset="iso-8859-1"></script>		
		
        <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/jquery-1.4.4.js"></script>
        
        <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/ajax/messages.js" charset="iso-8859-1"></script>
        
        
        <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/jquery.cookie.js"></script>
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/qtip/jquery.qtip-1.0.0-rc3.js"></script>
		<!--script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/extras/jquery/jquery.maskedinput-1.2.2.js" charset="iso-8859-1"></script-->
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/jquery.meio.mask.js" charset="utf-8"></script>
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/init.js"></script>
		
        <script type="text/javascript" language="javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/validate/jquery.validate.min.js" charset="iso-8859-1"></script>
        <script type="text/javascript" language="javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/validate/localization/messages_ptbr.js" charset="iso-8859-1"></script>
        <script type="text/javascript" language="javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/validate/additional-methods.js" charset="iso-8859-1"></script>
		
        <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/tablesorter/jquery.tablesorter.js"></script>
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/tablesorter/jquery.tablesorter.pager.js"></script>
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/jquery.corner.js"></script>
		
		<!-- Parte do jquery para fazer janelas e alertas com JQUERY -->
		<link type="text/css" href="/<wi:out var="wi.proj.id"/>/libs/js/jquery/themes/base/jquery.ui.all.css" rel="stylesheet" />

		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/external/jquery.bgiframe-2.1.1.js"></script>
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/ui/jquery.ui.core.js"></script>
	
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/ui/jquery.ui.widget.js"></script>
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/ui/jquery.ui.mouse.js"></script>
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/ui/jquery.ui.button.js"></script>
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/ui/jquery.ui.draggable.js"></script>
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/ui/jquery.ui.position.js"></script>
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/ui/jquery.ui.resizable.js"></script>
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/ui/jquery.ui.dialog.js"></script>
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/ui/jquery.ui.tabs.js"></script>
        <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/ui/jquery.ui.datepicker.js"></script>
		<!-- biblioteca de funções da corregedoria -->
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/ajax/functions.js"></script>

		<script type="text/javascript">			
			$('.botao').corner();
			
			jQuery(function(){				
				$('input:text').setMask();
			});
			$.mask.masks = $.extend($.mask.masks,{
				
				inteiro:{ mask: '999.999.999.999', type:'reverse' },
                inteiroSM:{ mask: '999999999999', type:'reverse' },
				decimal:{ mask: '99,999.999.999.999', type:'reverse' },
				dateBR:{ mask: '39/19/2999'},
              horaBR:{ mask: '99:99999', type:'reverse'},
				proc_ECNJ:{ mask: '9999999-99.9999.9.99.9999'},
				processo:{ mask: '9999999999999999999999999'},
				CPF:{ mask: '999.999.999-99'},
                CEP:{ mask: '99.999-999'},
				telefone:{ mask: '(99) 9999-99999'}
			});
      
		</script>
      
		<script type="text/javascript">			
        	$(document).ready(function() {
          		$("#formulario").validate();
        	});    
    	</script>
      
		<!--menu-->
		<link rel="stylesheet" type="text/css" href="/<wi:out var="wi.proj.id"/>/libs/js/jquery/superfish-1.4.8/css/superfish.css" media="screen">
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/superfish-1.4.8/js/hoverIntent.js"></script>
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/superfish-1.4.8/js/superfish.js"></script>
		
		<script type="text/javascript">			
					
			// initialise plugins - menu
			jQuery(function(){
				jQuery('ul.sf-menu').superfish();
			});
	  
		</script>	
		
		<!-- datatable -->
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/datatables/jquery.dataTables.js" charset="iso-8859-1"></script>
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/datatables/TableTools.js" charset="iso-8859-1"></script>
		<style type="text/css" media="screen">			
			@import "/<wi:out var="wi.proj.id"/>/extras/jquery/datatables/css/table_jui.css";	
			
			/*
			 * Override styles needed due to the mix of three different CSS sources! For proper examples
			 * please see the themes example in the 'Examples' section of this site
			 */
			.dataTables_info { padding-top: 0; }
			.dataTables_paginate { padding-top: 0; }
			.css_right { float: right; }
			#example_wrapper .fg-toolbar { font-size: 0.8em }
			#theme_links span { float: left; padding: 2px 10px; }

		</style>
         <SCRIPT TYPE="text/javascript" SRC="/<wi:out var="wi.proj.id"/>/js/page.js"></SCRIPT>
  <META HTTP-EQUIV="pragma" CONTENT="no-cache" />
  <META HTTP-EQUIV="expires" CONTENT="0" />
  <META HTTP-EQUIV="cache-control" CONTENT="no-cache" />
  <TITLE><wi:out var="wi.page.title"/></TITLE>
  <script type="text/javascript">
  $(document).ready(function() {
      $('#resposta').hide();
  	$( "#tabs" ).tabs();
  });
  
  function salvar(obj){
    var doc = document.forms[0];
    //alert(doc[obj].checked);
    
    var evt = new WIEvent(); 
    //evt.debug = true; // se desejar ver o debug da comunicação do WIEvent 
    evt.writeobj("tmp.seq_concurso", doc['tmp.id'].value); 
    evt.writeobj("tmp.seq_uf", $('#'+obj).val());
    $('#resposta').hide();
    if(document.getElementById(obj).checked){
      evt.updatedb(" seg_insert_concurso_uf"); 
      evt.execute();
      evt.preread("tmp.resp");
      resposta = evt.readobj("tmp.resp");
      $('#resposta').html("<strong>"+resposta+"</strong>");
      //dialog.dialog( "open" );
      
    } else {
      evt.updatedb("seg_delete_concurso_uf"); 
      evt.execute();
      evt.preread("tmp.resp");
      resposta = evt.readobj("tmp.resp");
      $('#resposta').html("<strong>"+resposta+"</strong>");
      //dialog.dialog( "open" );      	
    }
    $('#resposta').show();
    setTimeout("$('#resposta').hide();", 3000);
    
  }
  </script>
  
  
<SCRIPT TYPE="text/javascript">
function init(){
var el = document.getElementsByTagName('SELECT')['tmp.edt.tip_servidor_tipo'];
comboSelect(el,'<wi:out var="tmp.edt.tip_servidor_tipo"/>');
var el = document.getElementsByTagName('SELECT')['tmp.edt.seq_sistema'];
comboSelect(el,'<wi:out var="tmp.edt.seq_sistema"/>');
var el = document.getElementsByTagName('SELECT')['tmp.edt.flg_servidor_impacto'];
comboSelect(el,'<wi:out var="tmp.edt.flg_servidor_impacto"/>');
var el = document.getElementsByTagName('SELECT')['tmp.edt.flg_servidor_urgencia'];
comboSelect(el,'<wi:out var="tmp.edt.flg_servidor_urgencia"/>');
var el = document.getElementsByTagName('SELECT')['tmp.edt.flg_servidor_atuacao_noc'];
comboSelect(el,'<wi:out var="tmp.edt.flg_servidor_atuacao_noc"/>');
var el = document.getElementsByTagName('SELECT')['tmp.edt.flg_servidor_ativo'];
comboSelect(el,'<wi:out var="tmp.edt.flg_servidor_ativo"/>');
}
</SCRIPT>
		
	    <wi:function expr="if(|tmp.message|!= && |wi.builder|==,
			<script type=\"text/javascript\">
			$(function() {
				// a workaround for a flaw in the demo system (http://dev.jqueryui.com/ticket/4375)\\, ignore!
				$(\"#dialog\").dialog(\"destroy\");
			
				$(\"#dialog\").dialog({
					modal: true\\,
					buttons: {
						Ok: function() {
							$(this).dialog('close');
						}
					}
				});
			});
			</script>
		)"/>
	</head>	

<body onload="init();">
		<table width="100%" cellpadding="0" cellspacing="0">
			<tr>
				<td width="27%"></td>
				<td class="cabecalho">
					<table width="979px" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<img src="/<wi:out var="wi.proj.id"/>/imgs/logo.png" border="0">
							</td>
							<td></td>
						</tr>
					</table>
				</td>
				<td width="27%"></td>
			</tr>
			<tr>
				<td width="27%"></td>
				<td class="menu">
					<table width="977px" cellpadding="0" cellspacing="0">
						<tr>
							<td>		
													
								<div class="menu_esquerda">
									<w:generateGrid name="seg_modulo"/>
								</div>								
								
								<div class="menu_direita">
                                  <div style="float:right;">
                                    <a href="#" onclick="wiOpen('/<wi:out var="wi.proj.id"/>/seguranca/logoff.wsp');">Sair</a>
									</div>
									<div style="width:25px;float:right;">
                                      <img src="/<wi:out var="wi.proj.id"/>/imgs/sair.gif" border="0"/>
									</div>
								</div>
							</td>							
						</tr>
					</table>
				</td>
				<td width="27%"></td>
			</tr>
			<tr>
				<td width="27%"></td>
				<td class="corpo">
					<table width="977px" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<div id="div_corpo">
                                  <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/ajax/login.js" charset="iso-8859-1"></script>
                                  <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/msg/jquery.center.min.js" charset="iso-8859-1"></script>
                                  <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/jquery/msg/jquery.msg.min.js" charset="iso-8859-1"></script>
                                  <div class="box_cabecalho">
                                      <wi:out var="wi.page.title"/>
                                  </div>
                                  
                                  <div class="box">
                                      <center>
                                        <table width="977px" cellpadding="0" cellspacing="0">
                                          <tr>
                                            <td width="30%">
                                            </td>
                                            <td>
												<table cellpadding='0' cellspacing='0' class='tabLine'><tr>
<td class="title">

</td></tr></table>

<FORM NAME="tmp.edt" ACTION="/<wi:out var="wi.proj.id"/>/<wi:out var="wi.page.id"/>.wsp" METHOD="post" CLASS="frm"   id="formulario"><INPUT NAME="wi.page.prev" ID="wi.page.prev" VALUE="<wi:out var="wi.page.id"/>" TYPE="hidden" /><INPUT NAME="wi.token" ID="wi.token" VALUE="<wi:out var="wi.token"/>" TYPE="hidden" /><INPUT NAME="tmp.action" ID="tmp.action" VALUE="save" TYPE="hidden" /><INPUT NAME="tmp.id" ID="tmp.id" VALUE="<wi:out var="tmp.id"/>" TYPE="hidden" /><INPUT NAME="tmp.qtd" ID="tmp.qtd" VALUE="<wi:out var="grid.aux_consulta_rede.size"/>" TYPE="hidden" />
<table cellpadding="0" cellspacing="0"><tr>
<td class="label">Tipo:</td>
</tr><tr>
<td><SELECT NAME="tmp.edt.tip_servidor_tipo" ID="tmp.edt.tip_servidor_tipo" CLASS="field required">
  <OPTION VALUE="">--Selecione--</OPTION>
  <OPTION VALUE="L">Link</OPTION>
  <OPTION VALUE="S">Servidor</OPTION>
  <OPTION VALUE="P">Página</OPTION>
</SELECT></td></tr></table>

<table cellpadding="0" cellspacing="0"><tr>
<td class="label">Host:</td>
</tr><tr>
<td><INPUT NAME="tmp.edt.nom_servidor_nome" ID="tmp.edt.nom_servidor_nome" MAXLENGTH="255" SIZE="60" VALUE="<wi:out var="tmp.edt.nom_servidor_nome"/>" CLASS="field required" /></td></tr></table>

<table cellpadding="0" cellspacing="0"><tr>
<td class="label">Função:</td>
</tr><tr>
<td><INPUT NAME="tmp.edt.dsc_servidor_funcao" ID="tmp.edt.dsc_servidor_funcao" MAXLENGTH="255" SIZE="60" VALUE="<wi:out var="tmp.edt.dsc_servidor_funcao"/>" CLASS="field required" /></td></tr></table>

<table cellpadding="0" cellspacing="0"><tr>
<td class="label">Descrição geral do servidor:</td>
</tr><tr>
<td><TEXTAREA NAME="tmp.edt.txt_servidor_descricao" ID="tmp.edt.txt_servidor_descricao" COLS="60" ROWS="5" CLASS="field required"><wi:out var="tmp.edt.txt_servidor_descricao"/></TEXTAREA></td></tr></table>

<table cellpadding="0" cellspacing="0"><tr>
<td class="label">Sistema Operacional:</td>
</tr><tr>
<td><SELECT NAME="tmp.edt.seq_sistema" ID="tmp.edt.seq_sistema" CLASS="field">
  <OPTION VALUE="">--Selecione--</OPTION>
  <w:generateCombo name="aux_sistema"/>
</SELECT></td></tr></table>
<table cellpadding='0' cellspacing='0' class='tabLine'><tr>
<td class="label">
<w:generateGrid name="aux_consulta_rede"/>
</td></tr></table>


<table cellpadding="0" cellspacing="0"><tr>
<td class="label">Nome DNS / Endereço:</td>
</tr><tr>
<td><INPUT NAME="tmp.edt.nom_servidor_nome_dns" ID="tmp.edt.nom_servidor_nome_dns" MAXLENGTH="255" SIZE="60" VALUE="<wi:out var="tmp.edt.nom_servidor_nome_dns"/>" CLASS="field" /></td></tr></table>

<table cellpadding="0" cellspacing="0"><tr>
<td class="label">Discos Virtuais:</td>
</tr><tr>
<td><INPUT NAME="tmp.edt.num_servidor_disco" ID="tmp.edt.num_servidor_disco" MAXLENGTH="13" SIZE="13" VALUE="<wi:out var="tmp.edt.num_servidor_disco"/>" CLASS="field"   alt="inteiroSM"/></td></tr></table>

<table cellpadding="0" cellspacing="0"><tr>
<td class="label">Potenciais Riscos:</td>
</tr><tr>
<td><TEXTAREA NAME="tmp.edt.txt_servidor_risco" ID="tmp.edt.txt_servidor_risco" COLS="60" ROWS="5" CLASS="field required"><wi:out var="tmp.edt.txt_servidor_risco"/></TEXTAREA></td></tr></table>

<table cellpadding="0" cellspacing="0"><tr>
<td class="label">Impacto:</td>
</tr><tr>
<td><SELECT NAME="tmp.edt.flg_servidor_impacto" ID="tmp.edt.flg_servidor_impacto" CLASS="field required">
  <OPTION VALUE="">--Selecione--</OPTION>
  <OPTION VALUE="A">Alta</OPTION>
  <OPTION VALUE="M">Média</OPTION>
  <OPTION VALUE="B">Baixa</OPTION>
</SELECT></td></tr></table>

<table cellpadding="0" cellspacing="0"><tr>
<td class="label">Urgência:</td>
</tr><tr>
<td><SELECT NAME="tmp.edt.flg_servidor_urgencia" ID="tmp.edt.flg_servidor_urgencia" CLASS="field required">
  <OPTION VALUE="">--Selecione--</OPTION>
  <OPTION VALUE="A">Alta</OPTION>
  <OPTION VALUE="M">Média</OPTION>
  <OPTION VALUE="B">Baixa</OPTION>
</SELECT></td></tr></table>

<table cellpadding="0" cellspacing="0"><tr>
<td class="label">Atuação do NOC:</td>
</tr><tr>
<td><SELECT NAME="tmp.edt.flg_servidor_atuacao_noc" ID="tmp.edt.flg_servidor_atuacao_noc" CLASS="field required">
  <OPTION VALUE="">--Selecione--</OPTION>
  <OPTION VALUE="S">Sim</OPTION>
  <OPTION VALUE="N">Não</OPTION>
</SELECT></td></tr></table>

<table cellpadding="0" cellspacing="0"><tr>
<td class="label">Procedimento do NOC:</td>
</tr><tr>
<td><TEXTAREA NAME="tmp.edt.txt_servidor_noc_procedimento" ID="tmp.edt.txt_servidor_noc_procedimento" COLS="60" ROWS="5" CLASS="field"><wi:out var="tmp.edt.txt_servidor_noc_procedimento"/></TEXTAREA></td></tr></table>

<table cellpadding="0" cellspacing="0"><tr>
<td class="label">Ativo:</td>
</tr><tr>
<td><SELECT NAME="tmp.edt.flg_servidor_ativo" ID="tmp.edt.flg_servidor_ativo" CLASS="field required">
  <OPTION VALUE="">--Selecione--</OPTION>
  <OPTION VALUE="S">Sim</OPTION>
  <OPTION VALUE="N">Não</OPTION>
</SELECT></td></tr></table>

<br>

<br/>
<table align="center" width="100%">
  <tr>
    <td align="center" >
      <button type="submit" name="tmp.btn_gravar" id="btn_gravar" role="button" class="botoes ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" title="Clique no botão gravar os dados" alt="Clique no botão gravar os dados">
        <span class="ui-button-text">Salvar</span>
      </button>
      
      <button type="button" name="tmp.btn_add_novo" id="btn_add_novo" role="button" class="botoes ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" title="Clique no botão para novo cadastro" alt="Clique no botão para novo cadastro" onclick="wiOpen('/<wi:out var="wi.proj.id"/>/<wi:out var="wi.page.id"/>.wsp');">
        <span class="ui-button-text">Novo</span>
      </button>
      <button type="button" name="tmp.btn_pesquisar" id="btn_pesquisar" role="button" class="botoes ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" title="Clique no botão para pesquisar" alt="Clique no botão para pesquisar" onclick="wiOpen('/<wi:out var="wi.proj.id"/>/cadastro/servidor/pesquisa.wsp');">
        <span class="ui-button-text">Pesquisar</span>
      </button>	
      <wi:function expr="if(|tmp.id|!= && |pvt.login.seq_perfil|==1,
      <button type=\"button\" name=\"tmp.btn_excluir\" id=\"btn_excluir\" role=\"button\" class=\"botoes ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only\" title=\"Clique no botão para excluir\" alt=\"Clique no botão para excluir\">
        <span class=\"ui-button-text\">Excluir</span>
      </button>
      )"/>
      
    </td>						
  </tr>
</table>
<br />



<script>
  $( function() {
    dialog = $( "#dialog-delete" ).dialog({
      autoOpen: false,
      
      width: 350,
      modal: true,
      buttons: {        
        Cancelar: function() {
          document.getElementById('tmp.action').value="save";
          dialog.dialog( "close" );
        },
        Confirmar: function() {
          document.getElementById('tmp.action').value="delete";
          //$('#tmp.action').attr("value", "delete");
          $('#formulario').submit();
          //form[ 0 ].reset();
          //allFields.removeClass( "ui-state-error" );
        }
      }
      
    });
	
	$( "#btn_excluir" ).click( function() {
      dialog.dialog( "open" );
    });
  } );
  </script>
  
  
  <div id="dialog-delete" title="Exclusão">
  <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>Deseja realmente excluir esse registro? Essa operação não poderá ser desfeita.</p>
</div>

</FORM>
                                            </td>
                                            <td width="30%">
                                            </td>
                                          </tr>
                                        </table>
                                    </center>
                                    <wi:out var="tmp.tabs"/>
                                  </div>
								</div>
							</td>							
						</tr>
					</table>
				</td>
				<td width="27%"></td>
			</tr>
			
			
			<wi:function expr="if(|tmp.message|!= && |wi.builder|==,
					<div id=\"dialog\" title=\"Aviso\">
						<p>
							<span class=\"ui-icon ui-icon-circle-check\" style=\"float:left; margin:0 7px 50px 0;\"></span>					
							|tmp.message|
						</p>						
					</div>		
			)"/>		
			
			
			<tr>
				<td width="27%"></td>
				<td class="rodape">
					<table width="977px" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<div id="texto_ropape">
									<strong>Administração - <wi:out var="wi.proj.title"/></strong>
								</div>
								
								<div id="texto_rodape_endereco">
									<hr class="separador"/>
									Todos direitos reservados © - <wi:out var="wi.date.year"/> - Versão - <wi:out var="pvt.parametro.dsc_configuracao_valor"/>
								</div>
							</td>							
						</tr>
					</table>
				</td>
				<td width="27%"></td>
			</tr>
		</table>		
  
  
  
  
  	<script>
    $(document).ready(function(){        
        $('.dataTables').dataTable({
            "bJQueryUI": true,
            "aaSorting": [ [4,'desc'], [0,'desc'] ],
            "sPaginationType": "full_numbers",
            "oLanguage": {
              "sUrl": "/<wi:out var="wi.proj.id"/>/libs/js/datatables/language/ptBR.txt"
            },
            "bStateSave": true,
            "aoColumnDefs": [{
                    "bSortable": false,
                    "aTargets": [-1]
                }]
        });
    });
	</script>
<wi:out var="wi.grid.form"/>
</body>
</html><w:endPage/>