<%@ page info='Grid Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="GridSql" name="grid_cad_consulta_entrevista"
/><jsp:useBean
  id="grid_cad_consulta_entrevista" type="br.com.webinside.runtime.component.GridSql"
/><jsp:setProperty
  name="grid_cad_consulta_entrevista" property="colDisp" value="H"
/><jsp:setProperty
  name="grid_cad_consulta_entrevista" property="database" value="principal"
/><jsp:setProperty
  name="grid_cad_consulta_entrevista" property="description" value="Grid SQL: cad_consulta_entrevista"
/><jsp:setProperty
  name="grid_cad_consulta_entrevista" property="id" value="cad_consulta_entrevista"
/><jsp:setProperty
  name="grid_cad_consulta_entrevista" property="recursive" value="false"
/><jsp:setProperty
  name="grid_cad_consulta_entrevista" property="sql" value="SELECT 	`seq_entrevista`, 
                                                `seq_cliente`, 
                                                `dsc_entrevista_pergunta`, 
                                                `dsc_entrevista_resposta`, 
                                                `flg_entrevista_ativa`,
                                                `seq_usuario_cadastro`, 
                                                `dat_data_cadastro`, 
                                                `seq_usuario_alteracao`, 
                                                `dat_data_alteracao`, 
                                                `cod_token_codigo`

FROM `tbl_entrevista`
WHERE seq_cliente='|tmp.id|'"
/><jsp:setProperty
  name="grid_cad_consulta_entrevista" property="sqlFilter" value="%*?'\""
/>