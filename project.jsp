<%@ page info='Project'
  language='java' session='true' 
%><%@ taglib
  prefix='w' uri='/wicore'
%><w:initProject/><jsp:useBean
  id="project" type="br.com.webinside.runtime.component.Project"
/><jsp:setProperty
  name="project" property="title" value="Maloteiro - Entrega fácil de documentos"
/><jsp:setProperty
  name="project" property="version" value="5.0.17"
/><jsp:setProperty
  name="project" property="requestScope" value="false"
/><jsp:setProperty
  name="project" property="loginActive" value="ON"
/><jsp:setProperty
  name="project" property="loginDatabase" value="principal"
/><jsp:setProperty
  name="project" property="loginSql" value="SELECT 	us.dsc_usuario_senha,				
	us.seq_usuario, 
	us.seq_empresa, 
	us.seq_perfil,	 
	us.dsc_usuario_nome, 
	us.dsc_usuario_email, 
	us.dsc_usuario_email2, 
	us.num_usuario_telefone, 
	us.dsc_usuario_cpf, 
	us.flg_usuario_status, 
	us.dsc_usuario_token, 
	us.dat_data_cadastro, 
	us.seq_usuario_cadastro, 
	us.dat_data_alteracao, 
	us.seq_usuario_alteracao, 

dsc_perfil_nome, sig_perfil_sigla 
					
                    
FROM seg_usuario us
INNER JOIN seg_perfil pe ON us.seq_perfil=pe.seq_perfil					
WHERE (dsc_usuario_email=?|tmp.user|
or dsc_usuario_email='|tmp.user|@ebserh.gov.br'
or dsc_usuario_email='|tmp.user|@centralit.com.br')
and us.flg_usuario_status = '1'
and pe.flg_perfil_status = '1'
"
/><jsp:setProperty
  name="project" property="loginSqlFilter" value="%*?'\""
/><jsp:setProperty
  name="project" property="loginCrypto" value="MD5"
/><jsp:setProperty
  name="project" property="loginMessage" value="Usuário ou senha inválidos"
/><jsp:setProperty
  name="project" property="loginPage" value="admin/index.wsp"
/><jsp:setProperty
  name="project" property="loginChangePass" value="seguranca/alterar_senha.wsp"
/><jsp:setProperty
  name="project" property="DBLogDatabase" value="principal"
/><jsp:setProperty
  name="project" property="DBLogTable" value="seg_logsql"
/><w:addProjectProperty
  type="InitParam" name="grid.linkIndexSize" value="10"
/><w:addProjectProperty
  type="Function" name="DateFormat" value="br.com.webinside.runtime.function.DateFormat"
/><w:addProjectProperty
  type="Function" name="DecodeDES" value="br.com.webinside.runtime.function.DecodeDES"
/><w:addProjectProperty
  type="Function" name="df" value="br.com.webinside.runtime.function.DateFormat"
/><w:addProjectProperty
  type="Function" name="EncodeDES" value="br.com.webinside.runtime.function.EncodeDES"
/><w:addProjectProperty
  type="Function" name="EncodeMD5" value="br.com.webinside.runtime.function.EncodeMD5"
/><w:addProjectProperty
  type="Function" name="EncodeSHA1" value="br.com.webinside.runtime.function.EncodeSHA1"
/><w:addProjectProperty
  type="Function" name="Eval" value="br.com.webinside.runtime.function.Eval"
/><w:addProjectProperty
  type="Function" name="ExtractPassword" value="br.com.webinside.runtime.function.ExtractPassword"
/><w:addProjectProperty
  type="Function" name="fc" value="br.com.webinside.runtime.function.FileCopy"
/><w:addProjectProperty
  type="Function" name="FileCopy" value="br.com.webinside.runtime.function.FileCopy"
/><w:addProjectProperty
  type="Function" name="GenericFormat" value="br.com.webinside.runtime.function.GenericFormat"
/><w:addProjectProperty
  type="Function" name="gf" value="br.com.webinside.runtime.function.GenericFormat"
/><w:addProjectProperty
  type="Function" name="HasRole" value="br.com.webinside.runtime.function.HasRole"
/><w:addProjectProperty
  type="Function" name="HtmlFilter" value="br.com.webinside.runtime.function.HtmlFilter"
/><w:addProjectProperty
  type="Function" name="If" value="br.com.webinside.runtime.function.If"
