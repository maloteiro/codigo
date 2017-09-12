<%@ page info='Grid Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="GridSql" name="grid_seg_consulta_modulo"
/><jsp:useBean
  id="grid_seg_consulta_modulo" type="br.com.webinside.runtime.component.GridSql"
/><jsp:setProperty
  name="grid_seg_consulta_modulo" property="colDisp" value="H"
/><jsp:setProperty
  name="grid_seg_consulta_modulo" property="database" value="principal"
/><jsp:setProperty
  name="grid_seg_consulta_modulo" property="description" value="Grid SQL: seg_consulta_modulo"
/><jsp:setProperty
  name="grid_seg_consulta_modulo" property="id" value="seg_consulta_modulo"
/><jsp:setProperty
  name="grid_seg_consulta_modulo" property="recursive" value="false"
/><jsp:setProperty
  name="grid_seg_consulta_modulo" property="sql" value="SELECT * 
FROM seg_modulo 
where dsc_modulo_descricao like '%|tmp.argumento_pesquisa|%'"
/><jsp:setProperty
  name="grid_seg_consulta_modulo" property="sqlFilter" value="%*?'\""
/>