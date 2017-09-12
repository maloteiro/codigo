<%@ page info='Pos-Page Elements'
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
  type="UpdateElement" name="updateelement1"
/><jsp:useBean
  id="updateelement1" type="br.com.webinside.runtime.component.UpdateElement"
/><jsp:setProperty
  name="updateelement1" property="autoCommit" value="OFF"
/><jsp:setProperty
  name="updateelement1" property="condition" value="|tmp.id|= && |tmp.action|=save && |wi.token.ok|=true"
/><jsp:setProperty
  name="updateelement1" property="database" value="principal"
/><jsp:setProperty
  name="updateelement1" property="description" value="Insert do objeto tmp.edt"
/><jsp:setProperty
  name="updateelement1" property="messageTrue" value="Registro inserido com sucesso"
/><jsp:setProperty
  name="updateelement1" property="noException" value="OFF"
/><jsp:setProperty
  name="updateelement1" property="noMessage" value="|wi.sql.msg|"
/><jsp:setProperty
  name="updateelement1" property="sql" value="INSERT INTO aux_janela_acionamento (
		dsc_janela_descricao, 
        flg_janela_ativa, 
        dat_data_cadastro, 
        seq_usuario_cadastro,
        cod_token_codigo
) VALUES (
		?|tmp.edt.dsc_janela_descricao|, 
        ?|tmp.edt.flg_janela_ativa|, 
        now(), 
     	?|pvt.login.seq_usuario|, 
     	?|wi.token|
)"
/><jsp:setProperty
  name="updateelement1" property="sqlFilter" value="'\"<>"
/><jsp:setProperty
  name="updateelement1" property="WIObj" value="tmp.message"
/><w:executeCore
  type="UpdateElement" name="updateelement1"
/><w:setPageElement
  type="UpdateElement" name="updateelement2"
/><jsp:useBean
  id="updateelement2" type="br.com.webinside.runtime.component.UpdateElement"
/><jsp:setProperty
  name="updateelement2" property="autoCommit" value="OFF"
/><jsp:setProperty
  name="updateelement2" property="condition" value="|tmp.id|!= && |tmp.action|=save && |wi.token.ok|=true"
/><jsp:setProperty
  name="updateelement2" property="database" value="principal"
/><jsp:setProperty
  name="updateelement2" property="description" value="Update do objeto tmp.edt"
/><jsp:setProperty
  name="updateelement2" property="messageTrue" value="Registro alterado com sucesso"
/><jsp:setProperty
  name="updateelement2" property="noException" value="OFF"
/><jsp:setProperty
  name="updateelement2" property="noMessage" value="|wi.sql.msg|"
/><jsp:setProperty
  name="updateelement2" property="sql" value="UPDATE aux_janela_acionamento
 SET 	dsc_janela_descricao = ?|tmp.edt.dsc_janela_descricao|, 
 		flg_janela_ativa = ?|tmp.edt.flg_janela_ativa|,
        dat_data_alteracao = now(), 
        seq_usuario_alteracao = ?|pvt.login.seq_usuario|
 WHERE (seq_janela = ?|tmp.id|)"
/><jsp:setProperty
  name="updateelement2" property="sqlFilter" value="'\"<>"
/><jsp:setProperty
  name="updateelement2" property="WIObj" value="tmp.message"
/><w:executeCore
  type="UpdateElement" name="updateelement2"
/><w:setPageElement
  type="ObjectElement" name="objectelement1"
/><jsp:useBean
  id="objectelement1" type="br.com.webinside.runtime.component.ObjectElement"
/><jsp:setProperty
  name="objectelement1" property="condition" value="|tmp.id|= && |tmp.action|=save && |wi.token.ok|=true"
/><jsp:setProperty
  name="objectelement1" property="database" value="principal"
/><jsp:setProperty
  name="objectelement1" property="description" value="Localiza chaves do registro recém-inserido"
/><jsp:setProperty
  name="objectelement1" property="multiple" value="false"
/><jsp:setProperty
  name="objectelement1" property="sql" value="SELECT aux_janela_acionamento.seq_janela AS key1
 FROM aux_janela_acionamento
 WHERE cod_token_codigo = ?|wi.token|
 ORDER BY aux_janela_acionamento.seq_janela DESC"
/><jsp:setProperty
  name="objectelement1" property="sqlFilter" value="%*?'\""
/><jsp:setProperty
  name="objectelement1" property="usejson" value="false"
/><jsp:setProperty
  name="objectelement1" property="WIObj" value="tmp.wi"
/><w:executeCore
  type="ObjectElement" name="objectelement1"
/><w:setPageElement
  type="SetElement" name="setelement1"
/><jsp:useBean
  id="setelement1" type="br.com.webinside.runtime.component.SetElement"
/><jsp:setProperty
  name="setelement1" property="condition" value="|tmp.id|= && |tmp.action|=save && |wi.token.ok|=true"
/><jsp:setProperty
  name="setelement1" property="description" value="Grava chaves em variáveis"
/><jsp:setProperty
  name="setelement1" property="disableProduce" value="false"
/><jsp:setProperty
  name="setelement1" property="ifTrue" value="|tmp.wi.key1|"
/><jsp:setProperty
  name="setelement1" property="WIObj" value="tmp.id"
/><w:executeCore
  type="SetElement" name="setelement1"
/><w:endPage/>