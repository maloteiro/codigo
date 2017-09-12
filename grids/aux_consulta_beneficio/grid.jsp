<%@ page info='Grid Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="GridSql" name="grid_aux_consulta_beneficio"
/><jsp:useBean
  id="grid_aux_consulta_beneficio" type="br.com.webinside.runtime.component.GridSql"
/><jsp:setProperty
  name="grid_aux_consulta_beneficio" property="colDisp" value="H"
/><jsp:setProperty
  name="grid_aux_consulta_beneficio" property="database" value="principal"
/><jsp:setProperty
  name="grid_aux_consulta_beneficio" property="description" value="Grid SQL: aux_consulta_beneficio"
/><jsp:setProperty
  name="grid_aux_consulta_beneficio" property="id" value="aux_consulta_beneficio"
/><jsp:setProperty
  name="grid_aux_consulta_beneficio" property="recursive" value="false"
/><jsp:setProperty
  name="grid_aux_consulta_beneficio" property="sql" value="SELECT * 
FROM aux_vaga_beneficio 
where dsc_vaga_beneficio_descricao like '%|tmp.argumento_pesquisa|%'"
/><jsp:setProperty
  name="grid_aux_consulta_beneficio" property="sqlFilter" value="%*?'\""
/>