/><w:addProjectProperty
  type="Function" name="In" value="br.com.webinside.runtime.function.In"
/><w:addProjectProperty
  type="Function" name="Include" value="br.com.webinside.runtime.function.Include"
/><w:addProjectProperty
  type="Function" name="md5" value="br.com.webinside.runtime.function.EncodeMD5"
/><w:addProjectProperty
  type="Function" name="Mkdir" value="br.com.webinside.runtime.function.Mkdir"
/><w:addProjectProperty
  type="Function" name="nf" value="br.com.webinside.runtime.function.NumberFormat"
/><w:addProjectProperty
  type="Function" name="nl" value="br.com.webinside.runtime.function.NumberList"
/><w:addProjectProperty
  type="Function" name="NumberFormat" value="br.com.webinside.runtime.function.NumberFormat"
/><w:addProjectProperty
  type="Function" name="NumberList" value="br.com.webinside.runtime.function.NumberList"
/><w:addProjectProperty
  type="Function" name="OrderBy" value="br.com.webinside.runtime.function.OrderBy"
/><w:addProjectProperty
  type="Function" name="Piece" value="br.com.webinside.runtime.function.Piece"
/><w:addProjectProperty
  type="Function" name="Random" value="br.com.webinside.runtime.function.Random"
/><w:addProjectProperty
  type="Function" name="SecureVar" value="br.com.webinside.runtime.function.SecureVar"
/><w:addProjectProperty
  type="Function" name="sha1" value="br.com.webinside.runtime.function.EncodeSHA1"
/><w:addProjectProperty
  type="Function" name="sv" value="br.com.webinside.runtime.function.SecureVar"
/><w:addProjectProperty
  type="Function" name="SVList" value="br.com.webinside.runtime.function.SVList"
/><w:addProjectProperty
  type="Function" name="TextFormat" value="br.com.webinside.runtime.function.TextFormat"
/><w:addProjectProperty
  type="Function" name="tf" value="br.com.webinside.runtime.function.TextFormat"
/><w:addProjectProperty
  type="Function" name="WebResource" value="br.com.webinside.runtime.function.WebResource"
/><w:addProjectProperty
  type="Function" name="wr" value="br.com.webinside.runtime.function.WebResource"
/><w:addProjectProperty
  type="DBLogColumn" name="id" value="Register ID (autoincrement)"
/><w:addProjectProperty
  type="DBLogColumn" name="logdate" value="|wi.date.ansi| |wi.date.hms|"
/><w:addProjectProperty
  type="DBLogColumn" name="databaseid" value="|wi.db.id|"
/><w:addProjectProperty
  type="DBLogColumn" name="transactionid" value="|wi.transaction.id|"
/><w:addProjectProperty
  type="DBLogColumn" name="sqlstatus" value="|wi.sql.status|"
/><w:addProjectProperty
  type="DBLogColumn" name="sqlcommand" value="|wi.sql.query|"
/><w:addProjectProperty
  type="DBLogColumn" name="sqlerror" value="|wi.sql.error|"
/><w:addProjectProperty
  type="DBLogColumn" name="sqlparams" value="|wi.sql.params|"
/><w:addProjectProperty
  type="DBLogColumn" name="loginid" value="|pvt.login.seq_usuario|"
/><w:addProjectProperty
  type="DBLogColumn" name="perfilid" value="|pvt.login.seq_perfil|"
/><w:setProjectElement
  type="Database" name="database_principal"
/><jsp:useBean
  id="database_principal" type="br.com.webinside.runtime.component.Database"
/><jsp:setProperty
  name="database_principal" property="type" value="MYSQLJC"
/><jsp:setProperty
  name="database_principal" property="alias" value="//localhost/malote"
/><jsp:setProperty
  name="database_principal" property="DBTimeLog" value="10"
/><w:setPropertyUser
  name="database_principal" user="root" pass="25f515dd54a99a41"
/><w:setProjectElement
  type="Host" name="host_email"
/><jsp:useBean
  id="host_email" type="br.com.webinside.runtime.component.Host"
/><jsp:setProperty
  name="host_email" property="protocol" value="SMTP"
/><jsp:setProperty
  name="host_email" property="address" value="172.17.61.41"
/><jsp:setProperty
  name="host_email" property="port" value="25"
/>