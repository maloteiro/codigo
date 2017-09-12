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
  type="ObjectElement" name="objectelement1"
/><jsp:useBean
  id="objectelement1" type="br.com.webinside.runtime.component.ObjectElement"
/><jsp:setProperty
  name="objectelement1" property="condition" value="true"
/><jsp:setProperty
  name="objectelement1" property="database" value="principal"
/><jsp:setProperty
  name="objectelement1" property="description" value="Objeto tmp.grafico"
/><jsp:setProperty
  name="objectelement1" property="multiple" value="true"
/><jsp:setProperty
  name="objectelement1" property="sql" value="SELECT CASE IFNULL(flg_rat_situacao,'') 
		WHEN '' THEN 'Não Assinada'
        WHEN 'RA' THEN 'Não Assinada'
        WHEN 'AA' THEN 'Assinada Pelo Analista' 
        WHEN 'AG' THEN 'Assinada Pelo Gerente do Contrato' END Assinatura, 
       COUNT(0) Quantidade
FROM tbl_rat
WHERE MONTH(dat_data_cadastro) = MONTH(NOW())
AND YEAR(dat_data_cadastro) = YEAR(NOW())
group by flg_rat_situacao"
/><jsp:setProperty
  name="objectelement1" property="sqlFilter" value="%*?'"
/><jsp:setProperty
  name="objectelement1" property="usejson" value="false"
/><jsp:setProperty
  name="objectelement1" property="WIObj" value="tmp.grafico"
/><w:executeCore
  type="ObjectElement" name="objectelement1"
/><w:setPageElement
  type="Connector" name="connector1"
/><jsp:useBean
  id="connector1" type="br.com.webinside.runtime.component.Connector"
/><jsp:setProperty
  name="connector1" property="className" value="br.com.webinside.modules.chart.PieChart"
/><jsp:setProperty
  name="connector1" property="condition" value="true"
/><jsp:setProperty
  name="connector1" property="description" value="Gráfico em fatias"
/><jsp:setProperty
  name="connector1" property="inPrePage" value="true"
/><wi:set
  var="tmp.chart.draw3d" test="true" value="true" scope="wi" validation="true"
/><wi:set
  var="tmp.chart.plot.foregroundAlpha" test="true" value="0.8" scope="wi" validation="true"
/><wi:set
  var="tmp.chart.backgroundColor" test="true" value="#FFFFFF" scope="wi" validation="true"
/><wi:set
  var="tmp.chart.dataset.objectId" test="true" value="tmp.grafico" scope="wi" validation="true"
/><wi:set
  var="tmp.chart.pie.sectionLabelType" test="true" value="name_and_value" scope="wi" validation="true"
/><w:executeCore
  type="Connector" name="connector1"
/><w:endPage/>