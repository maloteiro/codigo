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
  type="MailSend" name="mailsend1"
/><jsp:useBean
  id="mailsend1" type="br.com.webinside.runtime.component.MailSend"
/><jsp:setProperty
  name="mailsend1" property="attachRemove" value="OFF"
/><jsp:setProperty
  name="mailsend1" property="condition" value="true"
/><jsp:setProperty
  name="mailsend1" property="content" value="Envio de E-mail através da aplicação. "
/><jsp:setProperty
  name="mailsend1" property="description" value="Enviar e-mail para charlles.sousa@centralit.com.br"
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
  name="mailsend1" property="sender" value="citcomunica@ebserh.gov.br"
/><jsp:setProperty
  name="mailsend1" property="subject" value="[CIT Comunica] Envio de Teste "
/><jsp:setProperty
  name="mailsend1" property="to" value="charlles.sousa@centralit.com.br"
/><w:executeCore
  type="MailSend" name="mailsend1"
/><w:endPage/>