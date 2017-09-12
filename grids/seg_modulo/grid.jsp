<%@ page info='Grid Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="GridSql" name="grid_seg_modulo"
/><jsp:useBean
  id="grid_seg_modulo" type="br.com.webinside.runtime.component.GridSql"
/><jsp:setProperty
  name="grid_seg_modulo" property="colDisp" value="H"
/><jsp:setProperty
  name="grid_seg_modulo" property="database" value="principal"
/><jsp:setProperty
  name="grid_seg_modulo" property="description" value="Grid SQL: seg_modulo"
/><jsp:setProperty
  name="grid_seg_modulo" property="id" value="seg_modulo"
/><jsp:setProperty
  name="grid_seg_modulo" property="recursive" value="false"
/><jsp:setProperty
  name="grid_seg_modulo" property="sql" value="SELECT DISTINCT mo.*, (select count(0) from seg_rotina r where r.seq_modulo=mo.seq_modulo) filhos
FROM seg_permissao per
INNER JOIN seg_rotina rot ON per.seq_rotina=rot.seq_rotina
INNER JOIN seg_modulo mo ON rot.seq_modulo=mo.seq_modulo
WHERE mo.flg_modulo_ativo='S'
AND per.seq_perfil='|pvt.login.seq_perfil|'
ORDER BY mo.num_modulo_ordem;"
/><jsp:setProperty
  name="grid_seg_modulo" property="sqlFilter" value="%*?'\""
/>