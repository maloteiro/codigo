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
%><w:initPage name="teste/publicar"><jsp:useBean
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
  name="wipage" property="title" value="Página teste/publicar"
/></w:initPage><HTML>
<HEAD>
<TITLE>Publicador de Documentos</TITLE>
</HEAD>
<BODY BGCOLOR="#D5EEE2" TEXT="#000000" LINK="#000000" VLINK="#000080">
<DIV ALIGN="center">
<TABLE BORDER="1" CELLSPACING="0" CELLPADDING="5">
  <TH BGCOLOR="#008080">
    <B><FONT FACE="Arial" COLOR="#FFFFFF" SIZE="3">Publicação de Documento</FONT></B>
  </TH>
  <TR>
    <TD BGCOLOR="#FFFFFF">
      <FORM ACTION="/<wi:out var="wi.proj.id"/>/<wi:out var="wi.page.id"/>.wsp" METHOD="post" ENCTYPE="multipart/form-data">
      <!-- variavel que indica o nome do indice que sera atualizado -->
      <INPUT TYPE="hidden" NAME="wi.page.prev" VALUE="<wi:out var="wi.page.id"/>">
      <INPUT TYPE="hidden" NAME="tmp.indexName" VALUE="modelo">
      <P>
      <FONT FACE="Arial"><STRONG><SMALL>Selecione o arquivo:<BR></SMALL></STRONG></FONT>
      <!-- variavel que indica o documento a ser publicado -->
      <INPUT TYPE="file" NAME="tmp.arquivo">
      </P>
      <P>
      <FONT FACE="Arial"><STRONG><SMALL>Título:<BR></SMALL></STRONG></FONT>
      <!-- variavel temporaria que indica o valor que sera indexado 
           como sendo parte da propriedade adicional titulo. -->
      <INPUT TYPE="text" NAME="tmp.titulo">
      </P>
      <P ALIGN="left">
      <FONT FACE="Arial"><STRONG><SMALL>Data (dd/mm/aaaa):<BR></SMALL></STRONG></FONT>
      <!-- variavel temporaria que indica o valor que sera indexado 
           como sendo parte da propriedade adicional dia. -->
      <INPUT TYPE="text" NAME="tmp.dia" SIZE="2" MAXLENGTH="2"> /
      <!-- variavel temporaria que indica o valor que sera indexado 
           como sendo parte da propriedade adicional mes. -->
      <SELECT NAME="tmp.mes" SIZE="1">
        <OPTION VALUE="01">Janeiro</OPTION>
        <OPTION VALUE="02">Fevereiro</OPTION>
        <OPTION VALUE="03">Março</OPTION>
        <OPTION VALUE="04">Abril</OPTION>
        <OPTION VALUE="05">Maio</OPTION>
        <OPTION VALUE="06">Junho</OPTION>
        <OPTION VALUE="07">Julho</OPTION>
        <OPTION VALUE="08">Agosto</OPTION>
        <OPTION VALUE="09">Setembro</OPTION>
        <OPTION VALUE="10">Outubro</OPTION>
        <OPTION VALUE="11">Novembro</OPTION>
        <OPTION VALUE="12">Dezembro</OPTION>
      </SELECT> /
      <!-- variavel temporaria que indica o valor que sera indexado 
           como sendo parte da propriedade adicional ano. -->
      <INPUT TYPE="text" NAME="tmp.ano" SIZE="4" MAXLENGTH="4">
      </P>
      <P>
      <INPUT TYPE="submit" VALUE="Publicar" NAME="tmp.publicar">
      </P>
    </FORM>
    </TD>
  </TR>
</TABLE>
</DIV>
<wi:out var="wi.grid.form"/>
</BODY>
</HTML><w:endPage/>