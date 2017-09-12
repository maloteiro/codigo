<%@ page info='Event Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="EventUpdate" name="event_seg_insert_permissao"
/><jsp:useBean
  id="event_seg_insert_permissao" type="br.com.webinside.runtime.component.EventUpdate"
/><jsp:setProperty
  name="event_seg_insert_permissao" property="autoCommit" value="ON"
/><jsp:setProperty
  name="event_seg_insert_permissao" property="condition" value="true"
/><jsp:setProperty
  name="event_seg_insert_permissao" property="database" value="principal"
/><jsp:setProperty
  name="event_seg_insert_permissao" property="description" value="Evento Update: seg_insert_permissao"
/><jsp:setProperty
  name="event_seg_insert_permissao" property="messageTrue" value="Dados gravados com sucesso"
/><jsp:setProperty
  name="event_seg_insert_permissao" property="sql" value="INSERT INTO seg_permissao (seq_rotina, 
  seq_perfil)
VALUES (|tmp.seq_rotina|, 
  ?|tmp.seq_perfil|)"
/><jsp:setProperty
  name="event_seg_insert_permissao" property="sqlFilter" value="'\"<>"
/><jsp:setProperty
  name="event_seg_insert_permissao" property="WIObj" value="tmp.resp"
/>