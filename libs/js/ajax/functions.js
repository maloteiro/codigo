var doc = document;
doc.HEventArray = new Array();

function HEvent(prjId){
	if(!prjId) {
		prjId = window.location.href.split('/')[3];
	}
	this.project 		= prjId;
	this.populateCombo 	= populateCombo;
	this.responsexml 	= processXmlResponse;
	this.update 		= updateDatabase;
}

/* Função de retorno do ajax, com essa função é possível montar a janela de retorno do ajax */
function updateDatabase(form, action){
	if (form) {
		$.ajax({
			type: 'POST',
			url: '?',
			data: $("#" + form).serialize()+'&action='+action,
			beforeSend: function(){
			
			},
			success: function(txt){				
				var texto = processXmlResponse(txt);
			}
		});
	}else{
		alert('Não foi possível, enviar a sua requisição.');
	}
}

function processXmlResponse(txt){
	this.debug = true;	
	var xmlDoc;
	var mensagem;
	var identificacao;
	var campo;
	//alert(txt)	
	try {		
		xmlDoc = new ActiveXObject("Msxml2.DOMDocument");						
		xmlDoc.async = false;
		xmlDoc.resolveExternals = false;
		if(!xmlDoc.loadXML(txt)) {						
			if (this.debug) alert(xmlDoc.parseError.reason);
			return xmlDoc.parseError.reason;
		}
		if (xmlDoc.getElementsByTagName('retorno').length > 0) {
			campo 			= xmlDoc.getElementsByTagName('campo')[0].firstChild.nodeValue;			
			mensagem 		= xmlDoc.getElementsByTagName('mensagem')[0].firstChild.nodeValue;
			identificacao 	= xmlDoc.getElementsByTagName('identificacao')[0].firstChild.nodeValue;
		}		
	} catch(er) {
		xmlDoc = new DOMParser().parseFromString(txt, "text/xml").documentElement;
		if (xmlDoc.getElementsByTagName('retorno')) {
			campo 			= xmlDoc.getElementsByTagName('campo')[0].firstChild.nodeValue;			
			mensagem 		= xmlDoc.getElementsByTagName('mensagem')[0].firstChild.nodeValue;
			identificacao 	= xmlDoc.getElementsByTagName('identificacao')[0].firstChild.nodeValue;			
		}
	}
	//alert(identificacao[0].firstChild.nodeValue);
	
	$('#'+campo).attr('value',identificacao);	
	var html = '<p><span class="ui-icon ui-icon-circle-check" style="float:left; margin:0 7px 50px 0;"></span>'+mensagem+'</p>';	
	$("#dialog-message").html(html);
	$("#dialog-message").dialog('open');			
	return true;
}

function populateCombo(combo, a, d, f, valor) {
	$.ajax({
		type: 'POST',
		url: '?',
		data: 'a='+a+'&d='+d+'&f='+f+'&valor='+valor+'&combo='+combo,
		beforeSend: function(){			
		},
		success: function(txt){						
			$('#widget-'+combo).html(txt);						
		}
	});
		
	//var elemento = '<select id="'+combo+'" name="'+combo+'" class="required selectcor">';
	//elemento	+= '<option value="'+parametro+'">'+a+'</option>';
	//elemento	+= '</select>';
	//$('#widget-'+combo).html(elemento);   
	return true;
}

$(function() {
	$("body").append("<div id=\"mensagem\"></div>");
		
	// a workaround for a flaw in the demo system (http://dev.jqueryui.com/ticket/4375), ignore!
	$("#mensagem").dialog("destroy");

	$("#mensagem").dialog({
		resizable: false,
		autoOpen: false,
		modal: true,
		buttons: {
			Ok: function() {
				$(this).dialog('close');
			}
		}
	});
	prepareInputsForHints();
});

function prepareInputsForHints() {	
	var inputs = document.getElementsByTagName("input");
	for (var i=0; i<inputs.length; i++){
		// test to see if the hint span exists first
		if (inputs[i].parentNode.getElementsByTagName("span")[0]) {
			// the span exists!  on focus, show the hint
			inputs[i].onfocus = function () {
				this.parentNode.getElementsByTagName("span")[0].style.display = "inline";
			}
			// when the cursor moves away from the field, hide the hint
			inputs[i].onblur = function () {
				this.parentNode.getElementsByTagName("span")[0].style.display = "none";
			}
		}
	}
	
	//var inputs = document.getElementsByTagName("radio");
	//alert(inputs.length)
	
	// repeat the same tests as above for selects

	var selects = document.getElementsByTagName("select");

	for (var k=0; k<selects.length; k++){
		if (selects[k].parentNode.getElementsByTagName("span")[0]) {
			selects[k].onfocus = function () {
				this.parentNode.getElementsByTagName("span")[0].style.display = "inline";
			}
			selects[k].onblur = function () {
				this.parentNode.getElementsByTagName("span")[0].style.display = "none";
			}
		}
	}
	
	var textareas = document.getElementsByTagName("textarea");
	for (var i=0; i<textareas.length; i++){
		// test to see if the hint span exists first
		if (textareas[i].parentNode.getElementsByTagName("span")[0]) {
			// the span exists!  on focus, show the hint
			textareas[i].onfocus = function () {
				this.parentNode.getElementsByTagName("span")[0].style.display = "inline";
			}
			// when the cursor moves away from the field, hide the hint
			textareas[i].onblur = function () {
				this.parentNode.getElementsByTagName("span")[0].style.display = "none";
			}
		}
	}
}

