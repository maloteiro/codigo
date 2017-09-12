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
  type="ListElement" name="listelement1"
/><jsp:useBean
  id="listelement1" type="br.com.webinside.runtime.component.ListElement"
/><jsp:setProperty
  name="listelement1" property="condition" value="true"
/><jsp:setProperty
  name="listelement1" property="database" value="principal"
/><jsp:setProperty
  name="listelement1" property="description" value="Lista tmp.associado"
/><jsp:setProperty
  name="listelement1" property="sep" value=","
/><jsp:setProperty
  name="listelement1" property="sql" value="SELECT 
 rel_associado.seq_associado 
FROM rel_associado
where seq_usuario=?|pvt.login.seq_usuario|
"
/><jsp:setProperty
  name="listelement1" property="sqlFilter" value="%*?'\""
/><jsp:setProperty
  name="listelement1" property="WIObj" value="tmp.associado"
/><w:executeCore
  type="ListElement" name="listelement1"
/><w:setPageElement
  type="ReportRef" name="report1"
/><jsp:useBean
  id="report1" type="br.com.webinside.runtime.component.ReportRef"
/><jsp:setProperty
  name="report1" property="condition" value="true"
/><jsp:setProperty
  name="report1" property="description" value="Report: rel_multiplo"
/><jsp:setProperty
  name="report1" property="id" value="rel_multiplo"
/><w:setPropertyByMethod
  name="report1" method="reportParameter" arg1="tmp.associado" arg2="|tmp.associado.seq_associado|"
/><w:executeCore
  type="Report" name="report1"
/><w:endPage/>