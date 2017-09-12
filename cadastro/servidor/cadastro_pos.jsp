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
  name="updateelement1" property="sql" value="INSERT INTO tbl_servidor (
	 seq_sistema, 
     nom_servidor_nome, 
     dsc_servidor_funcao, 
     txt_servidor_descricao, 
     dsc_servidor_rede, 
     nom_servidor_nome_dns,
     num_servidor_disco, 
     txt_servidor_risco, 
     flg_servidor_impacto, 
     flg_servidor_urgencia, 
     flg_servidor_atuacao_noc, 
     txt_servidor_noc_procedimento,
     flg_servidor_ativo,
     dat_data_cadastro, 
     seq_usuario_cadastro, 
     cod_token_codigo,
     tip_servidor_tipo,
     flg_servidor_excluido
) VALUES (
	 ?|tmp.edt.seq_sistema|, 
     ?|tmp.edt.nom_servidor_nome|, 
     ?|tmp.edt.dsc_servidor_funcao|, 
     ?|tmp.edt.txt_servidor_descricao|, 
     ?|tmp.edt.dsc_servidor_rede|, 
     ?|tmp.edt.nom_servidor_nome_dns|, 
     ?|tmp.edt.num_servidor_disco|, 
     ?|tmp.edt.txt_servidor_risco|, 
     ?|tmp.edt.flg_servidor_impacto|, 
     ?|tmp.edt.flg_servidor_urgencia|, 
     ?|tmp.edt.flg_servidor_atuacao_noc|, 
     ?|tmp.edt.txt_servidor_noc_procedimento|,
     ?|tmp.edt.flg_servidor_ativo|,
     now(), 
     ?|pvt.login.seq_usuario|, 
     ?|wi.token|,
     ?|tmp.edt.tip_servidor_tipo|,
     'N'
)"
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
  name="updateelement2" property="sql" value="UPDATE tbl_servidor
 SET seq_sistema = ?|tmp.edt.seq_sistema|, 
 	 nom_servidor_nome = ?|tmp.edt.nom_servidor_nome|, 
     dsc_servidor_funcao = ?|tmp.edt.dsc_servidor_funcao|, 
     txt_servidor_descricao = ?|tmp.edt.txt_servidor_descricao|, 
     dsc_servidor_rede = ?|tmp.edt.dsc_servidor_rede|, 
     nom_servidor_nome_dns = ?|tmp.edt.nom_servidor_nome_dns|, 
     num_servidor_disco = ?|tmp.edt.num_servidor_disco|, 
     txt_servidor_risco = ?|tmp.edt.txt_servidor_risco|, 
     flg_servidor_impacto = ?|tmp.edt.flg_servidor_impacto|, 
     flg_servidor_urgencia = ?|tmp.edt.flg_servidor_urgencia|, 
     flg_servidor_atuacao_noc = ?|tmp.edt.flg_servidor_atuacao_noc|, 
     txt_servidor_noc_procedimento = ?|tmp.edt.txt_servidor_noc_procedimento|,
     flg_servidor_ativo=?|tmp.edt.flg_servidor_ativo|,
     dat_data_alteracao = now(), 
     seq_usuario_alteracao = ?|pvt.login.seq_usuario|,
     tip_servidor_tipo = ?|tmp.edt.tip_servidor_tipo|
 WHERE (tbl_servidor.seq_servidor = ?|tmp.id|)"
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
  name="objectelement1" property="sql" value="SELECT tbl_servidor.seq_servidor AS key1
 FROM tbl_servidor
 WHERE cod_token_codigo = ?|wi.token|
 ORDER BY tbl_servidor.seq_servidor DESC"
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
  name="updateelement4" property="description" value="Remover as redes"
/><jsp:setProperty
  name="updateelement4" property="messageTrue" value="Dados excluídos com sucesso."
/><jsp:setProperty
  name="updateelement4" property="noException" value="OFF"
/><jsp:setProperty
  name="updateelement4" property="sql" value="DELETE FROM aux_servidor_rede
 WHERE (seq_servidor = ?|tmp.id|)"
/><jsp:setProperty
  name="updateelement4" property="sqlFilter" value="'\"<>"
/><jsp:setProperty
  name="updateelement4" property="WIObj" value="tmp.resp_delete"
/><w:executeCore
  type="UpdateElement" name="updateelement4"
/><w:setPageElement
  type="UpdateElement" name="updateelement3"
/><jsp:useBean
  id="updateelement3" type="br.com.webinside.runtime.component.UpdateElement"
/><jsp:setProperty
  name="updateelement3" property="autoCommit" value="ON"
/><jsp:setProperty
  name="updateelement3" property="condition" value="|wi.token.ok|=true"
/><jsp:setProperty
  name="updateelement3" property="database" value="principal"
/><jsp:setProperty
  name="updateelement3" property="description" value="Adicionar as placas de rede"
/><jsp:setProperty
  name="updateelement3" property="messageTrue" value="Dados gravados com sucesso."
/><jsp:setProperty
  name="updateelement3" property="noException" value="OFF"
/><jsp:setProperty
  name="updateelement3" property="prefix" value="tmp.rede"
/><jsp:setProperty
  name="updateelement3" property="rowCondition" value="|tmp.rede.valor|!="
/><jsp:setProperty
  name="updateelement3" property="size" value="|tmp.qtd|"
/><jsp:setProperty
  name="updateelement3" property="sql" value="INSERT INTO aux_servidor_rede (
	seq_servidor, 
  	num_rede_ip
) VALUES (
	?|tmp.id|, 
  	?|tmp.rede.valor|
)"
/><jsp:setProperty
  name="updateelement3" property="sqlFilter" value="'\"<>"
/><jsp:setProperty
  name="updateelement3" property="WIObj" value="tmp.resp_update"
/><w:executeCore
  type="UpdateElement" name="updateelement3"
/><w:setPageElement
  type="UpdateElement" name="updateelement5"
/><jsp:useBean
  id="updateelement5" type="br.com.webinside.runtime.component.UpdateElement"
/><jsp:setProperty
  name="updateelement5" property="autoCommit" value="ON"
/><jsp:setProperty
  name="updateelement5" property="condition" value="|tmp.id|!= && |tmp.action|=delete && |wi.token.ok|=true"
/><jsp:setProperty
  name="updateelement5" property="database" value="principal"
/><jsp:setProperty
  name="updateelement5" property="description" value="Update tmp.resp"
/><jsp:setProperty
  name="updateelement5" property="messageTrue" value="Dados excluído com sucesso."
/><jsp:setProperty
  name="updateelement5" property="noException" value="OFF"
/><jsp:setProperty
  name="updateelement5" property="sql" value="update tbl_servidor
set flg_servidor_excluido='S'
where seq_servidor=?|tmp.id|"
/><jsp:setProperty
  name="updateelement5" property="sqlFilter" value="'\"<>"
/><jsp:setProperty
  name="updateelement5" property="WIObj" value="tmp.message"
/><w:executeCore
  type="UpdateElement" name="updateelement5"
/><w:endPage/>