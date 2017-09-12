<%@ page info='Page'
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
%><w:initPage name="publico/comunicacao"><jsp:useBean
  id="wipage" type="br.com.webinside.runtime.component.Page"
/><jsp:setProperty
  name="wipage" property="browserCache" value="OFF"
/><jsp:setProperty
  name="wipage" property="checkPosToken" value="false"
/><jsp:setProperty
  name="wipage" property="errorPage" value="false"
/><jsp:setProperty
  name="wipage" property="mime" value="html"
/><jsp:setProperty
  name="wipage" property="noLogin" value="ON"
/><jsp:setProperty
  name="wipage" property="rerender" value="OFF"
/><jsp:setProperty
  name="wipage" property="security" value="OFF"
/><jsp:setProperty
  name="wipage" property="syncPos" value="false"
/><jsp:setProperty
  name="wipage" property="syncPre" value="false"
/><jsp:setProperty
  name="wipage" property="sysPage" value="OFF"
/><jsp:setProperty
  name="wipage" property="title" value="Comunica��o"
/></w:initPage><!DOCTYPE html>
<html lang="pt">
  <head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">

    <title>Plano de Comunica��o - EBSERH</title>

    <!-- Bootstrap core CSS -->
    <link href="/<wi:out var="wi.proj.id"/>/assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="/<wi:out var="wi.proj.id"/>/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/<wi:out var="wi.proj.id"/>/assets/css/justified-nav.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="/<wi:out var="wi.proj.id"/>/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="/<wi:out var="wi.proj.id"/>/assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">

      <!-- The justified navigation menu is meant for single line per list item.
           Multiple lines will require custom code not provided by Bootstrap. -->
      <div class="masthead">
        <h3 class="text-muted">
        	<img src="/<wi:out var="wi.proj.id"/>/assets/img/logo.png" />
        </h3>
        <nav>
          <ul class="nav nav-justified">
            <li class="active">
            	<a href="/<wi:out var="wi.proj.id"/>/publico/comunicacao.wsp">Home</a>
            </li>
            <li>
              <a href="/<wi:out var="wi.proj.id"/>/index.wsp" target="_sistema">Login</a>
            </li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
          </ul>
        </nav>
      </div>

      <!-- Jumbotron -->
      <div class="row">
      		<div class="col-lg-12">
             
              <h3><strong>HOST / SERVI�O: <wi:out var="tmp.serv.nom_servidor_nome"/></strong></h3>
      			<div class="well">
        			<p class="lead"><wi:out var="tmp.serv.dsc_servidor_funcao"/></p>
        			<em style="color:#696969">Publicado por: <wi:out var="tmp.serv.dsc_usuario_nome"/> - em <wi:function expr="df(|tmp.serv.dat_data_cadastro|,FMT, yyyy-MM-dd, dd/MM/yyyy)"/></em>
        		</div>
        		
              <h3>1. Descri��o geral do servidor / servi�o</h3>
        		<div class="well">
        		<h4><wi:function expr="tf(|tmp.serv.txt_servidor_descricao|, 2BR)"/></h4>
        		</div>
        		
        		<h3>2. Informa��es t�cnicas</h3>
        		<div class="well">
                  <wi:function expr="if(|tmp.serv.tip_servidor_tipo|==S,
                  <h4>        			
                      <div><strong>Sistema Operacional:</strong> |tmp.serv.dsc_sistema_descricao|</div>
                      <div><strong>Rede:</strong> |tmp.rede.num_rede_ip|</div>
                      <div><strong>Nome DNS:</strong> |tmp.serv.nom_servidor_nome_dns|</div>
                      <div><strong>Discos Virtuais:</strong> |tmp.serv.num_servidor_disco|</div>
                  </h4>
                  )"/>
                  <wi:function expr="if(|tmp.serv.tip_servidor_tipo|==P,
                  <h4>        			
                      
                    <div><strong>Rede:</strong> |tmp.rede.num_rede_ip|</div>
                    <div><strong>Nome DNS / Endere�o:</strong> |tmp.serv.nom_servidor_nome_dns|</div>
                      
                  </h4>
                  )"/>
                  <wi:function expr="if(|tmp.serv.tip_servidor_tipo|==L,
                  <h4>                      
                    <div><strong>Rede:</strong> |tmp.rede.num_rede_ip|</div>
                    <div><strong>Nome DNS / Endere�o:</strong> |tmp.serv.nom_servidor_nome_dns|</div>
                      
                  </h4>
                  )"/>
                  
        		</div>
        		
        		<h3>3. Potenciais riscos deste servi�o</h3>
        		<div class="well">
        		<h4>
                  <wi:function expr="tf(|tmp.serv.txt_servidor_risco|, 2BR)"/>        			
        		</h4>
        		</div>
        		
        		<h3>4. Matriz de Impacto/Urg�ncia</h3>
        		<div class="well">
        		<h4>
        			<div>
                      <strong>Impacto:</strong> <wi:function expr="if(|tmp.serv.flg_servidor_impacto|==A,
                      								<span class=\"label label-danger\">Alta</span>,
                      								|$if(|tmp.serv.flg_servidor_impacto|==M,
                      									<span class=\"label label-warning\">M�dia</span>,
                      									<span class=\"label label-info\">Baixa</span>
                      								)$|
                      							)"/>
                      <br />
                      <br />
                  	</div>
        			<div>
                      <strong>Urg�ncia:</strong> <wi:function expr="if(|tmp.serv.flg_servidor_urgencia|==A,
                      								<span class=\"label label-danger\">Alta</span>,
                      								|$if(|tmp.serv.flg_servidor_impacto|==M,
                      									<span class=\"label label-warning\">M�dia</span>,
                      									<span class=\"label label-info\">Baixa</span>
                      								)$|
                      							)"/>
                    </div>
        		</h4>
        		</div>
        		
        		<h3>5. Atua��o do NOC</h3>
        		<div class="well">
        		<h4>
                  <div><strong>Poss�vel solu��o de incidentes pelo NOC:</strong> <wi:function expr="if(|tmp.serv.flg_servidor_atuacao_noc|==S,<span class=\"label label-success\">SIM</span>,<span class=\"label label-danger\">N�O</span>)"/></div>
        			<br />
                      	
                 <wi:function expr="tf(|tmp.serv.txt_servidor_noc_procedimento|, 2BR)"/>
        		</h4>
        		</div>
        		
        		
        		<h3 class="escala">5.1 Processo de escala��o dos eventos</h3>
        		
        		<div class="page-header grid-alto">
        			<div class="alert alert-danger" role="alert">
        				<button type="button" class="btn btn-lg btn-danger">Desastre e Alta</button>
      				</div>
      			</div>
      			<div class="row grid-alto">
        			<div class="col-md-12">
          				<w:generateGrid name="aux_publica_escala_desastre"/>
        			</div>
       			</div>
       			
       			
       			
       			<div class="page-header grid-medio">
        			<div class="alert alert-warning" role="alert">
        				<button type="button" class="btn btn-lg btn-warning">M�dia e Aten��o</button>
      				</div>
      			</div>
      			<div class="row grid-medio">
        			<div class="col-md-12">
          				<w:generateGrid name="aux_publica_escala_atencao"/>
        			</div>
       			</div>
      		</div>

          </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="/<wi:out var="wi.proj.id"/>/assets/js/ie10-viewport-bug-workaround.js"></script>
      
        <script  type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js" charset="iso-8859-1"></script>
        <!--script type="text/javascript">
        var jQuery_2_1_3 = $.noConflict(true);
        </script-->
        <script>
        $(document).ready(function() {
          if('<wi:out var="grid.aux_publica_escala_atencao.size"/>'=='0'){
        	$('.grid-medio').hide();
          }
          if('<wi:out var="grid.aux_publica_escala_desastre.size"/>'=='0'){
        	$('.grid-alto').hide();
          }
          
          if(('<wi:out var="grid.aux_publica_escala_desastre.size"/>'=='0') && ('<wi:out var="grid.aux_publica_escala_atencao.size"/>'=='0')){
        	$('.escala').hide();
          }
          
        });
      </script>
  <wi:out var="wi.grid.form"/>
</body>
</html><w:endPage/>