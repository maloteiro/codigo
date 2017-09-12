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
%><w:initPage name="seguranca/alterar_senha"><jsp:useBean
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
  name="wipage" property="noLogin" value="ON"
/><jsp:setProperty
  name="wipage" property="rerender" value="OFF"
/><jsp:setProperty
  name="wipage" property="security" value="OFF"
/><jsp:setProperty
  name="wipage" property="syncPos" value="false"
/><jsp:setProperty
  name="wipage" property="syncPre" value="false"
/><jsp:setProperty
  name="wipage" property="sysPage" value="OFF"
/><jsp:setProperty
  name="wipage" property="title" value="Nova senha"
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
		  <SCRIPT TYPE="text/javascript" SRC="/<wi:out var="wi.proj.id"/>/js/page.js"></SCRIPT>
  <META HTTP-EQUIV="pragma" CONTENT="no-cache" />
  <META HTTP-EQUIV="expires" CONTENT="0" />
  <META HTTP-EQUIV="cache-control" CONTENT="no-cache" />
  <TITLE><wi:out var="wi.page.title"/></TITLE>
<SCRIPT TYPE="text/javascript">
function init(){

}
</SCRIPT>
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
		<!-- biblioteca de funções da corregedoria -->
		<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/libs/js/ajax/functions.js"></script>

		<script type="text/javascript">			
			$('.botao').corner();
			
			jQuery(function(){				
				$('input:text').setMask();
			});
			$.mask.masks = $.extend($.mask.masks,{
				
				inteiro:{ mask: '999.999.999.999', type:'reverse' },
				decimal:{ mask: '99,999.999.999.999', type:'reverse' },
				dateBR:{ mask: '39/19/2999'},
				proc_ECNJ:{ mask: '9999999-99.9999.9.99.9999'},
				processo:{ mask: '9999999999999999999999999'},
				CPF:{ mask: '999.999.999-99'},
				telefone:{ mask: '(99) 9999-9999'}
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

<body>
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
									
								</div>								
								
								<div class="menu_direita">									
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
										<FORM NAME="formulario" ACTION="/<wi:out var="wi.proj.id"/>/<wi:out var="wi.page.id"/>.wsp" METHOD="post" CLASS="frm"   id="formulario"><INPUT NAME="wi.page.prev" ID="wi.page.prev" VALUE="<wi:out var="wi.page.id"/>" TYPE="hidden" /><INPUT NAME="wi.token" ID="wi.token" VALUE="<wi:out var="wi.token"/>" TYPE="hidden" />
<br />
<table cellpadding="0" cellspacing="0" border="0" class="login_box">
			<tr>
				<td colspan="2" class="login_box_e_d_t">					
					<br />
				</td>
			</tr>
			<tr valign="center" height="30px">				
				<td align="right" class="login_box_e">
					<label class="login_txt_label">
						  E-mail
					</label>								
				</td>				
				<td align="right" width="300px" class="login_box_d">
					<div style="margin-right:20px;">					
						<input class="campo_login email required" name="tmp.user" id="tmp.user" type="text" size="40">					
					</div>
				</td>				
			</tr>			
					
			<!--tr valign="top" height="25px">
				<td align="right" class="login_box_e">
					<label class="login_txt_label">
						  Senha
					</label>								
				</td>
				<td align="right" width="295px" class="login_box_d">
					<div style="margin-right:20px;">						
						<input class="campo_login required" name="tmp.pass" id="tmp.pass" type="password" size="40">						
					</div>
				</td>
			</tr-->
					
			<tr>
				<td colspan="2" class="login_box_e_d">					
					<br />
				</td>
			</tr>					
			<tr valign="top">
				<td align="right" class="login_box_e">
					 								
				</td>
				<td align="center" width="295px" class="login_box_d_txt_center">
					
						<button type="submit" name="bt_salvar" id="bt_salvar" role="button" class="botoes ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" title="Clique no botão para envio de nova senha" alt="Clique no botão para envio de nova senha">
							<span class="ui-button-text">ENVIAR</span>
						</button>																								
                  <button type="button" name="bt_esqueci" id="bt_esqueci" onclick="wiOpen('/<wi:out var="wi.proj.id"/>/index.wsp')" role="button" class="botoes ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" title="Clique no botão para voltar" alt="Clique no botão para voltar">
							<span class="ui-button-text">VOLTAR</span>
						</button>
					
				</td>													
			</tr>
			<tr>
				<td colspan="2" class="login_box_e_d_b">					
					<br />
				</td>
			</tr>
		</table>
		<br />

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
<wi:out var="wi.grid.form"/>
</body>
</html><w:endPage/>