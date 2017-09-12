<%@ page info='Combo Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="Combo" name="combo_cad_estado_civil"
/><jsp:useBean
  id="combo_cad_estado_civil" type="br.com.webinside.runtime.component.Combo"
/><jsp:setProperty
  name="combo_cad_estado_civil" property="database" value="principal"
/><jsp:setProperty
  name="combo_cad_estado_civil" property="description" value="Combo: cad_estado_civil"
/><jsp:setProperty
  name="combo_cad_estado_civil" property="key" value="|codigo|"
/><jsp:setProperty
  name="combo_cad_estado_civil" property="sql" value="SELECT 
 aux_auxiliar.codigo,aux_auxiliar.descricao, aux_auxiliar.nome_coluna
FROM aux_auxiliar
WHERE (aux_auxiliar.nome_coluna = 'ind_estado_civil')"
/><jsp:setProperty
  name="combo_cad_estado_civil" property="sqlFilter" value="%*?'\""
/><jsp:setProperty
  name="combo_cad_estado_civil" property="text" value="|descricao|"
/>