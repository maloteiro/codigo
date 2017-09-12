<%@ page info='Combo Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="Combo" name="combo_aux_sistema"
/><jsp:useBean
  id="combo_aux_sistema" type="br.com.webinside.runtime.component.Combo"
/><jsp:setProperty
  name="combo_aux_sistema" property="database" value="principal"
/><jsp:setProperty
  name="combo_aux_sistema" property="description" value="Combo: aux_sistema"
/><jsp:setProperty
  name="combo_aux_sistema" property="key" value="|seq_sistema|"
/><jsp:setProperty
  name="combo_aux_sistema" property="sql" value="SELECT 
 aux_sistema.seq_sistema, aux_sistema.dsc_sistema_descricao 
FROM aux_sistema
WHERE (aux_sistema.flg_sistema_ativo = 'S')"
/><jsp:setProperty
  name="combo_aux_sistema" property="sqlFilter" value="%*?'\""
/><jsp:setProperty
  name="combo_aux_sistema" property="text" value="|dsc_sistema_descricao|"
/>