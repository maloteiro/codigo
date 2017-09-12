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
%><w:initPage name="teste/upload/imagem"><jsp:useBean
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
  name="wipage" property="title" value="Página teste/upload/imagem"
/></w:initPage><!--
/*
 * WEBINSIDE - Ferramenta de produtividade Java
 * Copyright (c) 2011-2012 LINEWEB Soluções Tecnológicas Ltda.
 * Copyright (c) 2009-2010 Incógnita Inteligência Digital Ltda.
 *
 * Este programa é software livre; você pode redistribuí-lo e/ou modificá-lo 
 * sob os termos da GNU LESSER GENERAL PUBLIC LICENSE (LGPL) conforme publicada 
 * pela Free Software Foundation; versão 2.1 da Licença.
 * Este programa é distribuído na expectativa de que seja útil, porém, SEM 
 * NENHUMA GARANTIA; nem mesmo a garantia implícita de COMERCIABILIDADE OU 
 * ADEQUAÇÃO A UMA FINALIDADE ESPECÍFICA.
 * 
 * Consulte a GNU LGPL para mais detalhes.
 * Você deve ter recebido uma cópia da GNU LGPL junto com este programa; se não, 
 * veja em http://www.gnu.org/licenses/ 
 */
-->

<HTML>
<HEAD>
  <LINK REL="StyleSheet" TYPE="text/css" HREF="/<wi:out var="wi.proj.id"/>/css/page.css" />
  <SCRIPT TYPE="text/javascript" SRC="/<wi:out var="wi.proj.id"/>/js/jquery.js"></SCRIPT>
  <SCRIPT TYPE="text/javascript" SRC="/<wi:out var="wi.proj.id"/>/js/page.js"></SCRIPT>
  <META HTTP-EQUIV="pragma" CONTENT="no-cache" />
  <META HTTP-EQUIV="expires" CONTENT="0" />
  <META HTTP-EQUIV="cache-control" CONTENT="no-cache" />
  <TITLE><wi:out var="wi.page.title"/></TITLE>
<SCRIPT TYPE="text/javascript">
function init(){

}
</SCRIPT>
</HEAD>
<body onload="init()">
<table cellpadding='0' cellspacing='0' class='tabLine'><tr>
<td class="title">
<wi:out var="wi.page.title"/>
</td></tr></table>

<FORM NAME="Texto2" ACTION="/<wi:out var="wi.proj.id"/>/<wi:out var="wi.page.id"/>.wsp" ENCTYPE="multipart/form-data" METHOD="post" CLASS="frm" ><INPUT NAME="wi.page.prev" ID="wi.page.prev" VALUE="<wi:out var="wi.page.id"/>" TYPE="hidden" /><INPUT NAME="wi.token" ID="wi.token" VALUE="<wi:out var="wi.token"/>" TYPE="hidden" />
<table cellpadding="0" cellspacing="0"><tr>
<td></td>
</tr><tr>
<td><INPUT NAME="tmp.arquivo" ID="tmp.arquivo" VALUE="Texto5" TYPE="file" /></td></tr></table>

<table cellpadding="0" cellspacing="0"><tr>
<td>Caminho:</td>
</tr><tr>
<td><INPUT NAME="tmp.caminho" ID="tmp.caminho" VALUE="<wi:out var="tmp.caminho"/>" /></td></tr></table>

<button name="Texto7" type="submit">Texto7</button>
</FORM>
<wi:out var="wi.grid.form"/>
</body>
</html><w:endPage/>