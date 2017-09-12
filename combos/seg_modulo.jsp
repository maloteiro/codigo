<%@ page info='Combo Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="Combo" name="combo_seg_modulo"
/><jsp:useBean
  id="combo_seg_modulo" type="br.com.webinside.runtime.component.Combo"
/><jsp:setProperty
  name="combo_seg_modulo" property="database" value="principal"
/><jsp:setProperty
  name="combo_seg_modulo" property="description" value="Combo: seg_modulo"
/><jsp:setProperty
  name="combo_seg_modulo" property="key" value="|seq_modulo|"
/><jsp:setProperty
  name="combo_seg_modulo" property="sql" value="SELECT 
 seg_modulo.seq_modulo, seg_modulo.dsc_modulo_descricao, seg_modulo.flg_modulo_ativo,   
 seg_modulo.num_modulo_ordem 
FROM seg_modulo
WHERE (seg_modulo.flg_modulo_ativo = 'S')
ORDER BY seg_modulo.num_modulo_ordem ASC"
/><jsp:setProperty
  name="combo_seg_modulo" property="sqlFilter" value="%*?'\""
/><jsp:setProperty
  name="combo_seg_modulo" property="text" value="|dsc_modulo_descricao|"
/>