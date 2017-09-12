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
  type="JavaGrid" name="javagrid1"
/><jsp:useBean
  id="javagrid1" type="br.com.webinside.runtime.component.JavaGrid"
/><jsp:setProperty
  name="javagrid1" property="className" value="br.com.webinside.modules.search.SearchGrid"
/><jsp:setProperty
  name="javagrid1" property="condition" value="true"
/><jsp:setProperty
  name="javagrid1" property="description" value="Grid Java: resultadoPesquisa"
/><jsp:setProperty
  name="javagrid1" property="gridId" value="resultadoPesquisa"
/><wi:set
  var="tmp.indexName" test="true" value="documentos" scope="wi" validation="true"
/><w:executeCore
  type="JavaGrid" name="javagrid1"
/><w:endPage/>