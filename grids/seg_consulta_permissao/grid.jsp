<%@ page info='Grid Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="GridSql" name="grid_seg_consulta_permissao"
/><jsp:useBean
  id="grid_seg_consulta_permissao" type="br.com.webinside.runtime.component.GridSql"
/><jsp:setProperty
  name="grid_seg_consulta_permissao" property="colDisp" value="H"
/><jsp:setProperty
  name="grid_seg_consulta_permissao" property="database" value="principal"
/><jsp:setProperty
  name="grid_seg_consulta_permissao" property="description" value="Grid SQL: seg_consulta_permissao"
/><jsp:setProperty
  name="grid_seg_consulta_permissao" property="id" value="seg_consulta_permissao"
/><jsp:setProperty
  name="grid_seg_consulta_permissao" property="recursive" value="false"
/><jsp:setProperty
  name="grid_seg_consulta_permissao" property="sql" value="SELECT DISTINCT rot.*,
CASE IFNULL(per.seq_rotina,0) WHEN 0 THEN 0 ELSE 1 END checado
FROM seg_rotina rot
LEFT JOIN seg_permissao per ON rot.seq_rotina=per.seq_rotina
AND seq_perfil='|tmp.edt.seq_perfil|'
WHERE rot.seq_modulo='|tmp.edt.seq_modulo|'"
/><jsp:setProperty
  name="grid_seg_consulta_permissao" property="sqlFilter" value="%*?'\""
/>