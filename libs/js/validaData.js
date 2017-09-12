//Função para Validação de Data
function DataInicioFim(objeto01, objeto02){
	 var arrayData01 = objeto01.value.split("/");
	 var arrayData02 = objeto02.value.split("/");
	 if (Number(arrayData02[2]) > Number(arrayData01[2])) {
	   return true;
	 } else if (Number(arrayData02[2]) < Number(arrayData01[2])) {
       return false;  
	 };	
	 if (Number(arrayData02[1]) > Number(arrayData01[1])) {
	   return true;
	 } else if (Number(arrayData02[1]) < Number(arrayData01[1])) {
	   return false;  
	 };
	 if (Number(arrayData02[0]) < Number(arrayData01[0])) {
	   return false;
	 } else if (Number(arrayData02[0]) < Number(arrayData01[0])) {
	   return false;  
	 };
	 return true; 
}
function validaData(objeto,data){
  var dataAtual = new Date;
      anoAtual  = dataAtual.getFullYear();
  if (!objeto.value == 0){
  	erro=0;
    barras = objeto.value.split("/");
    if (barras.length == 3){
      dia = barras[0];
      mes = barras[1];
      ano = barras[2];
      resultado = (!isNaN(dia) && (dia > 0) && (dia < 32)) && (!isNaN(mes) && (mes > 0) && (mes < 13)) && (!isNaN(ano) && (ano.length == 4) && (ano > 1899));
      if (!resultado){
	    return false;
      } else {
	    dataValida = true;
	    switch (mes)
		{
		  case '02':
		    if ((ano % 4) == 0) {
		      if (dia > 29)		
			    dataValida = false;
		    }
		    else if (dia > 28)		
                dataValida = false;
			break;
		  case '04':
		  case '06':
		  case '09':
		  case '11':
		    if (dia > 30)
			  dataValida = false;
			break;
		}
	  }		
	  if (!dataValida) {
	  	objeto.focus();
	  	objeto.select();
	  	return false;
		}
	}
  } else {
  	objeto.value = '';				
    objeto.focus();
    return false;
  }
  return true;
}