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
<b>
  <wi:function expr="nf(|num_modulo_ordem|, FMT, ####00)"/>
  </b>
</td>
<td>
<b><wi:out var="dsc_modulo_descricao"/></b>
</td>
<td align="left">
  <b><wi:function expr="if(|flg_modulo_ativo|==S,SIM,NÃO)"/></b>
</td>
<td align="center">
  <img src="/<wi:out var="wi.proj.id"/>/imgs/icones/page_white_edit.png" title="Editar" class="btn_editar tooltip" onclick="wiOpen('/<wi:out var="wi.proj.id"/>/seguranca/modulo/cadastro.wsp?tmp.id=<wi:out var="seq_modulo"/>')"/>
</td>
</w:setGridElement>