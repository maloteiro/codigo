<%@ page info='Grid Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="GridSql" name="grid_seg_consulta_usuario"
/><jsp:useBean
  id="grid_seg_consulta_usuario" type="br.com.webinside.runtime.component.GridSql"
/><jsp:setProperty
  name="grid_seg_consulta_usuario" property="colDisp" value="H"
/><jsp:setProperty
  name="grid_seg_consulta_usuario" property="database" value="principal"
/><jsp:setProperty
  name="grid_seg_consulta_usuario" property="description" value="Grid SQL: seg_consulta_usuario"
/><jsp:setProperty
  name="grid_seg_consulta_usuario" property="id" value="seg_consulta_usuario"
/><jsp:setProperty
  name="grid_seg_consulta_usuario" property="recursive" value="false"
/><jsp:setProperty
  name="grid_seg_consulta_usuario" property="sql" value="SELECT * 
FROM seg_usuario 
where dsc_usuario_nome like '%|tmp.argumento_pesquisa|%'
or dsc_usuario_email like '%|tmp.argumento_pesquisa|%'
or dsc_usuario_email2 like '%|tmp.argumento_pesquisa|%'"
/><jsp:setProperty
  name="grid_seg_consulta_usuario" property="sqlFilter" value="%*?'\""
/>