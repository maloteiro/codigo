<%@ page info='Combo Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="Combo" name="combo_cad_responsavel"
/><jsp:useBean
  id="combo_cad_responsavel" type="br.com.webinside.runtime.component.Combo"
/><jsp:setProperty
  name="combo_cad_responsavel" property="database" value="principal"
/><jsp:setProperty
  name="combo_cad_responsavel" property="description" value="Combo: cad_responsavel"
/><jsp:setProperty
  name="combo_cad_responsavel" property="key" value="|seq_responsavel|"
/><jsp:setProperty
  name="combo_cad_responsavel" property="sql" value="SELECT 
 tbl_responsavel.seq_responsavel, tbl_responsavel.nom_responsavel_nome 
FROM tbl_responsavel
WHERE (tbl_responsavel.flg_responsavel_ativo = 'S')
and tbl_responsavel.flg_responsavel_excluido='N'
ORDER BY tbl_responsavel.nom_responsavel_nome "
/><jsp:setProperty
  name="combo_cad_responsavel" property="sqlFilter" value="%*?'\""
/><jsp:setProperty
  name="combo_cad_responsavel" property="text" value="|nom_responsavel_nome|"
/>