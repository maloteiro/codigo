<%@ page info='Upload Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="UploadLocal" name="upload_examinadora"
/><jsp:useBean
  id="upload_examinadora" type="br.com.webinside.runtime.component.UploadLocal"
/><jsp:setProperty
  name="upload_examinadora" property="createDir" value="ON"
/><jsp:setProperty
  name="upload_examinadora" property="description" value="Upload da LogoMarca da examinadora"
/><jsp:setProperty
  name="upload_examinadora" property="directory" value="/|wi.webapps.path|/arquivos_prova"
/><jsp:setProperty
  name="upload_examinadora" property="file" value="|tmp.dsc_examinadora_logo|.|tmp.edt.dsc_examinadora_logo.ext|"
/><jsp:setProperty
  name="upload_examinadora" property="formField" value="tmp.edt.dsc_examinadora_logo"
/>