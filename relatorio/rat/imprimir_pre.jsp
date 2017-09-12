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
  type="ReportRef" name="report1"
/><jsp:useBean
  id="report1" type="br.com.webinside.runtime.component.ReportRef"
/><jsp:setProperty
  name="report1" property="condition" value="true"
/><jsp:setProperty
  name="report1" property="description" value="Report: rel_rat"
/><jsp:setProperty
  name="report1" property="id" value="rel_rat"
/><w:setPropertyByMethod
  name="report1" method="reportParameter" arg1="tmp.seq.rat" arg2="|tmp.seq_rat|"
/><w:executeCore
  type="Report" name="report1"
/><w:endPage/>