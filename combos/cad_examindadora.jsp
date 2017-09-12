<%@ page info='Combo Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="Combo" name="combo_cad_examindadora"
/><jsp:useBean
  id="combo_cad_examindadora" type="br.com.webinside.runtime.component.Combo"
/><jsp:setProperty
  name="combo_cad_examindadora" property="database" value="principal"
/><jsp:setProperty
  name="combo_cad_examindadora" property="description" value="Combo: cad_examindadora"
/><jsp:setProperty
  name="combo_cad_examindadora" property="key" value="|seq_examinadora|"
/><jsp:setProperty
  name="combo_cad_examindadora" property="sql" value="SELECT 
 tbl_examinadora.seq_examinadora, tbl_examinadora.dsc_examinadora_descricao 
FROM tbl_examinadora
WHERE (tbl_examinadora.flg_examinadora_ativa = 'S')
ORDER BY tbl_examinadora.dsc_examinadora_descricao"
/><jsp:setProperty
  name="combo_cad_examindadora" property="sqlFilter" value="%*?'\""
/><jsp:setProperty
  name="combo_cad_examindadora" property="text" value="|dsc_examinadora_descricao|"
/>