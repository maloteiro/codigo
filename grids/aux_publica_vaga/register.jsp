<%@ page info='Grid Element - REGISTER'
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
%><w:setGridElement><td><wi:out var="tip_vaga_tipo"/></td>
<td>
  <wi:out var="dsc_vaga_titulo"/>  
</td>
<td>
  <wi:function expr="df(|dat_vaga_data|,FMT,yyyy-MM-dd,dd/MM/yyyy)"/>
 </td></w:setGridElement>