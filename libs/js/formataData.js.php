var isNav4 = false, isNav5 = false, isIE4 = false
var strSeperator = "/";
var vDateType = 3;
var vYearType = 4;
var vYearLength = 4;
var err = 0;
if(navigator.appName == "Netscape")
{
    if (navigator.appVersion < "5")
    {
        isNav4 = true;
        isNav5 = false;
    }
    else
    if (navigator.appVersion > "4")
    {
        isNav4 = false;
        isNav5 = true;
    }
}
else
{
    isIE4 = true;
}
function DateFormat(vDateName, vDateValue, e, dateCheck, dateType)
{
    vDateType = dateType;

	var dia_dig = vDateName.value.substr(0,2);
	var mes_dig = vDateName.value.substr(3,2);
	var ano_dig = vDateName.value.substr(6,4);

    if (vDateValue == "~")
    {
        alert("AppVersion = "+navigator.appVersion+" \nNav. 4 Version = "+isNav4+" \nNav. 5 Version = "+isNav5+" \nIE Version = "+isIE4+" \nYear Type = "+vYearType+" \nDate Type = "+vDateType+" \nSeparator = "+strSeperator);
        vDateName.value = "";
        vDateName.focus();
        return true;
    }
    var whichCode = (window.Event) ? e.which : e.keyCode;
    if (vDateValue.length > 8 && isNav4)
    {
        if ((vDateValue.indexOf("-") >= 1) || (vDateValue.indexOf("/") >= 1))
        return true;
    }
    var alphaCheck = " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ/-";
    if (alphaCheck.indexOf(vDateValue) >= 1)
    {
        if (isNav4)
        {
            vDateName.value = "";
            vDateName.focus();
            vDateName.select();
            return false;
        }
        else
        {
            vDateName.value = vDateName.value.substr(0, (vDateValue.length-1));
            return false;
        }
    }
    if (whichCode == 8)
    return false;
    else
    {
        var strCheck = '47,48,49,50,51,52,53,54,55,56,57,58,59,95,96,97,98,99,100,101,102,103,104,105';
        if (strCheck.indexOf(whichCode) != -1)
        {
            if (isNav4)
            {
                if (((vDateValue.length < 6 && dateCheck) || (vDateValue.length == 7 && dateCheck)) && (vDateValue.length >=1))
                {
                    alert("Data invÃ¡lida!\nVerifique a data informada e tente novamente.");
                    vDateName.value = "";
                    vDateName.focus();
                    vDateName.select();
                    return false;
                }
                if (vDateValue.length == 6 && dateCheck)
                {
                    var mDay = vDateName.value.substr(2,2);
                    var mMonth = vDateName.value.substr(0,2);
                    var mYear = vDateName.value.substr(4,4)
                    if (mYear.length == 2 && vYearType == 4)
                    {
                        var mToday = new Date();
                        var checkYear = mToday.getFullYear() + 30;
                        var mCheckYear = '20' + mYear;
                        if (mCheckYear >= checkYear)
                        mYear = '19' + mYear;
                        else
                        mYear = '20' + mYear;
                    }
                    var vDateValueCheck = mMonth+strSeperator+mDay+strSeperator+mYear;
                    if (!dateValid(vDateValueCheck))
                    {
                        alert("Data invÃ¡lida!\nVerifique a data informada e tente novamente.");
                        vDateName.value = "";
                        vDateName.focus();
                        vDateName.select();
                        return false;
                    }
                    return true;
                }
                else
                {
                    if (vDateValue.length >= 8 && dateCheck)
                    {
                        if (vDateType == 3)
                        {
                            var mMonth = vDateName.value.substr(2,2);
                            var mDay = vDateName.value.substr(0,2);
                            var mYear = vDateName.value.substr(4,4)
                            vDateName.value = mDay+strSeperator+mMonth+strSeperator+mYear;

	                    }
                        var vDateTypeTemp = vDateType;
                        vDateType = 1;
                        var vDateValueCheck = mMonth+strSeperator+mDay+strSeperator+mYear;
                        if (!dateValid(vDateValueCheck))
                        {
                            alert("Data invÃ¡lida!\nVerifique a data informada e tente novamente.");
                            vDateType = vDateTypeTemp;
                            vDateName.value = "";
                            vDateName.focus();
                            vDateName.select();
                            return false;
                        }
                        vDateType = vDateTypeTemp;
                        return true;
                    }
                    else
                    {
                        if (((vDateValue.length < 8 && dateCheck) || (vDateValue.length == 9 && dateCheck)) && (vDateValue.length >=1))
                        {
                            alert("Data invÃ¡lida!\nVerifique a data informada e tente novamente.");
                            vDateName.value = "";
                            vDateName.focus();
                            vDateName.select();
                            return false;
                        }
                    }
                }
            }
            else // not nav4 
            {
                if (((vDateValue.length < 8 && dateCheck) || (vDateValue.length == 9 && dateCheck)) && (vDateValue.length >=1))
                {
                    alert("Data invÃ¡lida!\nVerifique a data informada e tente novamente.");
                    vDateName.value = "";
                    vDateName.focus();
                    return true;
                }
                if (vDateValue.length >= 8 && dateCheck)
                {
                    if (vDateType == 3)
                    {
                        var mDay = vDateName.value.substr(0,2);
                        var mMonth = vDateName.value.substr(3,2);
                        var mYear = vDateName.value.substr(6,4)
                    }
                    if (vYearLength == 4)
                    {
                        if (mYear.length < 4)
                        {
                            alert("Data invÃ¡lida!\nVerifique a data informada e tente novamente.");
                            vDateName.value = "";
                            vDateName.focus();
                            return true;
                        }
                    }
                    var vDateTypeTemp = vDateType;
                    vDateType = 1;
                    var vDateValueCheck = mMonth+strSeperator+mDay+strSeperator+mYear;
                    if (mYear.length == 2 && vYearType == 4 && dateCheck)
                    {
                        var mToday = new Date();
                        var checkYear = mToday.getFullYear() + 30;
                        var mCheckYear = '20' + mYear;

                        if (mCheckYear >= checkYear)
                        	mYear = '19' + mYear;
                        else
	                        mYear = '20' + mYear;

                        vDateValueCheck = mMonth+strSeperator+mDay+strSeperator+mYear;

                        if (vDateTypeTemp == 1)
                        	vDateName.value = mMonth+strSeperator+mDay+strSeperator+mYear;
                        if (vDateTypeTemp == 3)
	                        vDateName.value = mDay+strSeperator+mMonth+strSeperator+mYear;
                    }
                    if (!dateValid(vDateValueCheck))
                    {
                    
                        alert("Data invÃ¡lida!\nVerifique a data informada e tente novamente.");
                        vDateType = vDateTypeTemp;
                        vDateName.value = "";
                        vDateName.focus();
                        return true;
                    }
                    vDateType = vDateTypeTemp;
                    return true;
                }
                else
                {
                    if (vDateType == 3)
                    {
                        if (vDateValue.length == 2)
                        {
                            vDateName.value = vDateValue+strSeperator;
                        }
                        if (vDateValue.length == 5)
                        {
                            vDateName.value = vDateValue+strSeperator;
                        }
                    }
                    return true;
                }
            } // isIE

            if (vDateValue.length == 10&& dateCheck)
            {
                if (!dateValid(vDateName))
                {
                    alert("Data invÃ¡lida!\nVerifique a data informada e tente novamente.");
                    vDateName.focus();
                    vDateName.select();
                }
            }
            return false;
        }
        else
        {
            if (isNav4)
            {
                vDateName.value = "";
                vDateName.focus();
                vDateName.select();
                return false;
            }
            else
            {
                vDateName.value = vDateName.value.substr(0, (vDateValue.length));
                return false;
            }
        }

    }
}
function dateValid(objName)
{
    var strDate;
    var strDateArray;
    var strDay;
    var strMonth;
    var strYear;
    var intday;
    var intMonth;
    var intYear;
    var booFound = false;
    var datefield = objName;
    var strSeparatorArray = new Array("-"," ","/",".");
    var intElementNr;
    var strMonthArray = new Array(12);
    strMonthArray[0] = "Jan";
    strMonthArray[1] = "Feb";
    strMonthArray[2] = "Mar";
    strMonthArray[3] = "Apr";
    strMonthArray[4] = "May";
    strMonthArray[5] = "Jun";
    strMonthArray[6] = "Jul";
    strMonthArray[7] = "Aug";
    strMonthArray[8] = "Sep";
    strMonthArray[9] = "Oct";
    strMonthArray[10] = "Nov";
    strMonthArray[11] = "Dec";
    strDate = objName;
    if (strDate.length < 1)
    {
        return true;
    }
    for (intElementNr = 0; intElementNr < strSeparatorArray.length; intElementNr++)
    {
        if (strDate.indexOf(strSeparatorArray[intElementNr]) != -1)
        {
            strDateArray = strDate.split(strSeparatorArray[intElementNr]);
            if (strDateArray.length != 3)
            {
                err = 1;
                return false;
            }
            else
            {
                strDay = strDateArray[0];
                strMonth = strDateArray[1];
                strYear = strDateArray[2];
            }
            booFound = true;
        }
    }
    if (booFound == false)
    {
        if (strDate.length>5)
        {
            strDay = strDate.substr(0, 2);
            strMonth = strDate.substr(2, 2);
            strYear = strDate.substr(4);
        }
    }
    if (strYear.length == 2)
    {
        strYear = '20' + strYear;
    }
    strTemp = strDay;
    strDay = strMonth;
    strMonth = strTemp;
    intday = parseInt(strDay, 10);
    if (isNaN(intday))
    {
        err = 2;
        return false;
    }
    intMonth = parseInt(strMonth, 10);
    if (isNaN(intMonth))
    {
        for (i = 0;i<12;i++)
        {
            if (strMonth.toUpperCase() == strMonthArray[i].toUpperCase())
            {
                intMonth = i+1;
                strMonth = strMonthArray[i];
                i = 12;
            }
        }
        if (isNaN(intMonth))
        {
            err = 3;
            return false;
        }
    }
    intYear = parseInt(strYear, 10);
    if (isNaN(intYear))
    {
        err = 4;
        return false;
    }
    if (intMonth>12 || intMonth<1)
    {
        err = 5;
        return false;
    }
    if ((intMonth == 1 || intMonth == 3 || intMonth == 5 || intMonth == 7 || intMonth == 8 || intMonth == 10 || intMonth == 12) && (intday > 31 || intday < 1))
    {
        err = 6;
        return false;
    }
    if ((intMonth == 4 || intMonth == 6 || intMonth == 9 || intMonth == 11) && (intday > 30 || intday < 1))
    {
        err = 7;
        return false;
    }
    if (intMonth == 2)
    {
        if (intday < 1)
        {
            err = 8;
            return false;
        }
        if (LeapYear(intYear) == true)
        {
            if (intday > 29)
            {
                err = 9;
                return false;
            }
        }
        else
        {
            if (intday > 28)
            {
                err = 10;
                return false;
            }
        }
    }
    return true;
}

