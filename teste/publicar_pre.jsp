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
  type="Connector" name="connector1"
/><jsp:useBean
  id="connector1" type="br.com.webinside.runtime.component.Connector"
/><jsp:setProperty
  name="connector1" property="className" value="br.com.webinside.modules.search.WIPublisher"
/><jsp:setProperty
  name="connector1" property="condition" value="|tmp.publicar| = publicar && |wi.upl.ok| = true && |tmp.arquivo| !="
/><jsp:setProperty
  name="connector1" property="description" value="Conector Java br.com.webinside.modules.search.WIPublisher"
/><jsp:setProperty
  name="connector1" property="inPrePage" value="true"
/><wi:set
  var="tmp.indexName" test="|tmp.publicar| = publicar && |wi.upl.ok| = true && |tmp.arquivo| !=" value="documentos" scope="wi" validation="true"
/><wi:set
  var="tmp.publishingDir" test="|tmp.publicar| = publicar && |wi.upl.ok| = true && |tmp.arquivo| !=" value="/|wi.webapps.path|/temis_arquivos/" scope="wi" validation="true"
/><w:executeCore
  type="Connector" name="connector1"
/><w:endPage/>