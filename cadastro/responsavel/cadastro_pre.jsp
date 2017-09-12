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
  name="objectelement1" property="sql" value="SELECT 
 tbl_responsavel.seq_responsavel, 
 tbl_responsavel.nom_responsavel_nome, 
 tbl_responsavel.dsc_responsavel_email, 
 tbl_responsavel.num_responsavel_fixo1, 
 tbl_responsavel.num_responsavel_fixo2, 
 tbl_responsavel.num_responsavel_celular1, 
 tbl_responsavel.num_responsavel_celular2, 
 tbl_responsavel.num_responsavel_celular3,
 tbl_responsavel.num_responsavel_0800, 
 tbl_responsavel.flg_responsavel_ativo, 
 tbl_responsavel.dat_data_cadastro, 
 tbl_responsavel.seq_usuario_cadastro,
 tbl_responsavel.dat_data_alteracao, 
 tbl_responsavel.seq_usuario_alteracao, 
 tbl_responsavel.cod_token_codigo 
FROM tbl_responsavel
WHERE (tbl_responsavel.seq_responsavel = ?|tmp.id|)
and flg_responsavel_excluido='N'"
/><jsp:setProperty
  name="objectelement1" property="sqlFilter" value="%*?'"
/><jsp:setProperty
  name="objectelement1" property="usejson" value="false"
/><jsp:setProperty
  name="objectelement1" property="WIObj" value="tmp.edt"
/><w:executeCore
  type="ObjectElement" name="objectelement1"
/><w:setPageElement
  type="GridRef" name="grid1"
/><jsp:useBean
  id="grid1" type="br.com.webinside.runtime.component.GridRef"
/><jsp:setProperty
  name="grid1" property="condition" value="true"
/><jsp:setProperty
  name="grid1" property="description" value="Grid: aux_consulta_telefone"
/><jsp:setProperty
  name="grid1" property="generateInPage" value="false"
/><jsp:setProperty
  name="grid1" property="id" value="aux_consulta_telefone"
/><jsp:setProperty
  name="grid1" property="returnEmpty" value="false"
/><jsp:setProperty
  name="grid1" property="type" value="SQLS"
/><w:executeCore
  type="Grid" name="grid1"
/><w:endPage/>