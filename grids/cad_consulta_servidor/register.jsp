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
%><w:setGridElement><td width="40%">
  <b><wi:out var="nom_servidor_nome"/></b>
</td>
<td align="left" width="150px">
  <b><wi:out var="dsc_sistema_descricao"/></b>
</td>
<td width="150px">
  <b><wi:function expr="if(|flg_servidor_ativo|==S,SIM,N�O)"/></b>
</td>                         

<td align="center" width="150px">
  <img src="/<wi:out var="wi.proj.id"/>/imgs/icones/page_white_edit.png" title="Editar" class="btn_editar tooltip" onclick="wiOpen('/<wi:out var="wi.proj.id"/>/cadastro/servidor/cadastro.wsp?tmp.id=<wi:out var="seq_servidor"/>')"/>
  <img src="/<wi:out var="wi.proj.id"/>/imgs/icones/application_go.png" title="IR" class="btn_editar tooltip" onclick="wiOpen('/<wi:out var="wi.proj.id"/>/publico/comunicacao.wsp?tmp.servidor=<wi:out var="seq_servidor"/>','_publico')"/>
</td>
</w:setGridElement>