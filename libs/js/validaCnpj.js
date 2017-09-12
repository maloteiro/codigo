//Valida CNPJ.
function isCNPJ(campo){
	var i,j;
	strCNPJ	= campo.value;
	if (strCNPJ=='') return true;
	while (strCNPJ.indexOf('.')>-1 || strCNPJ.indexOf('/')>-1 || strCNPJ.indexOf('-')>-1){
		strCNPJ				= strCNPJ.replace('.','');
		strCNPJ				= strCNPJ.replace('/','');
		strCNPJ				= strCNPJ.replace('-','');
	}
    if (strCNPJ=='00000000000000') return false;
	strDV				= strCNPJ.substr(12, 2);
	intDigito			= 0;
	strControle			= '';
	strMultiplicador	= '543298765432';
	strCNPJ 			= strCNPJ.substr(0, 12);
	for(var j = 1; j <= 2; j++){
		intSoma = 0;
		for(var i = 0; i <= 11; i++){
			intSoma += (parseInt(strCNPJ.substr(i, 1), 10) * parseInt(strMultiplicador.substr(i, 1), 10))
		}
		if(j == 2){intSoma += (2 * intDigito)}
			intDigito = (intSoma * 10) % 11;
		if(intDigito == 10){intDigito = 0}
			strControle += intDigito.toString();
		strMultiplicador = '654329876543';
	}
	if(strControle == strDV)
		return true;
	 else{		
		return false;
	}
}