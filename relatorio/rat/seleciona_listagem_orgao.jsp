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
%><w:initPage name="relatorio/rat/seleciona_listagem_orgao"><jsp:useBean
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
  name="wipage" property="title" value="Relatório de Atendimento Técnico por Local"
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
<SCRIPT TYPE="text/javascript">
function init(){
var el = document.getElementsByTagName('SELECT')['tmp.ano'];
comboSelect(el,'<wi:out var="tmp.ano"/>');
var el = document.getElementsByTagName('SELECT')['tmp.mes'];
comboSelect(el,'<wi:out var="tmp.mes"/>');
var el = document.getElementsByTagName('SELECT')['tmp.seq_local'];
comboSelect(el,'<wi:out var="tmp.seq_local"/>');
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
										<FORM NAME="tmp.rel" ACTION="/<wi:out var="wi.proj.id"/>/<wi:out var="wi.page.id"/>.wsp" METHOD="post" CLASS="frm"   id="formulario"><INPUT NAME="wi.page.prev" ID="wi.page.prev" VALUE="<wi:out var="wi.page.id"/>" TYPE="hidden" /><INPUT NAME="wi.token" ID="wi.token" VALUE="<wi:out var="wi.token"/>" TYPE="hidden" />
<table cellpadding="0" cellspacing="0"><tr>
<td class="label">Ano:</td>
</tr><tr>
<td><SELECT NAME="tmp.ano" ID="tmp.ano" CLASS="required">
  <OPTION VALUE="">--Selecione--</OPTION>
  <w:generateCombo name="aux_ano"/>
</SELECT></td></tr></table>

<table cellpadding="0" cellspacing="0"><tr>
<td class="label">Mês:</td>
</tr><tr>
<td><SELECT NAME="tmp.mes" ID="tmp.mes" CLASS="required">
  <OPTION VALUE="">--Selecione--</OPTION>
  <w:generateCombo name="aux_mes"/>
</SELECT></td></tr></table>

<table cellpadding="0" cellspacing="0"><tr>
<td class="label">Local:</td>
</tr><tr>
<td><SELECT NAME="tmp.seq_local" ID="tmp.seq_local">
  <OPTION VALUE="">Todos</OPTION>
  <w:generateCombo name="aux_local"/>
</SELECT></td></tr></table>

<br />

<br/>
<table align="center">
  <tr>
    <td align="center" >
      
      <button type="button" name="tmp.btn_pesquisar" id="btn_pesquisar" role="button" class="botoes ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" title="Clique no botão para pesquisar" alt="Clique no botão para pesquisar" onclick="wiOpen('/<wi:out var="wi.proj.id"/>/relatorio/rat/listagem_orgao.wsp?tmp.mes='+document.getElementById('tmp.mes').value+'&tmp.ano='+document.getElementById('tmp.ano').value+'&tmp.seq_local='+document.getElementById('tmp.seq_local').value,'_relatorio');">
        <span class="ui-button-text">Gerar</span>
      </button>																		
    </td>						
  </tr>
</table>

</FORM>                                            
                                    </center>                                    
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