function LeapYear(intYear)
{
    if (intYear % 100 == 0)
    {
        if (intYear % 400 == 0)
        {
            return true;
        }
    }
    else
    {
        if ((intYear % 4) == 0)
        {
            return true;
        }
    }
    return false;
}

		
// Script para validaï¿½ï¿½o da data.
	
 function verifica_data (obj) 
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

			// verifica se o ano ï¿½ igual ao ano corrente
			/*var dataAtual 	= new Date();
			var anoAtual	= dataAtual.getFullYear();
			var mesAtual    = dataAtual.getMonth()+1;
			var diaAtual 	= dataAtual.getDate();*/
			
			    var datadigitada= new Date(ano,(mes-1),dia);
				var miliqq=datadigitada.getTime();
			
				var mydate= new Date()
			   	var mili=mydate.getTime();
			
			    var diaqq=parseInt(datadigitada.getDate());
			    var mesqq=parseInt(datadigitada.getMonth())+1;
			
			    if((dia!=diaqq) || (mes!=mesqq)){
			       situacao = "falsa";	
			       alerta = "A data digitada não é válida!\n";
			    }
			    else if(miliqq > mili){
			      situacao = "falsa";
				  alerta = "Data Digitada maior que data atual!\n";
				}

			/*if ((diaAtual < dia)&&(mesAtual <= mes)&&(anoAtual <= ano))
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
	}