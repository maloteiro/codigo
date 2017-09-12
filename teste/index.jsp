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
%><w:initPage name="teste/index"><jsp:useBean
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
  name="wipage" property="title" value="Página teste/index"
/></w:initPage><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>Indexador</TITLE>
<SCRIPT>
function reindexar() {
  with (document.forms[0]) {
    elements["tmp.acao"].value="update";
    submit();
  }
}
</SCRIPT>
</HEAD>
<BODY> 
  
  <FORM NAME="tmp.edt" ACTION="/<wi:out var="wi.proj.id"/>/<wi:out var="wi.page.id"/>.wsp" METHOD="post" CLASS="frm"   id="formulario">
    <INPUT NAME="wi.page.prev" ID="wi.page.prev" VALUE="<wi:out var="wi.page.id"/>" TYPE="hidden" />
    <INPUT NAME="wi.token" ID="wi.token" VALUE="<wi:out var="wi.token"/>" TYPE="hidden" />
	<INPUT TYPE="hidden" NAME="tmp.acao" VALUE="create">
	<INPUT TYPE="hidden" NAME="tmp.storeContent" VALUE="">
	<TABLE BORDER="1" CELLSPACING="0" CELLPADDING="2">
		<TR>
			<TD>Nome do índice: <INPUT TYPE="text" NAME="tmp.indexName" VALUE="<wi:out var="tmp.indexName"/>" SIZE="50"></TD>
		</TR>
		<TR>
			<TD>Propriedades adicionais: <INPUT TYPE="text" NAME="tmp.properties" VALUE="<wi:out var="tmp.properties"/>" SIZE="50"></TD>
		</TR>
    	<TR>
      		<TD>
        	  <INPUT TYPE="checkbox" NAME="tmp.parseHTML"> Processar conteúdo HTML
      		</TD>     	
		</TR>
<TR>
<TH BGCOLOR="#C0C0C0">Fonte de Dados</TH>
</TR>
<TR>
<TD>
<TABLE CELLSPACING="0" CELLPADDING="2">
<TR>
<TD ALIGN="left" NOWRAP><INPUT TYPE="radio" NAME="tmp.dsType" VALUE="dir" CHECKED> Diretório de Arquivos</TD>
</TR>
<TR>
<TD NOWRAP>Diretório de pesquisa: <INPUT TYPE="text" NAME="tmp.dirName" VALUE="<wi:out var="tmp.dirName"/>" SIZE="70"></TD>
</TR>
<TR>
<TD>Extensões de arquivos a serem processados: <INPUT TYPE="text" NAME="tmp.mask" VALUE="<wi:out var="tmp.mask"/>"></TD>
</TR>
<TR>
<TD NOWRAP><INPUT TYPE="checkbox" NAME="tmp.recursive"> Pesquisar em sub-diretórios</TD>
</TR>
</TABLE>
</TD>
</TR>
<TR>
<TD ALIGN="center"><INPUT TYPE="submit" VALUE="Indexar">
<INPUT TYPE="button" VALUE="Reindexar" onClick="reindexar();"</TD>
</TR>
</TABLE>
</FORM>
  <wi:out />
<wi:out var="wi.grid.form"/>
</BODY>
</HTML><w:endPage/>