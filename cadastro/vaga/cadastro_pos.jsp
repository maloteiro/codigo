<%@ page info='Pos-Page Elements'
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
  type="UpdateElement" name="updateelement1"
/><jsp:useBean
  id="updateelement1" type="br.com.webinside.runtime.component.UpdateElement"
/><jsp:setProperty
  name="updateelement1" property="autoCommit" value="OFF"
/><jsp:setProperty
  name="updateelement1" property="condition" value="|tmp.id|= && |wi.token.ok|=true"
/><jsp:setProperty
  name="updateelement1" property="database" value="principal"
/><jsp:setProperty
  name="updateelement1" property="description" value="Insert do objeto tmp.edt"
/><jsp:setProperty
  name="updateelement1" property="messageTrue" value="Registro inserido com sucesso"
/><jsp:setProperty
  name="updateelement1" property="noException" value="OFF"
/><jsp:setProperty
  name="updateelement1" property="noMessage" value="|wi.sql.msg|"
/><jsp:setProperty
  name="updateelement1" property="sql" value="INSERT INTO tbl_vaga (
		dsc_vaga_titulo, 
        dsc_vaga_email, 
        txt_vaga_descricao, 
        num_vaga_salario, 
        tip_vaga_tipo, 
     	dat_vaga_data, 
        flg_vaga_ativa, 
        dat_data_cadastro, 
        seq_usuario_cadastro,
        cod_token_codigo
) VALUES (
		?|tmp.edt.dsc_vaga_titulo|, 
        ?|tmp.edt.dsc_vaga_email|, 
        ?|tmp.edt.txt_vaga_descricao|, 
     	?|$nf(|tmp.edt.num_vaga_salario|,CLR)$|, 
        ?|tmp.edt.tip_vaga_tipo|, 
        ?|$df(|tmp.edt.dat_vaga_data|,FMT,dd/MM/yyyy,yyyy-MM-dd)$|, 
     	?|tmp.edt.flg_vaga_ativa|, 
        now(), 
        ?|pvt.login.seq_usuario|,
        ?|wi.token|
)"
/><jsp:setProperty
  name="updateelement1" property="sqlFilter" value="'\"<>"
/><jsp:setProperty
  name="updateelement1" property="WIObj" value="tmp.message"
/><w:executeCore
  type="UpdateElement" name="updateelement1"
/><w:setPageElement
  type="UpdateElement" name="updateelement2"
/><jsp:useBean
  id="updateelement2" type="br.com.webinside.runtime.component.UpdateElement"
/><jsp:setProperty
  name="updateelement2" property="autoCommit" value="OFF"
/><jsp:setProperty
  name="updateelement2" property="condition" value="|tmp.id|!= && |wi.token.ok|=true"
/><jsp:setProperty
  name="updateelement2" property="database" value="principal"
/><jsp:setProperty
  name="updateelement2" property="description" value="Update do objeto tmp.edt"
/><jsp:setProperty
  name="updateelement2" property="messageTrue" value="Registro alterado com sucesso"
/><jsp:setProperty
  name="updateelement2" property="noException" value="OFF"
/><jsp:setProperty
  name="updateelement2" property="noMessage" value="|wi.sql.msg|"
/><jsp:setProperty
  name="updateelement2" property="sql" value="UPDATE tbl_vaga
 SET 	dsc_vaga_titulo = ?|tmp.edt.dsc_vaga_titulo|, 
 		dsc_vaga_email = ?|tmp.edt.dsc_vaga_email|, 
     	txt_vaga_descricao = ?|tmp.edt.txt_vaga_descricao|, 
        num_vaga_salario = ?|$nf(|tmp.edt.num_vaga_salario|,CLR)$| , 
     	tip_vaga_tipo = ?|tmp.edt.tip_vaga_tipo|, 
        dat_vaga_data = ?|$df(|tmp.edt.dat_vaga_data|,FMT,dd/MM/yyyy,yyyy-MM-dd)$|, 
     	flg_vaga_ativa = ?|tmp.edt.flg_vaga_ativa|, 
        
     	 
        dat_data_alteracao = now(), 
     	seq_usuario_alteracao = ?|pvt.login.seq_usuario|
 WHERE (tbl_vaga.seq_vaga = ?|tmp.id|)"
/><jsp:setProperty
  name="updateelement2" property="sqlFilter" value="'\"<>"
/><jsp:setProperty
  name="updateelement2" property="WIObj" value="tmp.message"
/><w:executeCore
  type="UpdateElement" name="updateelement2"
/><w:setPageElement
  type="ObjectElement" name="objectelement1"
/><jsp:useBean
  id="objectelement1" type="br.com.webinside.runtime.component.ObjectElement"
/><jsp:setProperty
  name="objectelement1" property="condition" value="|tmp.id|= && |wi.token.ok|=true"
/><jsp:setProperty
  name="objectelement1" property="database" value="principal"
/><jsp:setProperty
  name="objectelement1" property="description" value="Localiza chaves do registro recém-inserido"
/><jsp:setProperty
  name="objectelement1" property="multiple" value="false"
/><jsp:setProperty
  name="objectelement1" property="sql" value="SELECT tbl_vaga.seq_vaga AS key1
 FROM tbl_vaga
 WHERE cod_token_codigo = ?|wi.token|
 ORDER BY tbl_vaga.seq_vaga DESC"
/><jsp:setProperty
  name="objectelement1" property="sqlFilter" value="%*?'\""
/><jsp:setProperty
  name="objectelement1" property="usejson" value="false"
/><jsp:setProperty
  name="objectelement1" property="WIObj" value="tmp.wi"
/><w:executeCore
  type="ObjectElement" name="objectelement1"
/><w:setPageElement
  type="SetElement" name="setelement1"
/><jsp:useBean
  id="setelement1" type="br.com.webinside.runtime.component.SetElement"
/><jsp:setProperty
  name="setelement1" property="condition" value="|tmp.id|= && |wi.token.ok|=true"
/><jsp:setProperty
  name="setelement1" property="description" value="Grava chaves em variáveis"
/><jsp:setProperty
  name="setelement1" property="disableProduce" value="false"
/><jsp:setProperty
  name="setelement1" property="ifTrue" value="|tmp.wi.key1|"
/><jsp:setProperty
  name="setelement1" property="WIObj" value="tmp.id"
/><w:executeCore
  type="SetElement" name="setelement1"
/><w:endPage/>