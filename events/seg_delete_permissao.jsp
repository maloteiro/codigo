<%@ page info='Event Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="EventUpdate" name="event_seg_delete_permissao"
/><jsp:useBean
  id="event_seg_delete_permissao" type="br.com.webinside.runtime.component.EventUpdate"
/><jsp:setProperty
  name="event_seg_delete_permissao" property="autoCommit" value="ON"
/><jsp:setProperty
  name="event_seg_delete_permissao" property="condition" value="true"
/><jsp:setProperty
  name="event_seg_delete_permissao" property="database" value="principal"
/><jsp:setProperty
  name="event_seg_delete_permissao" property="description" value="Evento Update: seg_delete_permissao"
/><jsp:setProperty
  name="event_seg_delete_permissao" property="messageTrue" value="Dados gravados com sucesso"
/><jsp:setProperty
  name="event_seg_delete_permissao" property="sql" value="DELETE FROM seg_permissao
 WHERE (seq_perfil = ?|tmp.seq_perfil|)
 and (seq_rotina = ?|tmp.seq_rotina|)"
/><jsp:setProperty
  name="event_seg_delete_permissao" property="sqlFilter" value="'\"<>"
/><jsp:setProperty
  name="event_seg_delete_permissao" property="WIObj" value="tmp.resp"
/>