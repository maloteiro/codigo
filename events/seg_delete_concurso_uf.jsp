<%@ page info='Event Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="EventUpdate" name="event_seg_delete_concurso_uf"
/><jsp:useBean
  id="event_seg_delete_concurso_uf" type="br.com.webinside.runtime.component.EventUpdate"
/><jsp:setProperty
  name="event_seg_delete_concurso_uf" property="autoCommit" value="ON"
/><jsp:setProperty
  name="event_seg_delete_concurso_uf" property="condition" value="true"
/><jsp:setProperty
  name="event_seg_delete_concurso_uf" property="database" value="principal"
/><jsp:setProperty
  name="event_seg_delete_concurso_uf" property="description" value="Evento Update: seg_delete_concurso_uf"
/><jsp:setProperty
  name="event_seg_delete_concurso_uf" property="messageTrue" value="Dados gravados com sucesso."
/><jsp:setProperty
  name="event_seg_delete_concurso_uf" property="sql" value="DELETE FROM aux_concurso_uf
 WHERE 	(seq_concurso = ?|tmp.seq_concurso|)
 and 	(seq_uf = ?|tmp.seq_uf|)"
/><jsp:setProperty
  name="event_seg_delete_concurso_uf" property="sqlFilter" value="'\"<>"
/><jsp:setProperty
  name="event_seg_delete_concurso_uf" property="WIObj" value="tmp.resp"
/>