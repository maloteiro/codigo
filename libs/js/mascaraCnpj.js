//Mascara CNPJ
//Modo de usar: onkeydown="mascara_cnpj(this,document.form.cnpjUnidadeBenecifiada.value,event);"
function mascara_cnpj(objeto, cnpj,event)
{
	var BACKSPACE= 8;	 
	var key;	 
	var tecla;	 
	CheckTAB=true;	 
	if(navigator.appName.indexOf("Netscape")!= -1)	 
		tecla= event.which;	 
	 else	 
		tecla= event.keyCode;	 
	key = String.fromCharCode( tecla );
    var mycnpj = '';
    mycnpj = mycnpj + cnpj;
	if (tecla != BACKSPACE) {
	    if (mycnpj.length == 2) {
	        mycnpj = mycnpj + '.';
	        objeto.value = mycnpj;
	    }
	    if (mycnpj.length == 6) {
	        mycnpj = mycnpj + '.';
	        objeto.value = mycnpj;
	    }
	    if (mycnpj.length == 10) {
	        mycnpj = mycnpj + '/';
	        objeto.value = mycnpj;
	    }
	    if (mycnpj.length == 15) {
	        mycnpj = mycnpj + '-';
	        objeto.value = mycnpj;
	    }
	    if (mycnpj.length == 18) {
	    }
	}	
}