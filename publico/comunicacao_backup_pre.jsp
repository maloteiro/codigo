<%@ page info='Pre-Page Elements'
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
%><w:initPage/><w:setPageElement
  type="ObjectElement" name="objectelement1"
/><jsp:useBean
  id="objectelement1" type="br.com.webinside.runtime.component.ObjectElement"
/><jsp:setProperty
  name="objectelement1" property="condition" value="true"
/><jsp:setProperty
  name="objectelement1" property="database" value="principal"
/><jsp:setProperty
  name="objectelement1" property="description" value="Objeto tmp.serv"
/><jsp:setProperty
  name="objectelement1" property="multiple" value="false"
/><jsp:setProperty
  name="objectelement1" property="sql" value="SELECT 	
	s.seq_servidor, 
	s.seq_sistema, 
	s.nom_servidor_nome, 
	s.dsc_servidor_funcao, 
	s.txt_servidor_descricao, 
	s.dsc_servidor_rede, 
	s.nom_servidor_nome_dns, 
	s.num_servidor_disco, 
	s.txt_servidor_risco, 
	s.flg_servidor_impacto, 
	s.flg_servidor_urgencia, 
	s.flg_servidor_atuacao_noc, 
	s.txt_servidor_noc_procedimento, 
	s.flg_servidor_ativo, 
	s.dat_data_cadastro, 
	s.seq_usuario_cadastro, 
	s.dat_data_alteracao, 
	s.seq_usuario_alteracao, 
	s.cod_token_codigo,
    u.dsc_usuario_nome,
    sis.dsc_sistema_descricao,
    s.tip_servidor_tipo	 
FROM tbl_servidor s
INNER JOIN seg_usuario u on s.seq_usuario_cadastro=u.seq_usuario
INNER JOIN aux_sistema sis on s.seq_sistema=sis.seq_sistema
WHERE seq_servidor='|tmp.servidor|'
OR UPPER(nom_servidor_nome) = '|tmp.servidor|'"
/><jsp:setProperty
  name="objectelement1" property="sqlFilter" value="%*?'"
/><jsp:setProperty
  name="objectelement1" property="usejson" value="false"
/><jsp:setProperty
  name="objectelement1" property="WIObj" value="tmp.serv"
/><w:executeCore
  type="ObjectElement" name="objectelement1"
/><w:endPage/>