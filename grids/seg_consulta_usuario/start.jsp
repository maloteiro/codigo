<%@ page info='Grid Element - START'
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
%><w:setGridElement><table align="center" id="tb_usuario" class="display dataTables">
  <thead>
    <tr>            	
      <th>
        <b>Nome</b>
      </th>                            	
      <th>
        <b>E-mail</b>
      </th>
      <th>
        <b>CPF</b>
      </th>
      <th>
        <b>Ativo</b>
      </th>
      <th width="1%">
        <b>A��es</b>
      </th>
    </tr>
  </thead>
  <tbody>
</w:setGridElement>