<%@ page info='Grid Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="GridSql" name="grid_aux_publica_vaga"
/><jsp:useBean
  id="grid_aux_publica_vaga" type="br.com.webinside.runtime.component.GridSql"
/><jsp:setProperty
  name="grid_aux_publica_vaga" property="colDisp" value="H"
/><jsp:setProperty
  name="grid_aux_publica_vaga" property="database" value="principal"
/><jsp:setProperty
  name="grid_aux_publica_vaga" property="description" value="Grid SQL: aux_publica_vaga"
/><jsp:setProperty
  name="grid_aux_publica_vaga" property="id" value="aux_publica_vaga"
/><jsp:setProperty
  name="grid_aux_publica_vaga" property="recursive" value="false"
/><jsp:setProperty
  name="grid_aux_publica_vaga" property="sql" value="SELECT 
 tbl_vaga.seq_vaga, tbl_vaga.dsc_vaga_titulo, tbl_vaga.dsc_vaga_email, 
 tbl_vaga.txt_vaga_descricao, tbl_vaga.num_vaga_salario, tbl_vaga.tip_vaga_tipo, 
 tbl_vaga.dat_vaga_data 
FROM tbl_vaga"
/><jsp:setProperty
  name="grid_aux_publica_vaga" property="sqlFilter" value="%*?'\""
/>