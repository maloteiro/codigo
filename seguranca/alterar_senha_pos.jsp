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
  type="ObjectElement" name="objectelement1"
/><jsp:useBean
  id="objectelement1" type="br.com.webinside.runtime.component.ObjectElement"
/><jsp:setProperty
  name="objectelement1" property="condition" value="true"
/><jsp:setProperty
  name="objectelement1" property="database" value="principal"
/><jsp:setProperty
  name="objectelement1" property="description" value="Objeto tmp.em"
/><jsp:setProperty
  name="objectelement1" property="multiple" value="false"
/><jsp:setProperty
  name="objectelement1" property="sql" value="select count(0) qtd
from seg_usuario
where dsc_usuario_email='|tmp.user|'"
/><jsp:setProperty
  name="objectelement1" property="sqlFilter" value="%*?'"
/><jsp:setProperty
  name="objectelement1" property="usejson" value="false"
/><jsp:setProperty
  name="objectelement1" property="WIObj" value="tmp.em"
/><w:executeCore
  type="ObjectElement" name="objectelement1"
/><w:setPageElement
  type="SetElement" name="setelement1"
/><jsp:useBean
  id="setelement1" type="br.com.webinside.runtime.component.SetElement"
/><jsp:setProperty
  name="setelement1" property="condition" value="true"
/><jsp:setProperty
  name="setelement1" property="description" value="Gravar tmp.senha"
/><jsp:setProperty
  name="setelement1" property="disableProduce" value="false"
/><jsp:setProperty
  name="setelement1" property="ifTrue" value="|$random(8,false)$|"
/><jsp:setProperty
  name="setelement1" property="WIObj" value="tmp.senha"
/><w:executeCore
  type="SetElement" name="setelement1"
/><w:setPageElement
  type="UpdateElement" name="updateelement1"
/><jsp:useBean
  id="updateelement1" type="br.com.webinside.runtime.component.UpdateElement"
/><jsp:setProperty
  name="updateelement1" property="autoCommit" value="ON"
/><jsp:setProperty
  name="updateelement1" property="condition" value="|tmp.em.qtd|>0"
/><jsp:setProperty
  name="updateelement1" property="database" value="principal"
/><jsp:setProperty
  name="updateelement1" property="description" value="Update tmp.resp"
/><jsp:setProperty
  name="updateelement1" property="messageTrue" value="A senha foi enviada para o seu e-mail, por favor verifique."
/><jsp:setProperty
  name="updateelement1" property="noException" value="OFF"
/><jsp:setProperty
  name="updateelement1" property="sql" value="update seg_usuario
set dsc_usuario_senha=md5('|tmp.senha|')
where dsc_usuario_email='|tmp.user|'"
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
  name="mailsend1" property="condition" value="true"
/><jsp:setProperty
  name="mailsend1" property="content" value="Prezado(a),<br />
<br />
Recentemente, a senha de sua ID do sistema CIT Comunica foi alterada.<br />
Segue sua nova senha: <strong>|tmp.senha|</strong><br />
<br />
<br />
Att,"
/><jsp:setProperty
  name="mailsend1" property="description" value="Enviar e-mail para |tmp.user|"
/><jsp:setProperty
  name="mailsend1" property="eachOne" value="OFF"
/><jsp:setProperty
  name="mailsend1" property="from" value="citcomunica@ebserh.gov.br"
/><jsp:setProperty
  name="mailsend1" property="hostId" value="email"
/><jsp:setProperty
  name="mailsend1" property="mime" value="HTML"
/><jsp:setProperty
  name="mailsend1" property="notification" value="OFF"
/><jsp:setProperty
  name="mailsend1" property="sender" value="CIT Comunica"
/><jsp:setProperty
  name="mailsend1" property="subject" value="[CITComunica] Nova senha"
/><jsp:setProperty
  name="mailsend1" property="to" value="|tmp.user|"
/><w:executeCore
  type="MailSend" name="mailsend1"
/><w:setPageElement
  type="RedirConditional" name="redir1"
/><jsp:useBean
  id="redir1" type="br.com.webinside.runtime.component.RedirConditional"
/><jsp:setProperty
  name="redir1" property="condition" value="false"
/><jsp:setProperty
  name="redir1" property="description" value="Desviar para index.wsp"
/><jsp:setProperty
  name="redir1" property="go" value="index.wsp"
/><jsp:setProperty
  name="redir1" property="return" value="false"
/><w:executeCore
  type="Redir" name="redir1"
/><w:endPage/>