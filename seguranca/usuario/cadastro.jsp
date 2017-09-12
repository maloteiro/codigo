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
%><w:initPage name="seguranca/usuario/cadastro"><jsp:useBean
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
  name="wipage" property="noLogin" value="OFF"
/><jsp:setProperty
  name="wipage" property="rerender" value="OFF"
/><jsp:setProperty
  name="wipage" property="security" value="ON"
/><jsp:setProperty
  name="wipage" property="syncPos" value="false"
/><jsp:setProperty
  name="wipage" property="syncPre" value="false"
/><jsp:setProperty
  name="wipage" property="sysPage" value="OFF"
/><jsp:setProperty
  name="wipage" property="title" value="Cadastro de Usuários"
/></w:initPage><!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="iso-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><wi:out var="wi.proj.title"/></title>
    <!-- Bootstrap Styles-->
  	<link href="/<wi:out var="wi.proj.id"/>/static/app/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
  
    <link href="/<wi:out var="wi.proj.id"/>/static/app/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <script src="https://use.fontawesome.com/032d660736.js"></script>
  	<link href="/<wi:out var="wi.proj.id"/>/static/app/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="/<wi:out var="wi.proj.id"/>/static/app/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="/<wi:out var="wi.proj.id"/>/static/app/assets/js/Lightweight-Chart/cssCharts.css">
      <META HTTP-EQUIV="pragma" CONTENT="no-cache" />
  <META HTTP-EQUIV="expires" CONTENT="0" />
  <META HTTP-EQUIV="cache-control" CONTENT="no-cache" />
  <TITLE><wi:out var="wi.page.title"/></TITLE>
<SCRIPT TYPE="text/javascript">
function init(){

}
</SCRIPT>
</head>

<body onload="init();">
  <wi:function expr="if(|tmp.message|!= && |wi.builder|==,
    <div class=\"modal fade\" id=\"JanelaModal\" role=\"dialog\">
  		<div class=\"modal-dialog\" role=\"document\">
    		<div class=\"modal-content\">
      			<div class=\"modal-header\">
        			<h5 class=\"modal-title\">Alerta</h5>
              		<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">
                		<span aria-hidden=\"true\">×</span>
              		</button>
      			</div>
      			<div class=\"modal-body\">
        			<p>|tmp.message|</p>
      			</div>
      			<div class=\"modal-footer\">
        			<button type=\"button\" class=\"btn btn-primary\" data-dismiss=\"modal\">Fechar</button>       
      			</div>
    		</div>
  		</div>
	</div>
    )"/>
  
  
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#" onclick="javascript:wiOpen('/<wi:out var="wi.proj.id"/>/admin/home.wsp');">
                  <img src="/<wi:out var="wi.proj.id"/>/static/icone_interno.png" />
                </a>
            </div>

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>Jon Doe</strong>
                                    <span class="pull-right text-muted">
                                        <em>Today</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since an kwilnw...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since the...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">28% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100" style="width: 28%">
                                            <span class="sr-only">28% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">85% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                                            <span class="sr-only">85% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li>
                          <a href="#">
                            <i class="fa fa-user fa-fw"></i> Perfil
                          </a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#" onclick="wiOpen('/<wi:out var="wi.proj.id"/>/seguranca/logoff.wsp');"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        <!--/. NAV TOP  -->
        <w:generateGrid name="seg_modulo"/>
        <!-- /. NAV SIDE  -->
      
		<div id="page-wrapper">
		  <div class="header"> 
			<h1 class="page-header">
				<wi:out var="tmp.rotina"/> <small><wi:out var="wi.page.title"/></small>
			</h1>
			<ol class="breadcrumb">
              <li><a href="#" onclick="javascript:wiOpen('/<wi:out var="wi.proj.id"/>/admin/home.wsp');">Home</a></li>
				<!--li><a href="#">Library</a></li>
				<li class="active">Data</li-->
			</ol> 
									
		</div>
            <div id="page-inner">
				<div class="row">

			  		<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
				 				<wi:out var="wi.page.title"/>
							</div>        
							  
							<div class="panel-body">
                              <div class="centered col-lg-8">
                            	<!-- /. ROW  -->
                            	<FORM NAME="tmp.edt" ACTION="/<wi:out var="wi.proj.id"/>/<wi:out var="wi.page.id"/>.wsp" METHOD="post" CLASS="frm"   id="formulario"><INPUT NAME="wi.page.prev" ID="wi.page.prev" VALUE="<wi:out var="wi.page.id"/>" TYPE="hidden" /><INPUT NAME="wi.token" ID="wi.token" VALUE="<wi:out var="wi.token"/>" TYPE="hidden" /><INPUT NAME="tmp.action" ID="tmp.action" VALUE="save" TYPE="hidden" /><INPUT NAME="tmp.id" ID="tmp.id" VALUE="<wi:out var="tmp.id"/>" TYPE="hidden" />
<div class="form-group">
  <label>Perfil</label>
  <select class="form-control required" name="tmp.edt.seq_perfil" id="tmp.edt.seq_perfil" >
    <option value="">--Selecione--</option>
    <w:generateCombo name="seg_perfil"/>
  </select>
