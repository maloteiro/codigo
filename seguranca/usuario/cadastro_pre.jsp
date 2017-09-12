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
 	seg_usuario.seq_usuario,     
    seg_usuario.seq_perfil,  	
    seg_usuario.dsc_usuario_nome, 
    seg_usuario.dsc_usuario_email, 
 	seg_usuario.dsc_usuario_email2, 
    seg_usuario.num_usuario_telefone, 
    seg_usuario.dsc_usuario_cpf, 
 	seg_usuario.flg_usuario_status, 
    seg_usuario.dsc_usuario_token, 
    seg_usuario.dat_data_cadastro, 
 	seg_usuario.seq_usuario_cadastro, 
    seg_usuario.dat_data_alteracao, 
    seg_usuario.seq_usuario_alteracao 
FROM seg_usuario
WHERE (seg_usuario.seq_usuario = ?|tmp.id|)"
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
  name="combo1" property="description" value="Combo: seg_perfil"
/><jsp:setProperty
  name="combo1" property="id" value="seg_perfil"
/><jsp:setProperty
  name="combo1" property="selected" value="|tmp.edt.seq_perfil|"
/><w:executeCore
  type="Combo" name="combo1"
/><w:endPage/>