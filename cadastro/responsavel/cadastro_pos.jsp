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
  name="updateelement1" property="sql" value="INSERT INTO tbl_responsavel (
	nom_responsavel_nome, 
    dsc_responsavel_email, 
    num_responsavel_fixo1, 
    num_responsavel_fixo2, 
    num_responsavel_celular1, 
    num_responsavel_celular2, 
    num_responsavel_celular3,
    num_responsavel_0800,
    flg_responsavel_ativo, 
    dat_data_cadastro, 
    seq_usuario_cadastro, 
    cod_token_codigo,
    flg_responsavel_excluido
) VALUES (
	?|tmp.edt.nom_responsavel_nome|, 
    ?|tmp.edt.dsc_responsavel_email|, 
    ?|tmp.edt.num_responsavel_fixo1|, 
    ?|tmp.edt.num_responsavel_fixo2|, 
    ?|tmp.edt.num_responsavel_celular1|, 
    ?|tmp.edt.num_responsavel_celular2|, 
    ?|tmp.edt.num_responsavel_celular3|, 
    ?|tmp.edt.num_responsavel_0800|,
    ?|tmp.edt.flg_responsavel_ativo|, 
    now(), 
    ?|pvt.login.seq_usuario|,  
    ?|wi.token|,
    'N'
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
  name="updateelement2" property="sql" value="UPDATE tbl_responsavel
 SET nom_responsavel_nome = ?|tmp.edt.nom_responsavel_nome|, 
     dsc_responsavel_email = ?|tmp.edt.dsc_responsavel_email|, 
     num_responsavel_fixo1 = ?|tmp.edt.num_responsavel_fixo1|, 
     num_responsavel_fixo2 = ?|tmp.edt.num_responsavel_fixo2|, 
     num_responsavel_celular1 = ?|tmp.edt.num_responsavel_celular1|, 
     num_responsavel_celular2 = ?|tmp.edt.num_responsavel_celular2|, 
     num_responsavel_celular3 = ?|tmp.edt.num_responsavel_celular3|,     
     num_responsavel_0800 = ?|tmp.edt.num_responsavel_0800|,
     flg_responsavel_ativo = ?|tmp.edt.flg_responsavel_ativo|, 
     dat_data_alteracao = now(), 
     seq_usuario_alteracao = ?|pvt.login.seq_usuario|
 WHERE (tbl_responsavel.seq_responsavel = ?|tmp.id|)"
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
  name="objectelement1" property="sql" value="SELECT tbl_responsavel.seq_responsavel AS key1
 FROM tbl_responsavel
 WHERE cod_token_codigo = ?|wi.token|
 ORDER BY tbl_responsavel.seq_responsavel DESC"
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
/><w:setPageElement
  type="UpdateElement" name="updateelement4"
/><jsp:useBean
  id="updateelement4" type="br.com.webinside.runtime.component.UpdateElement"
/><jsp:setProperty
  name="updateelement4" property="autoCommit" value="ON"
/><jsp:setProperty
  name="updateelement4" property="condition" value="|wi.token.ok|=true"
/><jsp:setProperty
  name="updateelement4" property="database" value="principal"
/><jsp:setProperty
  name="updateelement4" property="description" value="Remover as telefones"
/><jsp:setProperty
  name="updateelement4" property="messageTrue" value="Dados excluídos com sucesso."
/><jsp:setProperty
  name="updateelement4" property="noException" value="OFF"
/><jsp:setProperty
  name="updateelement4" property="sql" value="DELETE FROM aux_responsavel_telefone
 WHERE (seq_responsavel = ?|tmp.id|)"
/><jsp:setProperty
  name="updateelement4" property="sqlFilter" value="'\"<>"
/><jsp:setProperty
  name="updateelement4" property="WIObj" value="tmp.resp_delete"
/><w:executeCore
  type="UpdateElement" name="updateelement4"
/><w:setPageElement
  type="UpdateElement" name="updateelement5"
/><jsp:useBean
  id="updateelement5" type="br.com.webinside.runtime.component.UpdateElement"
/><jsp:setProperty
  name="updateelement5" property="autoCommit" value="ON"
/><jsp:setProperty
  name="updateelement5" property="condition" value="|wi.token.ok|=true"
/><jsp:setProperty
  name="updateelement5" property="database" value="principal"
/><jsp:setProperty
  name="updateelement5" property="description" value="Adicionar as placas de rede"
/><jsp:setProperty
  name="updateelement5" property="messageTrue" value="Dados gravados com sucesso."
/><jsp:setProperty
  name="updateelement5" property="noException" value="OFF"
/><jsp:setProperty
  name="updateelement5" property="prefix" value="tmp.telefone"
/><jsp:setProperty
  name="updateelement5" property="rowCondition" value="|tmp.telefone.tip_telefone_tipo|!="
/><jsp:setProperty
  name="updateelement5" property="size" value="|tmp.qtd|"
/><jsp:setProperty
  name="updateelement5" property="sql" value="INSERT INTO aux_responsavel_telefone (
	seq_responsavel, 
  	num_telefone_numero,
    tip_telefone_tipo
) VALUES (
	?|tmp.id|, 
  	?|tmp.telefone.valor|,
    ?|tmp.telefone.tip_telefone_tipo|
)"
/><jsp:setProperty
  name="updateelement5" property="sqlFilter" value="'\"<>"
/><jsp:setProperty
  name="updateelement5" property="WIObj" value="tmp.resp_update"
/><w:executeCore
  type="UpdateElement" name="updateelement5"
/><w:setPageElement
  type="UpdateElement" name="updateelement3"
/><jsp:useBean
  id="updateelement3" type="br.com.webinside.runtime.component.UpdateElement"
/><jsp:setProperty
  name="updateelement3" property="autoCommit" value="ON"
/><jsp:setProperty
  name="updateelement3" property="condition" value="|tmp.id|!= && |tmp.action|=delete && |wi.token.ok|=true"
/><jsp:setProperty
  name="updateelement3" property="database" value="principal"
/><jsp:setProperty
  name="updateelement3" property="description" value="Update tmp.resp"
/><jsp:setProperty
  name="updateelement3" property="messageTrue" value="Dados excluído com sucesso."
/><jsp:setProperty
  name="updateelement3" property="noException" value="OFF"
/><jsp:setProperty
  name="updateelement3" property="sql" value="update tbl_responsavel
set flg_responsavel_excluido='S'
where seq_responsavel=?|tmp.id|"
/><jsp:setProperty
  name="updateelement3" property="sqlFilter" value="'\"<>"
/><jsp:setProperty
  name="updateelement3" property="WIObj" value="tmp.message"
/><w:executeCore
  type="UpdateElement" name="updateelement3"
/><w:setPageElement
  type="SetElement" name="setelement2"
/><jsp:useBean
  id="setelement2" type="br.com.webinside.runtime.component.SetElement"
/><jsp:setProperty
  name="setelement2" property="condition" value="|tmp.id|!= && |tmp.action|=delete && |wi.token.ok|=true"
/><jsp:setProperty
  name="setelement2" property="description" value="Gravar tmp.id"
/><jsp:setProperty
  name="setelement2" property="disableProduce" value="false"
/><jsp:setProperty
  name="setelement2" property="WIObj" value="tmp.id"
/><w:executeCore
  type="SetElement" name="setelement2"
/><w:endPage/>