<%@ page info='Grid Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="GridSql" name="grid_seg_rotina"
/><jsp:useBean
  id="grid_seg_rotina" type="br.com.webinside.runtime.component.GridSql"
/><jsp:setProperty
  name="grid_seg_rotina" property="colDisp" value="H"
/><jsp:setProperty
  name="grid_seg_rotina" property="database" value="principal"
/><jsp:setProperty
  name="grid_seg_rotina" property="description" value="Grid SQL: seg_rotina"
/><jsp:setProperty
  name="grid_seg_rotina" property="id" value="seg_rotina"
/><jsp:setProperty
  name="grid_seg_rotina" property="recursive" value="false"
/><jsp:setProperty
  name="grid_seg_rotina" property="sql" value="SELECT DISTINCT rot.* 
FROM seg_permissao per
INNER JOIN seg_rotina rot ON per.seq_rotina=rot.seq_rotina
INNER JOIN seg_modulo mo ON rot.seq_modulo=mo.seq_modulo
WHERE mo.seq_modulo='|seq_modulo|'
AND per.seq_perfil='|pvt.login.seq_perfil|'
AND rot.flg_rotina_ativa='S'
ORDER BY rot.num_rotina_ordem;"
/><jsp:setProperty
  name="grid_seg_rotina" property="sqlFilter" value="%*?'\""
/>