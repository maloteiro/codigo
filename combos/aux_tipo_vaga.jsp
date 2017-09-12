<%@ page info='Combo Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="Combo" name="combo_aux_tipo_vaga"
/><jsp:useBean
  id="combo_aux_tipo_vaga" type="br.com.webinside.runtime.component.Combo"
/><jsp:setProperty
  name="combo_aux_tipo_vaga" property="database" value="principal"
/><jsp:setProperty
  name="combo_aux_tipo_vaga" property="description" value="Combo: aux_tipo_vaga"
/><jsp:setProperty
  name="combo_aux_tipo_vaga" property="key" value="|codigo|"
/><jsp:setProperty
  name="combo_aux_tipo_vaga" property="sql" value="SELECT 
 aux_auxiliar.codigo,aux_auxiliar.descricao, aux_auxiliar.nome_coluna
FROM aux_auxiliar
WHERE (aux_auxiliar.nome_coluna = 'ind_tipo_vaga')"
/><jsp:setProperty
  name="combo_aux_tipo_vaga" property="sqlFilter" value="%*?'\""
/><jsp:setProperty
  name="combo_aux_tipo_vaga" property="text" value="|descricao|"
/>