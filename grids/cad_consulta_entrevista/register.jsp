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
%><w:setGridElement><td width="60%">
  <b><wi:out var="dsc_entrevista_pergunta"/></b>
</td>
<td align="left" width="150px">
  <b><wi:out var="dsc_entrevista_resposta"/></b>
</td>
<td width="150px">
  <b><wi:function expr="if(|flg_entrevista_ativa|==S,SIM,NÃO)"/></b>
</td>                         

<td align="center" width="150px">
  <img src="/<wi:out var="wi.proj.id"/>/imgs/icones/page_white_edit.png" title="Editar" class="btn_editar tooltip" onclick="wiOpen('?a=cliente&d=cliente&f=formCadastroArtefato&seq_artefato={$artefato.seq_artefato}&seq_cliente={$smarty.request.seq_cliente}&tip_cliente_tipo={$smarty.request.tip_cliente_tipo}')"/>
  <img src="/<wi:out var="wi.proj.id"/>/imgs/icones/document_download.png" title="Donwload" class="btn_editar tooltip" onclick="window.open('download.php?arquivo={$artefato.dsc_artefato_nome}&tip_cliente_tipo={$smarty.request.tip_cliente_tipo}')"/> 
  <img src="/<wi:out var="wi.proj.id"/>/imgs/icones/document_viewer.png" title="Visualizar" class="btn_editar tooltip" onclick="busca_conteudo({$artefato.seq_artefato});"/>                                           				
</td>
</w:setGridElement>