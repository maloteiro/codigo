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
%><w:setGridElement><td>
<b><input <wi:function expr="if(|checado|==1,checked)"/> type="checkbox" name="tmp.update<wi:out var="rowseq"/>.seq_rotina" id="tmp.update<wi:out var="rowseq"/>.seq_rotina" value="<wi:out var="seq_rotina"/>" onclick="salvar('tmp.update<wi:out var="rowseq"/>.seq_rotina')"/></b>
</td>
<td>
  <b><wi:out var="dsc_rotina_descricao"/></b>
</td>                

</w:setGridElement>