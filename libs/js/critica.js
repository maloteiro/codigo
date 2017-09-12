<!--
function cNum(ob,c,min,max) {
 //c=1-remove zeros à esquerda
 if (ob.value=="") return;
 if (cpValid(ob.value, "0123456789") < 0) return cpErr(ob,"");
 if (c==1) ob.value=lTrim(ob.value,"0");
 if (min!=null) if (min>ob.value) return cpErr(ob,'O valor deve ser maior ou igual a '+min+'.');
 if (max!=null) if (max<ob.value) return cpErr(ob,'O valor deve ser menor ou igual a '+max+'.');
 return "";
}
function cVal(ob) {
 if (ob.value=="") return;
 var val=ob.value;
 if (val.substring(val.length-3,val.length-2)=="." ||
     val.substring(val.length-2,val.length-1)==".")
     val = mTr (val,".,",",.");
 val = mTr (val, ".", "");
 if (cpValid(val, "0123456789,") < 0) return cpErr(ob,"");
 var Dec='' + piece(val,',',2) + '00';
 val = lTrim(piece(val,',',1),'0');
 val = (val==''?'0':val) + Dec.substring(0,2);
 ob.value = formatInv(val, "___.___.___.___.___,__");
 return "";
}
function cDate(ob,anoatu,op,dtref,msg,ma) {
 // ma = "ma" mês e ano
 var Dia,Mes,Ano,ud;
 var val=mTr(ob.value, "/.,", "");
 var mesatu="";
 if (anoatu.length==10)
 {
	 mesatu=anoatu.substring(5,7);
	 anoatu=anoatu.substring(0,4);
 }
 if (anoatu.length==10)
 {
	 mesatu="";
 }
 anoatu=""+anoatu;
 mesatu=""+mesatu;

 if (val=="") return "";


 if (cpValid(val, "0123456789") < 0) return cpErr(ob,"");

 if (ma=="MA") val = "01" + val
 if (val.length==2) val = "" + val + "" + mesatu + "" + anoatu;
 if (val.length==4) val = "" + val + anoatu;
 if (val.length==6) {
    if (eval(val.substring(4,6))>30) anoatu="" + (eval(anoatu)-1);
    val = "" + val.substring(0,4) + anoatu.substring(0,2) + val.substring(4,6);
 }
 if (val.length!=8) return cpErr(ob,"Data inválida");
 Dia = eval(val.substring(0,2));
 Mes = eval(val.substring(2,4));
 Ano = eval(val.substring(4,8));

 if (Mes<1 || Mes>12) return cpErr(ob,"Mês inválido " + Mes);
 if (Ano<1920 || Ano>2050) return cpErr(ob,"Ano inválido " + Ano);
 ud = Ano%4==0 && Mes==2 ? 29 : ud=piece("31,28,31,30,31,30,31,31,30,31,30,31",",",Mes);
 if (Dia<1 || Dia>ud) return cpErr(ob,"Dia inválido");

 if (op!=null && op !="") {
    if (msg==null) msg="Data maior que "+dtref;
    if (dtref.indexOf("/")>0) dtref=dtInv(dtref);
    if (ma=="MA") {
       if (eval(val.substring(4,8)+val.substring(2,4)+op+dtref)) return cpErr(ob,msg);
    }  else
       if (eval(dtInv(val)+op+dtref )) return cpErr(ob,msg);
 }
 ob.value = formatInv(val, ma!="MA" ? "__/__/____" : "__/____");
 return "";
}
function cCep(ob) {
 var val=mTr (ob.value, ",.-/", "");
 if (ob.value=="") return;
 if (val.length!=8) return cpErr(ob,"Digite 8 numéricos");
 if (cpValid(val, "0123456789") < 0) return cpErr(ob,"");
 ob.value = formatInv(val, "_____-___");
}
function cCnpj(ob) {
 var val=mTr (ob.value, ",.-/", "");
 if (ob.value=="") return;
 if (val.length!=14) return cpErr(ob,"Digite 14 numéricos");
 if (cpValid(val, "0123456789") < 0) return cpErr(ob,"");
 var d1=0,d2=0;
 for (var i=0; i<4; i++)  d1 += val.substring(i,i+1)*(5-i);
 for (var i=4; i<12; i++) d1 += val.substring(i,i+1)*(13-i);
 for (var i = 0; i<5; i++)  d2 += val.substring(i,i+1)*(6-i);
 for (var i = 5; i<12; i++) d2 += val.substring(i,i+1)*(14-i);
 d1 = 11 - (d1%11); if (d1 >= 10) d1 = 0;
 d2 += d1 * 2;
 d2 = 11 - (d2%11); if (d2 >= 10) d2 = 0;
 if (""+d1+d2!=val.substring(12)) return cpErr(ob,"Dígito verificador inválido");
 ob.value = formatInv(val, "__.___.___/____-__");
}
function cCpf(ob) {
 var val=mTr (ob.value, ",.-/", "");
 if (ob.value=="") return;
 if (val.length!=11) return cpErr(ob,"Digite 11 numéricos");
 if (cpValid(val, "0123456789") < 0) return cpErr(ob,"");
 var D1=0;
 var D2=0;
 for (var M=0; M<9; M++) {
     D1 = D1 + (eval(val.substring(M,M+1)) * (10-M));
     D2 = D2 + (eval(val.substring(M,M+1)) * (11-M));
 }
 D1=11-(D1%11);
 D2=11-((D2 + (eval(val.substring(9, 10)) * (11-M)))%11);

 if (D1>9) D1=0;
 if (D2>9) D2=0;
 if ("" + D1 + D2 != val.substring(9,11)) return cpErr(ob,"Dígito verificador inválido");
 ob.value = format(val, "___.___.___-__");
}
function cMail(ob) {
 if (ob.value=="") return;
 var dlm=", ",s="";
 var array = ob.value.match(/([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z0-9._-]+)/gi);
 if (array)
    for (var i=0; i<array.length; i++) {
       if (i!=0) s+=dlm;
       s+=array[i];
    }
 if (s=="") return cpErr(ob,"Formato inválido do e-mail");
 return "";
}
function cTime(ob) {
 var val=ob.value;
 if (val=="") return;
 val = mTr (val, "h.,", ":::");
 if (cpValid(val, "0123456789:") < 0) return cpErr(ob,"");
 if (val.indexOf(":")<0) val = val.substring(0,2) + ":" + val.substring(2,4);
 var H = eval (piece(val, ":", 1) + " + 0");
 var M = eval (piece(val, ":", 2) + " + 0");

 if (H>23) return cpErr(ob,"Hora inválida");
 if (M>59) return cpErr(ob,"Hora inválida");
 H = "" + H;
 M = "" + M;
 if (H.length==1) H="0" + H;
 if (M.length==0) M="00";
 if (M.length==1) M="0" + M;
 ob.value = format("" + H + M, "__:__");
 return "";
}
function passw(isObr,log,sen,cnf) {
 var doc=document.forms[0];
 var objLog=doc[log];
 var objSen=doc[sen];
 var objCnf=doc[cnf];
 if (objLog.value.length<5) {alert("Digite pelo menos 5 caracteres para login."); objLog.focus(); return true;}
 if (isObr=="" || objSen.value!="") {
   if (objSen.value.length<5) {alert("Digite pelo menos 5 caracteres para senha."); objSen.focus(); return true;}
   if (objLog.value==objSen.value) {alert("A senha não pode ser igual ao login."); objSen.focus(); return true;}
   if (objLog.value.indexOf(objSen.value)>=0) {alert("A senha não pode ser parecida com o login."); objSen.focus(); return true;}
   if (obr(objCnf,"A confirmação é obrigatória")) return true;
   if (objSen.value!=objCnf.value) {alert("Senha diferente da confirmação de senha."); objCnf.focus(); return true;}
 }
 return false;
}
function cpValid(v,d) {
 var Err=0;
 for (var i=0; i<v.length; i++) {
    var c=v.substring(i, i+1);
    Err=d.indexOf(c);
    if (Err<0) {
       if (c==" ") c="espaço";
       alert ("Caracter inválido: " + c);
       break;
    }
 }
 return Err;
}
function cpErr(ob,msg) {
 if (msg!="") alert (msg);
 ob.focus(); ob.select(); 
 if (parent.CritLimparCampoErro!=null)  if (parent.CritLimparCampoErro==true) ob.value="";
 return "Erro";
}
function dtComp(d1,op,d2,m) {
 if (d1.value=="" || d2.value=="") return;
 if (eval(dtInv(d1.value) + op + dtInv(d2.value))) {
    alert (m==null ? "Data inicial maior que data final" : m);
    d1.focus();
    return true;
 }
 return false;
}
function dtInv(d) {
 d=mTr(d,"/","");
 return d.substring(4,8) + d.substring(2,4) + d.substring(0,2);
}
//-->