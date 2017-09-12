<%@ page info='Grid Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="GridSql" name="grid_cad_consulta_responsavel"
/><jsp:useBean
  id="grid_cad_consulta_responsavel" type="br.com.webinside.runtime.component.GridSql"
/><jsp:setProperty
  name="grid_cad_consulta_responsavel" property="colDisp" value="H"
/><jsp:setProperty
  name="grid_cad_consulta_responsavel" property="database" value="principal"
/><jsp:setProperty
  name="grid_cad_consulta_responsavel" property="description" value="Grid SQL: cad_consulta_responsavel"
/><jsp:setProperty
  name="grid_cad_consulta_responsavel" property="id" value="cad_consulta_responsavel"
/><jsp:setProperty
  name="grid_cad_consulta_responsavel" property="recursive" value="false"
/><jsp:setProperty
  name="grid_cad_consulta_responsavel" property="sql" value="SELECT 
 tbl_responsavel.seq_responsavel, 
 tbl_responsavel.nom_responsavel_nome, 
 tbl_responsavel.dsc_responsavel_email, 
 tbl_responsavel.num_responsavel_fixo1, 
 tbl_responsavel.num_responsavel_fixo2, 
 tbl_responsavel.num_responsavel_celular1, 
 tbl_responsavel.num_responsavel_celular2, 
 tbl_responsavel.num_responsavel_celular3, 
 tbl_responsavel.flg_responsavel_ativo 
FROM tbl_responsavel
where (tbl_responsavel.nom_responsavel_nome like '%|tmp.argumento_pesquisa|%'
or tbl_responsavel.dsc_responsavel_email like '%|tmp.argumento_pesquisa|%'
or tbl_responsavel.num_responsavel_fixo1 like '%|tmp.argumento_pesquisa|%'
or tbl_responsavel.num_responsavel_fixo2 like '%|tmp.argumento_pesquisa|%'
or tbl_responsavel.num_responsavel_celular1 like '%|tmp.argumento_pesquisa|%'
or tbl_responsavel.num_responsavel_celular2 like '%|tmp.argumento_pesquisa|%'
or tbl_responsavel.num_responsavel_celular3 like '%|tmp.argumento_pesquisa|%')
and flg_responsavel_excluido='N'"
/><jsp:setProperty
  name="grid_cad_consulta_responsavel" property="sqlFilter" value="%*?'\""
/>