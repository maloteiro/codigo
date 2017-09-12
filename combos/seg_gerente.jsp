<%@ page info='Combo Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="Combo" name="combo_seg_gerente"
/><jsp:useBean
  id="combo_seg_gerente" type="br.com.webinside.runtime.component.Combo"
/><jsp:setProperty
  name="combo_seg_gerente" property="database" value="principal"
/><jsp:setProperty
  name="combo_seg_gerente" property="description" value="Combo: seg_gerente"
/><jsp:setProperty
  name="combo_seg_gerente" property="key" value="|seq_usuario|"
/><jsp:setProperty
  name="combo_seg_gerente" property="sql" value="select seq_usuario, dsc_usuario_nome
from seg_usuario
where seq_perfil='4' and
 flg_usuario_status='1'"
/><jsp:setProperty
  name="combo_seg_gerente" property="sqlFilter" value="%*?'\""
/><jsp:setProperty
  name="combo_seg_gerente" property="text" value="|dsc_usuario_nome|"
/>