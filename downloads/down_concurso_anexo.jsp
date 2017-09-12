<%@ page info='Download Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="DownloadLocal" name="download_down_concurso_anexo"
/><jsp:useBean
  id="download_down_concurso_anexo" type="br.com.webinside.runtime.component.DownloadLocal"
/><jsp:setProperty
  name="download_down_concurso_anexo" property="description" value="Download Local: down_concurso_anexo"
/><jsp:setProperty
  name="download_down_concurso_anexo" property="directory" value="/|wi.webapps.path|/arquivos_prova/concurso/"
/><jsp:setProperty
  name="download_down_concurso_anexo" property="file" value="|tmp.down.dsc_anexo_link|"
/><jsp:setProperty
  name="download_down_concurso_anexo" property="mime" value="attachment"
/><jsp:setProperty
  name="download_down_concurso_anexo" property="realname" value="|tmp.down.nom_anexo_nome|"
/>