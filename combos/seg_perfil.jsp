<%@ page info='Combo Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="Combo" name="combo_seg_perfil"
/><jsp:useBean
  id="combo_seg_perfil" type="br.com.webinside.runtime.component.Combo"
/><jsp:setProperty
  name="combo_seg_perfil" property="database" value="principal"
/><jsp:setProperty
  name="combo_seg_perfil" property="description" value="Combo: seg_perfil"
/><jsp:setProperty
  name="combo_seg_perfil" property="key" value="|seq_perfil|"
/><jsp:setProperty
  name="combo_seg_perfil" property="sql" value="SELECT 
 seg_perfil.seq_perfil, seg_perfil.dsc_perfil_nome, seg_perfil.flg_perfil_status 
FROM seg_perfil
WHERE (seg_perfil.flg_perfil_status = 1)"
/><jsp:setProperty
  name="combo_seg_perfil" property="sqlFilter" value="%*?'\""
/><jsp:setProperty
  name="combo_seg_perfil" property="text" value="|dsc_perfil_nome|"
/>