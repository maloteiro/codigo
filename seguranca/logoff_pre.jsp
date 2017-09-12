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
  type="KillElement" name="killelement1"
/><jsp:useBean
  id="killelement1" type="br.com.webinside.runtime.component.KillElement"
/><jsp:setProperty
  name="killelement1" property="condition" value="true"
/><jsp:setProperty
  name="killelement1" property="description" value="Apagar pvt.login, pvt.parametro"
/><jsp:setProperty
  name="killelement1" property="WIObj" value="pvt.login, pvt.parametro"
/><w:executeCore
  type="KillElement" name="killelement1"
/><w:setPageElement
  type="RedirConditional" name="redir1"
/><jsp:useBean
  id="redir1" type="br.com.webinside.runtime.component.RedirConditional"
/><jsp:setProperty
  name="redir1" property="condition" value="true"
/><jsp:setProperty
  name="redir1" property="description" value="Desviar para admin/index.wsp"
/><jsp:setProperty
  name="redir1" property="go" value="admin/index.wsp"
/><jsp:setProperty
  name="redir1" property="return" value="false"
/><w:executeCore
  type="Redir" name="redir1"
/><w:endPage/>