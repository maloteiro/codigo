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
  name="setelement1" property="condition" value="|tmp.dirName|== && false"
/><jsp:setProperty
  name="setelement1" property="description" value="Gravar tmp.dirName"
/><jsp:setProperty
  name="setelement1" property="disableProduce" value="false"
/><jsp:setProperty
  name="setelement1" property="ifTrue" value="/|wi.webapps.path|/temis_arquivos/"
/><jsp:setProperty
  name="setelement1" property="WIObj" value="tmp.dirName"
/><w:executeCore
  type="SetElement" name="setelement1"
/><w:setPageElement
  type="Connector" name="connector1"
/><jsp:useBean
  id="connector1" type="br.com.webinside.runtime.component.Connector"
/><jsp:setProperty
  name="connector1" property="className" value="br.com.webinside.modules.search.WIIndexer"
/><jsp:setProperty
  name="connector1" property="condition" value="true"
/><jsp:setProperty
  name="connector1" property="description" value="Conector Java br.com.webinside.modules.search.WIIndexer"
/><jsp:setProperty
  name="connector1" property="inPrePage" value="false"
/><wi:set
  var="tmp.dirName" test="true" value="/|wi.proj.path|/documentos" scope="wi" validation="true"
/><w:executeCore
  type="Connector" name="connector1"
/><w:endPage/>