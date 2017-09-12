<%@ page info='Upload Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="UploadLocal" name="upload_upl_imagem"
/><jsp:useBean
  id="upload_upl_imagem" type="br.com.webinside.runtime.component.UploadLocal"
/><jsp:setProperty
  name="upload_upl_imagem" property="createDir" value="ON"
/><jsp:setProperty
  name="upload_upl_imagem" property="description" value="Upload Local: upl_imagem"
/><jsp:setProperty
  name="upload_upl_imagem" property="directory" value="/|wi.proj.path|/|tmp.caminho|"
/><jsp:setProperty
  name="upload_upl_imagem" property="file" value="|tmp.arquivo|"
/><jsp:setProperty
  name="upload_upl_imagem" property="formField" value="tmp.arquivo"
/>