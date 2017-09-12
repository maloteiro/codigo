<%@ page info='Pre-Page Elements'
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
%><w:initPage/><w:setPageElement
  type="GridRef" name="grid1"
/><jsp:useBean
  id="grid1" type="br.com.webinside.runtime.component.GridRef"
/><jsp:setProperty
  name="grid1" property="condition" value="true"
/><jsp:setProperty
  name="grid1" property="description" value="Grid: aux_consulta_escala_desastre"
/><jsp:setProperty
  name="grid1" property="generateInPage" value="false"
/><jsp:setProperty
  name="grid1" property="id" value="aux_consulta_escala_desastre"
/><jsp:setProperty
  name="grid1" property="returnEmpty" value="false"
/><jsp:setProperty
  name="grid1" property="type" value="SQLS"
/><w:executeCore
  type="Grid" name="grid1"
/><w:setPageElement
  type="GridRef" name="grid2"
/><jsp:useBean
  id="grid2" type="br.com.webinside.runtime.component.GridRef"
/><jsp:setProperty
  name="grid2" property="condition" value="true"
/><jsp:setProperty
  name="grid2" property="description" value="Grid: aux_consulta_escala_atencao"
/><jsp:setProperty
  name="grid2" property="generateInPage" value="false"
/><jsp:setProperty
  name="grid2" property="id" value="aux_consulta_escala_atencao"
/><jsp:setProperty
  name="grid2" property="returnEmpty" value="false"
/><jsp:setProperty
  name="grid2" property="type" value="SQLS"
/><w:executeCore
  type="Grid" name="grid2"
/><w:setPageElement
  type="GridRef" name="grid3"
/><jsp:useBean
  id="grid3" type="br.com.webinside.runtime.component.GridRef"
/><jsp:setProperty
  name="grid3" property="condition" value="true"
/><jsp:setProperty
  name="grid3" property="description" value="Grid: aux_consulta_rede"
/><jsp:setProperty
  name="grid3" property="generateInPage" value="false"
/><jsp:setProperty
  name="grid3" property="id" value="aux_consulta_rede"
/><jsp:setProperty
  name="grid3" property="returnEmpty" value="false"
/><jsp:setProperty
  name="grid3" property="type" value="SQLS"
/><w:executeCore
  type="Grid" name="grid3"
/><w:setPageElement
  type="SetElement" name="setelement1"
/><jsp:useBean
  id="setelement1" type="br.com.webinside.runtime.component.SetElement"
/><jsp:setProperty
  name="setelement1" property="condition" value="|tmp.id|!="
/><jsp:setProperty
  name="setelement1" property="description" value="Gravar tmp.tabs"
/><jsp:setProperty
  name="setelement1" property="disableProduce" value="false"
/><jsp:setProperty
  name="setelement1" property="ifTrue" value="<div id=\"tabs\">
	  <ul>                        
		  <li><a href=\"#tabs-1\">Desastre e Alta</a></li>
                  <li><a href=\"#tabs-2\">Média e Atenção</a></li>
	  </ul>
	  <div id=\"tabs-1\">
<table align=\"center\" width=\"100%\">
  <tr>
    <td align=\"center\">      
      <button type=\"button\" name=\"tmp.btn_add_novo\" id=\"btn_add_novo\" role=\"button\" class=\"botoes ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only\" title=\"Clique no botão para nova escala\" alt=\"Clique no botão para nova escala\" onclick=\"wiOpen('/|wi.proj.id|/cadastro/servidor/escala.wsp?tmp.seq_servidor=|tmp.id|&tmp.tip_escala_evento=D');\">
        <span class=\"ui-button-text\">Novo</span>
      </button>
    </td>						
  </tr>
</table>

		 <p>
		  |grid.aux_consulta_escala_desastre|
		 </p>
		 
	  </div>
<div id=\"tabs-2\">
<table align=\"center\" width=\"100%\">
  <tr>
    <td align=\"center\">      
      <button type=\"button\" name=\"tmp.btn_add_novo_atencao\" id=\"btn_add_novo_atencao\" role=\"button\" class=\"botoes ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only\" title=\"Clique no botão para nova escala\" alt=\"Clique no botão para nova escala\" onclick=\"wiOpen('/|wi.proj.id|/cadastro/servidor/escala.wsp?tmp.seq_servidor=|tmp.id|&tmp.tip_escala_evento=A');\">
        <span class=\"ui-button-text\">Novo</span>
      </button>
    </td>						
  </tr>
</table>

		 <p>
		  |grid.aux_consulta_escala_atencao|
		 </p>
  </div>
		  
		  


 "
/><jsp:setProperty
  name="setelement1" property="WIObj" value="tmp.tabs"
/><w:executeCore
  type="SetElement" name="setelement1"
/><w:setPageElement
  type="ObjectElement" name="objectelement1"
/><jsp:useBean
  id="objectelement1" type="br.com.webinside.runtime.component.ObjectElement"
/><jsp:setProperty
  name="objectelement1" property="condition" value="true"
/><jsp:setProperty
  name="objectelement1" property="database" value="principal"
/><jsp:setProperty
  name="objectelement1" property="description" value="Objeto tmp.edt"
/><jsp:setProperty
  name="objectelement1" property="multiple" value="false"
/><jsp:setProperty
  name="objectelement1" property="sql" value="SELECT 	tbl_servidor.seq_sistema, 
		tbl_servidor.nom_servidor_nome, 
 		tbl_servidor.dsc_servidor_funcao, 
        tbl_servidor.txt_servidor_descricao, 
        tbl_servidor.dsc_servidor_rede, 
 		tbl_servidor.nom_servidor_nome_dns, 
        tbl_servidor.num_servidor_disco, 
        tbl_servidor.txt_servidor_risco, 
 		tbl_servidor.flg_servidor_impacto, 
        tbl_servidor.flg_servidor_urgencia, 
        tbl_servidor.flg_servidor_atuacao_noc, 
 		tbl_servidor.txt_servidor_noc_procedimento, 
 		tbl_servidor.flg_servidor_ativo,
 		tbl_servidor.dat_data_cadastro, 
        tbl_servidor.seq_usuario_cadastro, 
 		tbl_servidor.dat_data_alteracao, 
        tbl_servidor.seq_usuario_alteracao, 
        tbl_servidor.cod_token_codigo,
 		tbl_servidor.tip_servidor_tipo
FROM tbl_servidor
WHERE (tbl_servidor.seq_servidor = ?|tmp.id|)
AND (tbl_servidor.flg_servidor_excluido='N')"
/><jsp:setProperty
  name="objectelement1" property="sqlFilter" value="%*?'"
/><jsp:setProperty
  name="objectelement1" property="usejson" value="false"
/><jsp:setProperty
  name="objectelement1" property="WIObj" value="tmp.edt"
/><w:executeCore
  type="ObjectElement" name="objectelement1"
/><w:endPage/>