</div>
<div class="form-group">
  <label>Nome</label>
  <input class="form-control required" name="tmp.edt.dsc_usuario_nome" id="tmp.edt.dsc_usuario_nome" value="<wi:out var="tmp.edt.dsc_usuario_nome"/>" placeholder="Nome" />
</div>
<div class="form-group">
  <label>E-mail</label>
  <input class="form-control email required" name="tmp.edt.dsc_usuario_email" id="tmp.edt.dsc_usuario_email" value="<wi:out var="tmp.edt.dsc_usuario_email"/>" placeholder="E-mail" />
</div>
<div class="form-group">
  <label>E-mail Secundário (Opcional)</label>
  <input class="form-control email n" name="tmp.edt.dsc_usuario_email2" id="tmp.edt.dsc_usuario_email2" value="<wi:out var="tmp.edt.dsc_usuario_email2"/>" placeholder="E-mail Secundário (Opcional)" />
</div>
<div class="form-group">  
  
    <label>CPF</label>
  <input class="form-control cpf n" name="tmp.edt.dsc_usuario_cpf" id="tmp.edt.dsc_usuario_cpf" value="<wi:out var="tmp.edt.dsc_usuario_cpf"/>" placeholder="CPF" />
  
</div>
<div class="form-group">  
  
    <label>Telefone</label>
  <input class="form-control telefone required" name="tmp.edt.num_usuario_telefone" id="tmp.edt.num_usuario_telefone" value="<wi:out var="tmp.edt.num_usuario_telefone"/>" placeholder="Telefone" />
  
</div>
<div class="form-group">
  <label>Ativo:</label>
  <div class="checkbox n">
    <label>
      <input type="checkbox" name="tmp.edt.flg_usuario_status" id="tmp.edt.flg_usuario_status" value="<wi:out var="tmp.edt.flg_usuario_status"/>" <wi:function expr="if(|tmp.edt.flg_usuario_status|==1,checked)"/> >Sim
    </label>
  </div>
</div>
<br>

<br/>
<table align="center">
  <tr>
    <td align="center" >
	<button type="submit" name="tmp.btn_gravar" id="btn_gravar" class="btn btn-primary"><i class="fa fa-floppy-o" aria-hidden="true"></i> Salvar</button>
	<button type="button" name="tmp.btn_add_novo" id="btn_add_novo" class="btn btn-primary" onclick="wiOpen('/<wi:out var="wi.proj.id"/>/<wi:out var="wi.page.id"/>.wsp');"><i class="fa fa-file" aria-hidden="true"></i> Novo</button>
	<button type="button" name="tmp.btn_pesquisar" id="btn_pesquisar" class="btn btn-primary" onclick="wiOpen('/<wi:out var="wi.proj.id"/>/seguranca/usuario/pesquisa.wsp');"><i class="fa fa-search" aria-hidden="true"></i> Pesquisar</button>
	</td>						
  </tr>
</table>
<br>
Por padrão o sistema gera a senha (102030)
<br />
<br />

</FORM> 
                            	<!-- /. ROW  -->
                              </div>
							</div>
                   		</div>
                	</div>
		
				<footer><p>All right reserved. Template by: <a href="http://webthemez.com">WebThemez</a></p>
				
        
				</footer>
            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <!--script src="/<wi:out var="wi.proj.id"/>/static/app/assets/js/jquery-1.10.2.js"></script-->
    <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/static/app/assets/js/jquery-validation-1.17.0/lib/jquery-1.11.1.js"></script>
      
    <!-- Bootstrap Js -->
    <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/static/app/assets/js/bootstrap.min.js"></script>
	 
    <!-- Metis Menu Js -->
    <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/static/app/assets/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/static/app/assets/js/morris/raphael-2.1.0.min.js"></script>
    <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/static/app/assets/js/morris/morris.js"></script>
	
	
	<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/static/app/assets/js/easypiechart.js"></script>
	<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/static/app/assets/js/easypiechart-data.js"></script>
	
	<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/static/app/assets/js/Lightweight-Chart/jquery.chart.js"></script>
      
	<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/static/app/assets/js/jquery.maskedinput.js"></script>
      
    <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/static/app/assets/js/jquery-validation-1.17.0/jquery.validate.js"></script>
    <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/static/app/assets/js/jquery-validation-1.17.0/localization/messages_pt_BR.js"></script>
    <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/static/app/assets/js/jquery-validation-1.17.0/additional-methods.js"></script>
    
    <wi:function expr="if(|tmp.message|!= && |wi.builder|==,
    <script type=\"text/javascript\">
      $(window).load(function(){
          $('#JanelaModal').modal('show');
      });
    </script>
    )"/>
      
      
    <script type="text/javascript">
            
      	$(document).ready(function() {
        	$("#formulario").validate();
      	});    
     </script>  
    <script src="/<wi:out var="wi.proj.id"/>/static/app/assets/js/app.js"></script>
    <!-- Custom Js -->
    <script src="/<wi:out var="wi.proj.id"/>/static/app/assets/js/custom-scripts.js"></script>
    <script src="/<wi:out var="wi.proj.id"/>/js/page.js"></script>
      
    
<wi:out var="wi.grid.form"/>
</body>

</html><w:endPage/>