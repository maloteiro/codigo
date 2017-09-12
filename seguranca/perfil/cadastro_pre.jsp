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
  name="objectelement1" property="sql" value="SELECT 
 	seg_perfil.seq_perfil, 
	seg_perfil.dsc_perfil_nome, 
    seg_perfil.sig_perfil_sigla, 
 	seg_perfil.flg_perfil_status, 
    seg_perfil.dat_data_cadastro, 
    seg_perfil.seq_usuario_cadastro, 
 	seg_perfil.dat_data_alteracao, 
    seg_perfil.seq_usuario_alteracao, 
    seg_perfil.cod_token_codigo 
FROM seg_perfil
WHERE (seg_perfil.seq_perfil = ?|tmp.id|)"
/><jsp:setProperty
  name="objectelement1" property="sqlFilter" value="%*?'"
/><jsp:setProperty
  name="objectelement1" property="usejson" value="false"
/><jsp:setProperty
  name="objectelement1" property="WIObj" value="tmp.edt"
/><w:executeCore
  type="ObjectElement" name="objectelement1"
/><w:endPage/>