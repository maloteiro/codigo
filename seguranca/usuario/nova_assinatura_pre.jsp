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
  type="SetElement" name="setelement1"
/><jsp:useBean
  id="setelement1" type="br.com.webinside.runtime.component.SetElement"
/><jsp:setProperty
  name="setelement1" property="condition" value="true"
/><jsp:setProperty
  name="setelement1" property="description" value="Gravar tmp.assinatura"
/><jsp:setProperty
  name="setelement1" property="disableProduce" value="false"
/><jsp:setProperty
  name="setelement1" property="ifTrue" value="|$random(4,true)$|"
/><jsp:setProperty
  name="setelement1" property="WIObj" value="tmp.assinatura"
/><w:executeCore
  type="SetElement" name="setelement1"
/><w:setPageElement
  type="UpdateElement" name="updateelement1"
/><jsp:useBean
  id="updateelement1" type="br.com.webinside.runtime.component.UpdateElement"
/><jsp:setProperty
  name="updateelement1" property="autoCommit" value="ON"
/><jsp:setProperty
  name="updateelement1" property="condition" value="true"
/><jsp:setProperty
  name="updateelement1" property="database" value="principal"
/><jsp:setProperty
  name="updateelement1" property="description" value="Update tmp.message"
/><jsp:setProperty
  name="updateelement1" property="messageTrue" value="Foi gerada uma nova assinatura. Por favor, verifique o seu e-mail."
/><jsp:setProperty
  name="updateelement1" property="noException" value="OFF"
/><jsp:setProperty
  name="updateelement1" property="sql" value="update seg_usuario
set dsc_usuario_assinatura=md5('|tmp.assinatura|')
where seq_usuario = '|pvt.login.seq_usuario|'"
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
  name="mailsend1" property="condition" value="|tmp.message|=Foi gerada uma nova assinatura. Por favor, verifique o seu e-mail."
/><jsp:setProperty
  name="mailsend1" property="content" value="Olá,

Sua assinatura para o sistema RAT foi gerada com sucesso.

Por favor, memorize essa assinatura e não passe para ninguém.

Assinatura: |tmp.assinatura|

Att,
RAT Online"
/><jsp:setProperty
  name="mailsend1" property="description" value="Enviar e-mail para |tmp.edt.dsc_usuario_email|"
/><jsp:setProperty
  name="mailsend1" property="eachOne" value="OFF"
/><jsp:setProperty
  name="mailsend1" property="from" value="senha@i9tecnologia.com"
/><jsp:setProperty
  name="mailsend1" property="hostId" value="email"
/><jsp:setProperty
  name="mailsend1" property="mime" value="PLAIN"
/><jsp:setProperty
  name="mailsend1" property="notification" value="OFF"
/><jsp:setProperty
  name="mailsend1" property="sender" value="senha@i9tecnologia.com"
/><jsp:setProperty
  name="mailsend1" property="subject" value="[RAT] Nova assinatura gerada"
/><jsp:setProperty
  name="mailsend1" property="to" value="|tmp.edt.dsc_usuario_email|"
/><w:executeCore
  type="MailSend" name="mailsend1"
/><w:setPageElement
  type="RedirConditional" name="redir1"
/><jsp:useBean
  id="redir1" type="br.com.webinside.runtime.component.RedirConditional"
/><jsp:setProperty
  name="redir1" property="condition" value="true"
/><jsp:setProperty
  name="redir1" property="description" value="Desviar para /admin/home.wsp"
/><jsp:setProperty
  name="redir1" property="go" value="/admin/home.wsp"
/><jsp:setProperty
  name="redir1" property="return" value="false"
/><w:executeCore
  type="Redir" name="redir1"
/><w:endPage/>