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
%><w:initPage name="teste/pesquisa"><jsp:useBean
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
  name="wipage" property="title" value="Página teste/pesquisa"
/></w:initPage><HTML> 
<HEAD>
<TITLE>Formulário de Pesquisa</TITLE>
<META HTTP-EQUIV=PRAGMA CONTENT=NO-CACHE>
<META HTTP-EQUIV=EXPIRES CONTENT=0>
</HEAD>
<BODY BGCOLOR="#D5EEE2">
  <FORM ACTION="/<wi:out var="wi.proj.id"/>/<wi:out var="wi.page.id"/>.wsp" METHOD="post">
<INPUT TYPE="hidden" NAME="tmp.indexName" VALUE="modelo">
Expressão:<BR>
<INPUT TYPE="text" NAME="tmp.search.query" size='40' value="<wi:out var="tmp.search.query"/>">
<input type="checkbox" value="AND" name="tmp.search.queryOperator" 
  <wi:function expr="if(|tmp.search.queryOperator|=AND, checked,)"/> />
Com todas as palavras 
<br>
<INPUT TYPE="submit" NAME="tmp.procurar" VALUE="Procurar">
<INPUT TYPE="reset" VALUE="Limpar Campos">
</FORM>
<wi:function expr="if(|tmp.procurar|=Procurar,
<P STYLE=\"FONT: 8pt Verdana\\,Arial;\">|tmp.resposta|</P>
|grid.resultadoPesquisa|
|grid.resultadoPesquisa.link|
,)"/>

  <wi:out />
  
<wi:out var="wi.grid.form"/>
</BODY>
</HTML><w:endPage/>