<%@ page info='Event Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="EventUpdate" name="event_seg_insert_associado"
/><jsp:useBean
  id="event_seg_insert_associado" type="br.com.webinside.runtime.component.EventUpdate"
/><jsp:setProperty
  name="event_seg_insert_associado" property="autoCommit" value="ON"
/><jsp:setProperty
  name="event_seg_insert_associado" property="condition" value="true"
/><jsp:setProperty
  name="event_seg_insert_associado" property="database" value="principal"
/><jsp:setProperty
  name="event_seg_insert_associado" property="description" value="Evento Update: seg_insert_associado"
/><jsp:setProperty
  name="event_seg_insert_associado" property="messageTrue" value="Dados gravados com sucesso"
/><jsp:setProperty
  name="event_seg_insert_associado" property="sql" value="INSERT INTO rel_associado (seq_usuario, 
  seq_associado)
VALUES (|pvt.login.seq_usuario|, 
  ?|tmp.seq_associado|)"
/><jsp:setProperty
  name="event_seg_insert_associado" property="sqlFilter" value="'\"<>"
/><jsp:setProperty
  name="event_seg_insert_associado" property="WIObj" value="tmp.resp"
/>