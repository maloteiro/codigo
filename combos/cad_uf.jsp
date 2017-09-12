<%@ page info='Combo Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="Combo" name="combo_cad_uf"
/><jsp:useBean
  id="combo_cad_uf" type="br.com.webinside.runtime.component.Combo"
/><jsp:setProperty
  name="combo_cad_uf" property="database" value="principal"
/><jsp:setProperty
  name="combo_cad_uf" property="description" value="Combo: cad_uf"
/><jsp:setProperty
  name="combo_cad_uf" property="key" value="|seq_uf|"
/><jsp:setProperty
  name="combo_cad_uf" property="sql" value="SELECT 
 aux_uf.seq_uf, aux_uf.dsc_uf_descricao, aux_uf.dsc_uf_sigla 
FROM aux_uf"
/><jsp:setProperty
  name="combo_cad_uf" property="sqlFilter" value="%*?'\""
/><jsp:setProperty
  name="combo_cad_uf" property="text" value="|dsc_uf_sigla| - |dsc_uf_descricao|"
/>