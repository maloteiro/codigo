<%@ page info='Grid Element'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><%@ taglib
  prefix='wi' uri='/wi'
%><%@ taglib
  prefix='tag' tagdir='/WEB-INF/tags'
%><w:setProjectElement
  type="GridSql" name="grid_cad_consulta_servidor"
/><jsp:useBean
  id="grid_cad_consulta_servidor" type="br.com.webinside.runtime.component.GridSql"
/><jsp:setProperty
  name="grid_cad_consulta_servidor" property="colDisp" value="H"
/><jsp:setProperty
  name="grid_cad_consulta_servidor" property="database" value="principal"
/><jsp:setProperty
  name="grid_cad_consulta_servidor" property="description" value="Grid SQL: cad_consulta_servidor"
/><jsp:setProperty
  name="grid_cad_consulta_servidor" property="id" value="cad_consulta_servidor"
/><jsp:setProperty
  name="grid_cad_consulta_servidor" property="recursive" value="false"
/><jsp:setProperty
  name="grid_cad_consulta_servidor" property="sql" value="SELECT 
 tbl_servidor.seq_servidor, 
 tbl_servidor.seq_sistema,
 aux_sistema.dsc_sistema_descricao, 
 tbl_servidor.nom_servidor_nome, 
 tbl_servidor.dsc_servidor_funcao, 
 tbl_servidor.txt_servidor_descricao, 
 tbl_servidor.dsc_servidor_rede, 
 tbl_servidor.nom_servidor_nome_dns, 
 tbl_servidor.num_servidor_disco, 
 tbl_servidor.txt_servidor_risco, 
 tbl_servidor.flg_servidor_impacto, 
 tbl_servidor.flg_servidor_urgencia, 
 tbl_servidor.flg_servidor_atuacao_noc, 
 tbl_servidor.txt_servidor_noc_procedimento,
 tbl_servidor.flg_servidor_ativo 
FROM tbl_servidor
inner join aux_sistema on tbl_servidor.seq_sistema=aux_sistema.seq_sistema
where (tbl_servidor.nom_servidor_nome like '%|tmp.argumento_pesquisa|%'
or tbl_servidor.dsc_servidor_funcao like '%|tmp.argumento_pesquisa|%'
or tbl_servidor.txt_servidor_descricao like '%|tmp.argumento_pesquisa|%'
or tbl_servidor.dsc_servidor_rede like '%|tmp.argumento_pesquisa|%'
or tbl_servidor.nom_servidor_nome_dns like '%|tmp.argumento_pesquisa|%'
or tbl_servidor.txt_servidor_noc_procedimento like '%|tmp.argumento_pesquisa|%'
or aux_sistema.dsc_sistema_descricao like '%|tmp.argumento_pesquisa|%')
AND flg_servidor_excluido='N'"
/><jsp:setProperty
  name="grid_cad_consulta_servidor" property="sqlFilter" value="%*?'\""
/>