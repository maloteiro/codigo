<%@ page info='Grid Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="GridSql" name="grid_cad_consulta_vaga"
/><jsp:useBean
  id="grid_cad_consulta_vaga" type="br.com.webinside.runtime.component.GridSql"
/><jsp:setProperty
  name="grid_cad_consulta_vaga" property="colDisp" value="H"
/><jsp:setProperty
  name="grid_cad_consulta_vaga" property="database" value="principal"
/><jsp:setProperty
  name="grid_cad_consulta_vaga" property="description" value="Grid SQL: cad_consulta_vaga"
/><jsp:setProperty
  name="grid_cad_consulta_vaga" property="id" value="cad_consulta_vaga"
/><jsp:setProperty
  name="grid_cad_consulta_vaga" property="recursive" value="false"
/><jsp:setProperty
  name="grid_cad_consulta_vaga" property="sql" value="SELECT * 
FROM tbl_vaga 
where dsc_vaga_titulo like '%|tmp.argumento_pesquisa|%'
or dsc_vaga_email like '%|tmp.argumento_pesquisa|%'
or txt_vaga_descricao like '%|tmp.argumento_pesquisa|%'
"
/><jsp:setProperty
  name="grid_cad_consulta_vaga" property="sqlFilter" value="%*?'\""
/>