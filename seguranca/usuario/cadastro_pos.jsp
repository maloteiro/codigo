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
  type="SetElement" name="setelement2"
/><jsp:useBean
  id="setelement2" type="br.com.webinside.runtime.component.SetElement"
/><jsp:setProperty
  name="setelement2" property="condition" value="true"
/><jsp:setProperty
  name="setelement2" property="description" value="Gravar tmp.assinatura"
/><jsp:setProperty
  name="setelement2" property="disableProduce" value="false"
/><jsp:setProperty
  name="setelement2" property="ifTrue" value="|$random(4,true)$|"
/><jsp:setProperty
  name="setelement2" property="WIObj" value="tmp.assinatura"
/><w:executeCore
  type="SetElement" name="setelement2"
/><w:setPageElement
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
  name="updateelement1" property="sql" value="INSERT INTO seg_usuario (
	seq_perfil, 
    dsc_usuario_nome, 
    dsc_usuario_email, 
    dsc_usuario_email2, 
    dsc_usuario_cpf, 
    num_usuario_telefone, 
    flg_usuario_status, 
    dsc_usuario_token, 
    dat_data_cadastro, 
    seq_usuario_cadastro,
    dsc_usuario_senha,
    dsc_usuario_assinatura
) VALUES (
	?|tmp.edt.seq_perfil|, 
    ?|tmp.edt.dsc_usuario_nome|, 
    ?|tmp.edt.dsc_usuario_email|, 
    ?|tmp.edt.dsc_usuario_email2|, 
    ?|tmp.edt.dsc_usuario_cpf|, 
    ?|tmp.edt.num_usuario_telefone|, 
    ?|$if(|tmp.edt.flg_usuario_status| != , 1, 0)$|,
    ?|wi.token|, 
    now(), 
    ?|pvt.login.seq_usuario|,
    md5('102030'),
    md5('|tmp.assinatura|')
)"
/><jsp:setProperty
  name="updateelement1" property="sqlFilter" value="'\"<>"
/><jsp:setProperty
  name="updateelement1" property="WIObj" value="tmp.message"
/><w:executeCore
  type="UpdateElement" name="updateelement1"
/><w:setPageElement
  type="MailSend" name="mailsend1"
/><jsp:useBean
  id="mailsend1" type="br.com.webinside.runtime.component.MailSend"
/><jsp:setProperty
  name="mailsend1" property="attachRemove" value="OFF"
/><jsp:setProperty
  name="mailsend1" property="condition" value="|tmp.id|= && |tmp.action|=save && |wi.token.ok|=true && |tmp.message|=Registro inserido com sucesso"
/><jsp:setProperty
  name="mailsend1" property="content" value="Olá,

Sua senha para o sistema CIT Comunica foi gerada com sucesso.

Por favor, troque a senha e não passe para ninguém.

Senha: 102030

Att,
CIT Comunica"
/><jsp:setProperty
  name="mailsend1" property="description" value="Enviar e-mail para |tmp.edt.dsc_usuario_email|"
/><jsp:setProperty
  name="mailsend1" property="eachOne" value="OFF"
/><jsp:setProperty
  name="mailsend1" property="from" value="citcomunica@ebserh.gov.br"
/><jsp:setProperty
  name="mailsend1" property="hostId" value="email"
/><jsp:setProperty
  name="mailsend1" property="mime" value="PLAIN"
/><jsp:setProperty
  name="mailsend1" property="notification" value="OFF"
/><jsp:setProperty
  name="mailsend1" property="sender" value="CIT Comunica"
/><jsp:setProperty
  name="mailsend1" property="subject" value="[CITComunica] Nova senha"
/><jsp:setProperty
  name="mailsend1" property="to" value="|tmp.edt.dsc_usuario_email|"
/><w:executeCore
  type="MailSend" name="mailsend1"
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
  name="updateelement2" property="sql" value="UPDATE seg_usuario
 SET 	seq_perfil = ?|tmp.edt.seq_perfil|, 
 		dsc_usuario_nome = ?|tmp.edt.dsc_usuario_nome|, 
     	dsc_usuario_email = ?|tmp.edt.dsc_usuario_email|, 
        dsc_usuario_email2 = ?|tmp.edt.dsc_usuario_email2|, 
    	dsc_usuario_cpf = ?|tmp.edt.dsc_usuario_cpf|, 
        num_usuario_telefone = ?|tmp.edt.num_usuario_telefone|, 
     	flg_usuario_status = ?|$if(|tmp.edt.flg_usuario_status| != , 1, 0)$|,         
     	dat_data_alteracao = now(), 
        seq_usuario_alteracao = ?|pvt.login.seq_usuario|
 WHERE (seg_usuario.seq_usuario = ?|tmp.id|)"
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
  name="objectelement1" property="sql" value="SELECT seg_usuario.seq_usuario AS key1
 FROM seg_usuario
 WHERE dsc_usuario_token = ?|wi.token|  
 ORDER BY seg_usuario.seq_usuario DESC"
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