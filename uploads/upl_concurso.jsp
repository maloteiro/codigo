<%@ page info='Upload Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="UploadLocal" name="upload_upl_concurso"
/><jsp:useBean
  id="upload_upl_concurso" type="br.com.webinside.runtime.component.UploadLocal"
/><jsp:setProperty
  name="upload_upl_concurso" property="createDir" value="ON"
/><jsp:setProperty
  name="upload_upl_concurso" property="description" value="Upload da LogoMarca da examinadora"
/><jsp:setProperty
  name="upload_upl_concurso" property="directory" value="/|wi.webapps.path|/arquivos_prova/concurso"
/><jsp:setProperty
  name="upload_upl_concurso" property="file" value="|tmp.nom_anexo_nome|.|tmp.edt.nom_anexo_nome.ext|"
/><jsp:setProperty
  name="upload_upl_concurso" property="formField" value="tmp.edt.nom_anexo_nome"
/>