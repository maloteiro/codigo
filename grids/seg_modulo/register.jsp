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
%><w:setGridElement><li>
     <a href="#"><i class="fa fa-sitemap"></i> <wi:out var="dsc_modulo_descricao"/> <wi:function expr="if(|filhos|!=0,<span class=\"fa arrow\"></span>)"/></a>
  		<w:generateGrid name="seg_rotina"/>
</li>


<!--li class="current"><a href="#"><wi:out var="dsc_modulo_descricao"/></a>
 <w:generateGrid name="seg_rotina"/>
</li-->


<!--td><wi:out var="seq_modulo"/>&nbsp;</td>
<td><wi:out var="dsc_modulo_descricao"/>&nbsp;</td>
<td><wi:out var="num_modulo_ordem"/>&nbsp;</td>
<td><wi:out var="flg_modulo_ativo"/>&nbsp;</td-->
</w:setGridElement>