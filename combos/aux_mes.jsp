<%@ page info='Combo Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="Combo" name="combo_aux_mes"
/><jsp:useBean
  id="combo_aux_mes" type="br.com.webinside.runtime.component.Combo"
/><jsp:setProperty
  name="combo_aux_mes" property="database" value="principal"
/><jsp:setProperty
  name="combo_aux_mes" property="description" value="Combo: aux_mes"
/><jsp:setProperty
  name="combo_aux_mes" property="key" value="|codigo|"
/><jsp:setProperty
  name="combo_aux_mes" property="sql" value="SELECT 
 aux_auxiliar.codigo, aux_auxiliar.descricao 
FROM aux_auxiliar
WHERE (aux_auxiliar.nome_coluna = 'ind_mes')"
/><jsp:setProperty
  name="combo_aux_mes" property="sqlFilter" value="%*?'\""
/><jsp:setProperty
  name="combo_aux_mes" property="text" value="|descricao|"
/>