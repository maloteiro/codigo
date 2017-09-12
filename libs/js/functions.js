
	function $id(id) {
		try {
			return document.getElementById(id);	
		} catch (e) {
			alert("AJAX:\nNão foi possível encontrar o obj: " + id + "\nMessage: " + e.description);
			return false;
		}
	}
	
	function $name(name) {
		try {
			return document.getElementsByName(name);	
		} catch (e) {
			alert("AJAX:\nNão foi possível encontrar o obj: " + name + "\nMessage: " + e.description);
			return false;
		}
	}
	
	function $tag(tag) {
		try {
			return document.getElementsByTagName(tag);	
		} catch (e) {
			alert("AJAX:\nNão foi possível encontrar o obj: " + tag + "\nMessage: " + e.description);
			return false;
		}
	}
	
	function getValorRadio(nomeRadioButton){
		try {		
			var inputs = $tag('input');
			for (i=0; i < inputs.length; i++) {
				if (inputs[i].type == 'radio'){ 				
					if(inputs[i].name == nomeRadioButton) {
						if(inputs[i].checked == true) {
							return inputs[i].value;
						}
					}
				}
			}
		} catch (e) {
			alert("AJAX:\nNão foi possível retornar o valor do radio button: " + nomeRadioButton + "\nMessage: " + e.description);
			return false;
		}				
	}
	
	function getHTTP() {
		var xmlHttp;
		try {
			// Firefox, Opera 8.0+, Safari
			xmlHttp=new XMLHttpRequest();
		} catch (e) {
			// Internet Explorer
			try {
				xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e){
				try {
					xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e) {
					alert("Your browser does not support AJAX!");
					return false;
				}
			}
		}
		
		xmlHttp.onreadystatechange=function() {
			if(xmlHttp.readyState==4) {
				document.myForm.time.value=xmlHttp.responseText;
			}
		}
	//	xmlHttp.open("GET","index.php",true);
	//	xmlHttp.send(null PARAMS);
		return xmlHttp;
	}
	
	
	function setElementClass(objeto, classes) {
		try {
			objeto.className = classes;
		} catch(err) {
			return false;
		}
	}
	
	function criaElemento(parent, componente, id, type) {
		var elemento = new Object();
		elemento = document.createElement(componente);
		elemento.setAttribute('id', id);	
		elemento.setAttribute('name', id);	
		elemento.setAttribute('type', type);	
		parent.appendChild(elemento);
	}
	
	function criaElementoLink(parent, id, href) {
		var elemento = new Object();
		elemento = document.createElement('a');
		elemento.setAttribute('id', id);	
		elemento.setAttribute('href', href);
		parent.appendChild(elemento);
	}
	
	function criaFormulario(formAction) {
		var formulario = $id("sendFormulario");
		formulario = new Object();
		
		formulario = document.createElement("form");
		formulario.id = "sendFormulario";
		formulario.target = window.name = "appWindow"; //"_SELF";
		formulario.action = formAction;
		formulario.method = "POST";
					
		document.body.appendChild(formulario);
	
		return formulario;
	}
	
	function addChildFormulario(formulario, name, element, type) {
		var newField = document.createElement(element);
		newField.setAttribute('name', name);
		if(type) newField.setAttribute('type', type);
		formulario.appendChild(newField);	
		
		return formulario;
	}
	
	function addValueChildFormulario(formulario, name, value) {
		for(i = 0; i < formulario.elements.length; i++) {
			if(formulario.elements[i].name == name) {
				formulario.elements[i].value = value;
			}
		}	
		return formulario;
	}
	
	function processXML(obj){
	  var dataArray   = obj.getElementsByTagName("XML_TAG_NAME");
	  
	  //total de elementos contidos
	  if(dataArray.length > 0) {
		 //percorre o arquivo XML paara extrair os dados
		 for(var i = 1 ; i < dataArray.length ; i++) {
			var item = dataArray[i];
			//contéudo dos campos no arquivo XML
			var codigo    =  item.getElementsByTagName("XML_TAG_NAME")[0].firstChild.nodeValue;
			var descricao =  item.getElementsByTagName("XML_TAG_NAME")[0].firstChild.nodeValue;
			
			idOpcao.innerHTML = "()";
			
			//cria um novo option dinamicamente  
			var novo = document.createElement("option");
				//atribui um ID a esse elemento
				novo.setAttribute("id", "opt");
				//atribui um valor
				novo.value = codigo;
				//atribui um texto
				novo.text  = descricao;
				//finalmente adiciona o novo elemento
				document.forms[0].co_subgrupo.options.add(novo);
		 }
	  }
	  else {
		//caso o XML volte vazio, printa a mensagem abaixo
		idOpcao.innerHTML = "(message)";
	  }	  
	}
	
	function checkBrowser(){
	    var agt=navigator.userAgent.toLowerCase();
	    this.major = parseInt(navigator.appVersion);
	    this.minor = parseFloat(navigator.appVersion);
	    this.nav  = ((agt.indexOf('mozilla')!=-1) && ((agt.indexOf('spoofer')==-1)
	    && (agt.indexOf('compatible') == -1)));
	    this.nav2 = (this.nav && (this.major == 2));
	    this.nav3 = (this.nav && (this.major == 3));
	    this.vms   = (agt.indexOf("vax")!=-1) || (agt.indexOf("openvms")!=-1);
	}
		
	function showTag(idTag) {
		try {
			if($id(idTag).style.display == 'block') {
				document.getElementById(idTag).style.display = 'none';
			} else {				
				document.getElementById(idTag).style.display = 'block';
			}
		} catch(err) {
			return false;
		}
	}
	
	function validaEmail(mail) {
	    var er = new RegExp(/^[A-Za-z0-9_\-\.]+@[A-Za-z0-9_\-\.]{2,}\.[A-Za-z0-9]{2,}(\.[A-Za-z0-9])?/);
	    if(typeof(mail) == "string"){
			if(er.test(mail)){ return true; }
	    }else if(typeof(mail) == "object"){
	        if(er.test(mail.value)){
				return true;
			}
	    }else{
	        return false;
	    }
	}
	
	function linkPage(link) {

		var sendFormulario = new criaFormulario(link);	
		// Subimita o formulário via POST
		sendFormulario.submit();
		
	}
		
	function limpaCampo(campo) {
		try {
			campo.value = "";
		} catch(e) {
			return false;			
		}
	}
		
	function setSESSION(nome_session, valor_session) {
		try {		
			var objHTTP = new getHTTP();
				
			if(objHTTP) {
							
				objHTTP.open("POST", "?d=dados&a=dados&f=setSESSION", true);
				objHTTP.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
				
				objHTTP.onreadystatechange = function() {
					
					if(objHTTP.readyState == 1) {
						void(0);   
					}				
					if(objHTTP.readyState == 4 ) {
						void(0);
					}
				}
				var params = "nome_session=" + nome_session + "&" + "valor_session=" + valor_session;
				objHTTP.send(params);
			}
		} catch(err) {
			alert("SISTEMA: Não foi possível setar a SESSION['" + nome_session + "']\nMESSAGE: " + err.description);
		}
	}
		
	function limpaSESSION(nome_session) {
		try {		
			var objHTTP = new getHTTP();
				
			if(objHTTP) {
							
				objHTTP.open("POST", "?d=dados&a=dados&f=limpaSESSION", true);
				objHTTP.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
				
				objHTTP.onreadystatechange = function() {
					
					if(objHTTP.readyState == 1) {
						void(0);   
					}				
					if(objHTTP.readyState == 4 ) {
						void(0);
					}
				}
				var params = "nome_session=" + nome_session;
				objHTTP.send(params);
			}
		} catch(err) {
			alert("SISTEMA: Não foi possível limpar a SESSION['" + nome_session + "']\nMESSAGE: " + err.description);
		}
	}
	
	function validaData(obj) 
	{ 
		
		try 
		{
			situacao = "";
			alerta = "";
			
			if(obj.value != "")
			{
				// converte dia, mï¿½s e ano em nï¿½meros				
				dia = Number(obj.value.substr(0,2)); 
				mes = Number(obj.value.substr(3,2)); 
				ano = Number(obj.value.substr(6,4)); 
	
				// verifica se o dia, mï¿½s e ano sï¿½o nï¿½meros (Ex: 01/04/2005)
				if (isNaN(dia))
				{
					situacao = "falsa";
					alerta = "* Dia deve ser expresso em numerais!\n";
				}
					
				if (isNaN(mes))
				{
					situacao = "falsa";
					if (alerta == "")
					{
						alerta = "* Mês deve ser expresso em numerais!\n";
					}
					else
					{
						alerta = alerta+"* Mês deve ser expresso em numerais!\n";
					}
				}
				if (isNaN(ano))
				{
					situacao = "falsa";
					if (alerta == "")
					{
						alerta = "* Ano deve ser expresso em numerais!\n";
					}
					else
					{
						alerta = alerta+"* Ano deve ser expresso em numerais!\n";
					}
				}
									
				// verifica o dia valido para cada mï¿½s 
				if ((dia < 1)||(dia < 1 || dia > 30) && (  mes == 4 || mes == 6 || mes == 9 || mes == 11 ) || dia > 31) 
				{ 
					situacao = "falsa";
					if (alerta == "")
					{
						alerta = "* Dia inválido para esse mês!\n";
					}
					else
					{
						alerta = alerta+"* Dia inválido para esse mês!\n";
					}
				} 
		
				// verifica se o mes ï¿½ valido 
				if (mes < 1 || mes > 12 ) 
				{ 
					situacao = "falsa";
					if (alerta == "")
					{
						alerta = "* Mês inválido!\n"; 
					}
					else
					{
						alerta = alerta+"* Mês inválido!\n";
					}
				} 
		
				// verifica se ï¿½ ano bissexto 
				if (mes == 2 && ( dia < 1 || dia > 29 || ( dia > 28 && (parseInt(ano / 4) != ano / 4)))) 
				{ 
					situacao = "falsa";
					if (alerta == "")
					{
						alerta = "* Esse ano não é bissexto!\n"; 
					}
					else
					{
						alerta = alerta+"* Esse ano não é bissexto!\n";
					}
				}
				
				var referencia = document.getElementById('mes_referencia').value;
				var ano_referencia = referencia.substr(0,4); 
				var mes_referencia = referencia.substr(4,2);
				
								
				if(ano_referencia && ano_referencia != ano){
					situacao = "falsa";
					alerta = "* Ano informado incorretamente!\n"; 
				}
				
				if(mes_referencia && mes_referencia != mes){
					situacao = "falsa";
					alerta = "* Mês informado incorretamente!\n"; 
				}
	
				// verifica se o ano ï¿½ igual ao ano corrente
				/*var dataAtual 	= new Date();
				var anoAtual	= dataAtual.getFullYear();
				var mesAtual    = dataAtual.getMonth()+1;
				var diaAtual 	= dataAtual.getDate();*/
				
				    var datadigitada= new Date(ano,(mes-1),dia);
					var miliqq=datadigitada.getTime();
				
					var mydate= new Date();
				   	var mili=mydate.getTime();
				
				    var diaqq=parseInt(datadigitada.getDate());
				    var mesqq=parseInt(datadigitada.getMonth())+1;
				
				    if((dia!=diaqq) || (mes!=mesqq)){
				       situacao = "falsa";	
				       alerta = "A data digitada não é válida!\n";
				    }
				 /*   else if(miliqq > mili){
				      situacao = "falsa";
					  alerta = "Data Digitada maior que data atual!\n";
					}
	
				if ((diaAtual < dia)&&(mesAtual <= mes)&&(anoAtual <= ano))
				{
					situacao = "falsa";
					if (alerta == "")
					{
					 alerta = "* Data NÃO deve ser maior a Data de Hoje!\n";					
					}
					else
					{
					alerta = alerta+"* Data NÃO deve ser maior a Data de Hoje!\n";
					}
				}*/
	
				// verifica se a data estï¿½ em branco		
				if (obj.value == "") 
				{ 
					situacao = "falsa";
					if (alerta == "")
					{
						alerta = "* Data não pode ser em branco!\n"; 
					}
					else
					{
						alerta = alerta+"* Data não pode ser em branco!\n";
					}
				} 
					
				//verifica se a data possui menos de 10 dï¿½gitos
				if (obj.value.length <10 )
				{
					situacao = "falsa";
					if (alerta == "")
					{
						alerta = "* Data deve ser preenchida com 10 caracteres, no seguinte formato: (dd/mm/aaaa)!\n";
					}
					else
					{
						alerta = alerta+"* Data deve ser preenchida com 10 caracteres, no seguinte formato: (dd/mm/aaaa)!\n";
					}
				}
	
				if (situacao == "falsa") 
				{ 
					alert("Erro:\n\n"+alerta);
					obj.value = "";
					obj.focus(); 
				} 
			}
			
		} catch (e){
			return false;
		}
	}	
	
	function trim(txt) {
		while((txt.charAt(0)==" ")||(txt.charAt(txt.length-1)==" "))		
			txt = txt.replace(/^ /,"");
			txt = txt.replace(/ $/,"");
			txt = txt.replace("\n","");		
			txt = txt.replace("\t","");		
			
		return txt;
	}