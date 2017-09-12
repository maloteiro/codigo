//Mascara para valores de Moeda e Porcentagem 
//Modo de Usar:  onKeyPress="return(currencyFormat(this,'.',',',event))"
//É necessário que no INPUT tenha um identificação de "ID" e seja informado um "Maxlength"
function currencyFormat(fld, milSep, decSep, e) {
	var sep = 0;
	var key = '';
	var i = j = 0;
	var len = len2 = 0;
	var strCheck = '0123456789';
	var aux = aux2 = '';
	var whichCode;
	if(navigator.appName.indexOf("Netscape")!= -1)	 
		whichCode = e.which;	 
	 else	 
		whichCode = e.keyCode;	
    if (whichCode == 13) return true;
    if (whichCode == 8) return true;	
    if (whichCode == 9) return true;	
    if (whichCode == 0) return true;

	if (whichCode == 13 || whichCode == 0) {		//Enter
		return true;  
	}
	key = String.fromCharCode(whichCode);  // Get key value from key code
	if (strCheck.indexOf(key) == -1) {
		return false;  // Not a valid key
	}
	var Max = parseInt(document.getElementById(fld.id).maxLength);
	len = parseInt(fld.value.length);
	if (len < Max) { 
		for(i = 0; i < len; i++) {
			if ((fld.value.charAt(i) != '0') && (fld.value.charAt(i) != decSep)) {
				break;
			}
		}
		aux = '';
		for(; i < len; i++) {
			if (strCheck.indexOf(fld.value.charAt(i))!=-1) {
				aux += fld.value.charAt(i);
			}
		}
		aux += key;
				
		len = aux.length;
		if (len == 0) {
			fld.value = '';
		} else if (len == 1) {
			fld.value = '0'+ decSep + '0' + aux;
		} else if (len == 2) {
			fld.value = '0'+ decSep + aux;
		} else if (len > 2) {
			aux2 = '';
	
			for (j = 0, i = len - 3; i >= 0; i--) {
				if (j == 3) {
					aux2 += milSep;
					j = 0;
				}
				aux2 += aux.charAt(i);
				j++;
			}
			fld.value = '';
			len2 = aux2.length;
			for (i = len2 - 1; i >= 0; i--) {
				fld.value += aux2.charAt(i);
			}
			fld.value += decSep + aux.substr(len - 2, len);
		}	
	}	
	return false;
}
//Mascara para mostrar valores de Moeda e Porcentagem
function maskCurrency(val, milSep, decSep) {
	var aux="";
	var aux2="";
	
	var i,j;
			
	len = val.length;
	if (len == 0) {
		aux = '';
	} else if (len == 1) {
		aux = '0'+ decSep + '0' + val;
	} else if (len == 2) {
		aux = '0'+ decSep + val;
	} else if (len > 2) {
		aux2 = '';

		for (j = 0, i = len - 3; i >= 0; i--) {
			if (j == 3) {
				aux2 += milSep;
				j = 0;
			}
			aux2 += val.charAt(i);
			j++;
		}
		aux = '';
		len2 = aux2.length;
		for (i = len2 - 1; i >= 0; i--) {
			aux += aux2.charAt(i);
		}
		aux += decSep + val.substr(len - 2, len);
	}	
	return aux;
}