<%@ page info='Combo Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="Combo" name="combo_aux_ano"
/><jsp:useBean
  id="combo_aux_ano" type="br.com.webinside.runtime.component.Combo"
/><jsp:setProperty
  name="combo_aux_ano" property="database" value="principal"
/><jsp:setProperty
  name="combo_aux_ano" property="description" value="Combo: aux_ano"
/><jsp:setProperty
  name="combo_aux_ano" property="key" value="|codigo|"
/><jsp:setProperty
  name="combo_aux_ano" property="sql" value="SELECT 
 aux_auxiliar.codigo, aux_auxiliar.descricao 
FROM aux_auxiliar
WHERE (aux_auxiliar.nome_coluna = 'ind_ano')"
/><jsp:setProperty
  name="combo_aux_ano" property="sqlFilter" value="%*?'\""
/><jsp:setProperty
  name="combo_aux_ano" property="text" value="|descricao|"
/>