<%@ page info='Pre-Page Elements'
  language='java' session='true' 
%><%@ taglib
  prefix='c' uri='http://java.sun.com/jsp/jstl/core'
%><%@ taglib
  prefix='fmt' uri='http://java.sun.com/jsp/jstl/fmt'
%><%@ taglib
  prefix='tiles' uri='http://tiles.apache.org/tags-tiles'
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:initPage/><w:setPageElement
  type="ObjectElement" name="objectelement1"
/><jsp:useBean
  id="objectelement1" type="br.com.webinside.runtime.component.ObjectElement"
/><jsp:setProperty
  name="objectelement1" property="condition" value="true"
/><jsp:setProperty
  name="objectelement1" property="database" value="principal"
/><jsp:setProperty
  name="objectelement1" property="description" value="Objeto tmp.edt"
/><jsp:setProperty
  name="objectelement1" property="multiple" value="false"
/><jsp:setProperty
  name="objectelement1" property="sql" value="SELECT 	aux_escala.seq_servidor, 
		aux_escala.seq_responsavel, 
 		aux_escala.seq_janela, 
        aux_escala.tip_escala_evento, 
        aux_escala.txt_escala_observacoes, 
 		aux_escala.dat_data_cadastro, 
        aux_escala.seq_usuario_cadastro, 
        aux_escala.dat_data_alteracao, 
 		aux_escala.seq_usuario_alteracao, 
        aux_escala.cod_token_codigo 
FROM aux_escala
WHERE (aux_escala.seq_escala = ?|tmp.id|)"
/><jsp:setProperty
  name="objectelement1" property="sqlFilter" value="%*?'"
/><jsp:setProperty
  name="objectelement1" property="usejson" value="false"
/><jsp:setProperty
  name="objectelement1" property="WIObj" value="tmp.edt"
/><w:executeCore
  type="ObjectElement" name="objectelement1"
/><w:setPageElement
  type="ComboRef" name="combo1"
/><jsp:useBean
  id="combo1" type="br.com.webinside.runtime.component.ComboRef"
/><jsp:setProperty
  name="combo1" property="condition" value="true"
/><jsp:setProperty
  name="combo1" property="description" value="Combo: cad_responsavel"
/><jsp:setProperty
  name="combo1" property="id" value="cad_responsavel"
/><jsp:setProperty
  name="combo1" property="selected" value="|tmp.edt.seq_responsavel|"
/><w:executeCore
  type="Combo" name="combo1"
/><w:endPage/>