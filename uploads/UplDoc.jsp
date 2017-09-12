<%@ page info='Upload Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="UploadLocal" name="upload_UplDoc"
/><jsp:useBean
  id="upload_UplDoc" type="br.com.webinside.runtime.component.UploadLocal"
/><jsp:setProperty
  name="upload_UplDoc" property="createDir" value="ON"
/><jsp:setProperty
  name="upload_UplDoc" property="description" value="Upload Local: UplDoc"
/><jsp:setProperty
  name="upload_UplDoc" property="directory" value="/|wi.webapps.path|/temis_arquivos/"
/><jsp:setProperty
  name="upload_UplDoc" property="file" value="|tmp.arquivo|"
/><jsp:setProperty
  name="upload_UplDoc" property="formField" value="tmp.arquivo"
/>