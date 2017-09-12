<%@ page info='Page'
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
%><w:initPage name="grafico/rat/fatia"><jsp:useBean
  id="wipage" type="br.com.webinside.runtime.component.Page"
/><jsp:setProperty
  name="wipage" property="browserCache" value="OFF"
/><jsp:setProperty
  name="wipage" property="checkPosToken" value="false"
/><jsp:setProperty
  name="wipage" property="errorPage" value="false"
/><jsp:setProperty
  name="wipage" property="mime" value="html"
/><jsp:setProperty
  name="wipage" property="noLogin" value="ON"
/><jsp:setProperty
  name="wipage" property="rerender" value="OFF"
/><jsp:setProperty
  name="wipage" property="security" value="OFF"
/><jsp:setProperty
  name="wipage" property="syncPos" value="false"
/><jsp:setProperty
  name="wipage" property="syncPre" value="false"
/><jsp:setProperty
  name="wipage" property="sysPage" value="OFF"
/><jsp:setProperty
  name="wipage" property="title" value="Gráfico de Situação das RATs"
/></w:initPage><!DOCTYPE html>
<html>
<head>
<title>Gráfico de Situação das RATs</title>
<meta http-equiv='pragma' content='no-cache'>
<meta http-equiv='expires' content='0'>
<link type='text/css' rel='stylesheet' href='/<wi:out var="wi.proj.id"/>/css/page.css'/>
<script type='text/javascript' src='/<wi:out var="wi.proj.id"/>/js/page.js'>//</script>
<script type='text/javascript' src='/<wi:out var="wi.proj.id"/>/<wi:out var="wi.page.id"/>.js'>//</script>
</head>
<body>
<h3>
<p>PROJETO: RAT Online</p>
<p>PÁGINA: Gráfico de Situação das RATs</p>
</h3>
<wi:out var="wi.grid.form"/>
</body>
</html><w:endPage/>