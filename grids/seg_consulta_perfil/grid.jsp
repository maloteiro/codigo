<%@ page info='Grid Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="GridSql" name="grid_seg_consulta_perfil"
/><jsp:useBean
  id="grid_seg_consulta_perfil" type="br.com.webinside.runtime.component.GridSql"
/><jsp:setProperty
  name="grid_seg_consulta_perfil" property="colDisp" value="H"
/><jsp:setProperty
  name="grid_seg_consulta_perfil" property="database" value="principal"
/><jsp:setProperty
  name="grid_seg_consulta_perfil" property="description" value="Grid SQL: seg_consulta_perfil"
/><jsp:setProperty
  name="grid_seg_consulta_perfil" property="id" value="seg_consulta_perfil"
/><jsp:setProperty
  name="grid_seg_consulta_perfil" property="recursive" value="false"
/><jsp:setProperty
  name="grid_seg_consulta_perfil" property="sql" value="SELECT * 
FROM seg_perfil 
where dsc_perfil_nome like '%|tmp.argumento_pesquisa|%'
or sig_perfil_sigla like '%|tmp.argumento_pesquisa|%'"
/><jsp:setProperty
  name="grid_seg_consulta_perfil" property="sqlFilter" value="%*?'\""
/>