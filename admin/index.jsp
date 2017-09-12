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
%><w:initPage name="admin/index"><jsp:useBean
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
  name="wipage" property="title" value="Acesso ao sistema"
/></w:initPage><!DOCTYPE html>
<html>
  <head>
    <meta charset="iso-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><wi:out var="wi.proj.title"/></title>
    <meta name="description" content="">
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta name="resource-type" content="document" />
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<meta name="revisit-after" content="1" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="/<wi:out var="wi.proj.id"/>/static/login/css/bootstrap.min.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="/<wi:out var="wi.proj.id"/>/static/login/css/style.blue.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="/<wi:out var="wi.proj.id"/>/static/login/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="/<wi:out var="wi.proj.id"/>/static/login/img/favicon.ico">
    <!-- Font Awesome CDN-->
    <!-- you can replace it by local Font Awesome-->
    <script src="https://use.fontawesome.com/99347ac47f.js"></script>
    <!-- Font Icons CSS-->
    <link rel="stylesheet" href="https://file.myfontastic.com/da58YPMQ7U5HY8Rb6UxkNf/icons.css">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    
    
    
  </head>
  <body>
    <wi:function expr="if(|tmp.message|!= && |wi.builder|==,
    <div class=\"modal fade\" id=\"JanelaModal\" role=\"dialog\">
  		<div class=\"modal-dialog\" role=\"document\">
    		<div class=\"modal-content\">
      			<div class=\"modal-header\">
        			<h5 class=\"modal-title\">Alerta</h5>
              		<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">
                		<span aria-hidden=\"true\">&times;</span>
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
    
    
    <div class="page login-page">
      <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
          <div class="row">
            <!-- Logo & Information Panel-->
            <div class="col-lg-6">
              <div class="info d-flex align-items-center">
                <div class="content">
                  <div class="logo">
                    <img src="/<wi:out var="wi.proj.id"/>/static/icone.png" />
                    <h1>Bem Vindo(a)</h1>
                  </div>
                  <p>Entrega f�cil de documentos digitais</p>
                </div>
              </div>
            </div>
            <!-- Form Panel    -->
            <div class="col-lg-6 bg-white">
              <div class="form d-flex align-items-center">
                <div class="content">
                  <form id="login-form" name="login-form" method="post" action="/<wi:out var="wi.proj.id"/>/admin/home.wsp" onsubmit="return encodePass()">
                    <input type="hidden" name="wi.page.prev" id="wi.page.prev" value="<wi:out var="wi.page.id"/>" />
                    <div class="form-group">
                      	<input id="login-username" type="text" name="tmp.user" class="input-material required">
                      	<label for="login-username" class="label-material">Usu�rio</label>
                    </div>
                    <div class="form-group">
                      	<input id="login-password" type="password" name="tmp.pass" class="input-material required">
                      	<label for="login-password" class="label-material">Senha</label>
                    </div>
                   
                    	<button type="submit" class="btn btn-primary">Login</button>
                   
                    <br />
                    <!--a id="login" href="index.html" class="btn btn-primary">Login</a-->
                    <!-- This should be submit button but I replaced it with <a> for demo purposes-->
                  </form><a href="#" class="forgot-pass">Esqueceu a senha?</a><br><small>N�o tem conta? </small><a href="register.html" class="signup">Signup</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="copyrights text-center">
        <p>Design by <a href="https://bootstrapious.com/admin-templates" class="external">Bootstrapious</a></p>
        <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
      </div>
    </div>
    <!-- Javascript files-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="/<wi:out var="wi.proj.id"/>/static/login/js/tether.min.js"></script>
    <script src="/<wi:out var="wi.proj.id"/>/static/login/js/bootstrap.min.js"></script>
    <script src="/<wi:out var="wi.proj.id"/>/static/login/js/jquery.cookie.js"> </script>
    <script src="/<wi:out var="wi.proj.id"/>/static/login/js/jquery.validate.min.js"></script>
    <script src="/<wi:out var="wi.proj.id"/>/static/login/js/front.js"></script>
    <wi:function expr="if(|tmp.message|!= && |wi.builder|==,
    <script type=\"text/javascript\">
      $(window).load(function(){
          $('#JanelaModal').modal('show');
      });
    </script>
    )"/>
    
    <script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/js/page.js"></script> 	
  	<script type="text/javascript" src="/<wi:out var="wi.proj.id"/>/js/md5.js"></script>
  	<script type="text/javascript">
  		history.go(1)
  		function encodePass() {
    		var wipwd="<wi:out var="wi.pwd.md5"/>";
    		var pass = calcMD5(document.forms[0]["tmp.pass"].value);
    		var codpass = calcMD5(pass+wipwd);
    		document.forms[0]["tmp.pass"].value=codpass;
    		return true;
  		}

    	function init(){
    
    	}
    </script>
    
    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID.-->
    <!---->
    <!--script>
      (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
      function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
      e=o.createElement(i);r=o.getElementsByTagName(i)[0];
      e.src='//www.google-analytics.com/analytics.js';
      r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
      ga('create','UA-XXXXX-X');ga('send','pageview');
    </script-->
  <wi:out var="wi.grid.form"/>
</body>
</html><w:endPage/>