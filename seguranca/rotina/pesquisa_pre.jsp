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
  type="GridRef" name="grid1"
/><jsp:useBean
  id="grid1" type="br.com.webinside.runtime.component.GridRef"
/><jsp:setProperty
  name="grid1" property="condition" value="true"
/><jsp:setProperty
  name="grid1" property="description" value="Grid: seg_consulta_rotina"
/><jsp:setProperty
  name="grid1" property="generateInPage" value="true"
/><jsp:setProperty
  name="grid1" property="id" value="seg_consulta_rotina"
/><jsp:setProperty
  name="grid1" property="returnEmpty" value="false"
/><jsp:setProperty
  name="grid1" property="type" value="SQLS"
/><w:executeCore
  type="Grid" name="grid1"
/><w:endPage/>