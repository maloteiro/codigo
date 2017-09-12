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
  name="setelement1" property="ifTrue" value="|senha|"
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
  name="updateelement1" property="condition" value="true"
/><jsp:setProperty
  name="updateelement1" property="database" value="principal"
/><jsp:setProperty
  name="updateelement1" property="description" value="Update tmp.message"
/><jsp:setProperty
  name="updateelement1" property="messageTrue" value="Senha alterada com sucesso."
/><jsp:setProperty
  name="updateelement1" property="noException" value="OFF"
/><jsp:setProperty
  name="updateelement1" property="sql" value="update seg_usuario
set dsc_usuario_senha=md5('|tmp.senha|')
where seq_usuario='|pvt.login.seq_usuario|'"
/><jsp:setProperty
  name="updateelement1" property="sqlFilter" value="'\"<>"
/><jsp:setProperty
  name="updateelement1" property="WIObj" value="tmp.message"
/><w:executeCore
  type="UpdateElement" name="updateelement1"
/><w:setPageElement
  type="KillElement" name="killelement1"
/><jsp:useBean
  id="killelement1" type="br.com.webinside.runtime.component.KillElement"
/><jsp:setProperty
  name="killelement1" property="condition" value="true"
/><jsp:setProperty
  name="killelement1" property="description" value="Apagar senha"
/><jsp:setProperty
  name="killelement1" property="WIObj" value="senha"
/><w:executeCore
  type="KillElement" name="killelement1"
/><w:endPage/>