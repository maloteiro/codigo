<%@ page info='Grid Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="GridSql" name="grid_seg_consulta_rotina"
/><jsp:useBean
  id="grid_seg_consulta_rotina" type="br.com.webinside.runtime.component.GridSql"
/><jsp:setProperty
  name="grid_seg_consulta_rotina" property="colDisp" value="H"
/><jsp:setProperty
  name="grid_seg_consulta_rotina" property="database" value="principal"
/><jsp:setProperty
  name="grid_seg_consulta_rotina" property="description" value="Grid SQL: seg_consulta_rotina"
/><jsp:setProperty
  name="grid_seg_consulta_rotina" property="id" value="seg_consulta_rotina"
/><jsp:setProperty
  name="grid_seg_consulta_rotina" property="recursive" value="false"
/><jsp:setProperty
  name="grid_seg_consulta_rotina" property="sql" value="SELECT r.seq_rotina,
m.dsc_modulo_descricao,
r.dsc_rotina_pagina,
r.dsc_rotina_descricao,
r.flg_rotina_ativa
FROM seg_rotina r
inner join seg_modulo m on r.seq_modulo=m.seq_modulo
where dsc_rotina_descricao like '%|tmp.argumento_pesquisa|%'
or dsc_rotina_pagina like '%|tmp.argumento_pesquisa|%'"
/><jsp:setProperty
  name="grid_seg_consulta_rotina" property="sqlFilter" value="%*?'\""
/>