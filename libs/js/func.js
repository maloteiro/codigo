<!--
function AbreURL(url){
	window.location=url;
}
function AbreJanela(url,nome,left,top,width,height,scrol) {
	winAbrejanela = window.open(url,nome,'left='+left+',top='+top+',width='+width+',height='+height+',scrollbars='+scrol);
	winAbrejanela.focus();
}

function muda_class(nome_class,pro_class) {
	nome_class.className=pro_class;
}

function msger(m) {
 if (m=="") return;
 if (m=="msgins") {alert("Não foi possível gravar os dados.");  return;}
 if (m=="msgupd") {alert("Não foi possível alterar os dados."); return;}
 if (m=="msgdel") {alert("Não foi possível excluir os dados."); return;}
 alert(m);
}
function writeBtn(n,v,pg,cd,cs) {
 if (cs==null) cs=pg+'ins';
 if (cd==null) cd=pg+'del';
 document.write('<input type="hidden" name="acao" value="'+cs+'">');
 document.write('<input type="hidden" name="'+n+'" value="'+v+'">');
 document.write('<a href="javascript:submitMe()"><img src="imagens_projeto/btn_gravar.gif" border="0"></a> ');
 if (v!='0' && cd!='') document.write('<a href="javascript:rgdelete('+"'"+n+"','"+cd+"'"+')"><img src="imagens_projeto/btn_excluir.gif" border="0"></a> ');
 document.write('<a href="javascript:limpar()"><img src="imagens_projeto/btn_limpar.gif" border="0"></a>');
}
function rgdelete(n,d) {
 var doc=document.forms[0];
 if (doc[n].value=='0') {alert('Selecione o registro para exclusão.'); return;}
 if (!confirm('Confirma exclusão deste registro ?')) return;
 doc['acao'].value=d;
 doc.submit();
}
function obr(Id,Msg,ind) {
 var tp=Id.type; if (tp==null) tp="radio";
 if (tp.indexOf("hidden")>=0) return;
 if (tp.indexOf("text")>=0 || tp.indexOf("password")>=0) {
    if (Id.value!="") return false;
 }  else
    if (tp.indexOf("select")>=0) {
       if (ind==null) {if (Id.selectedIndex>=0) return false;}
       else  if (Id.selectedIndex>ind) return false;
    }  else
       for (var i=0; i<Id.length; i++) if (Id[i].checked) return false;
 if (Msg==null) Msg="Campo Obrigatório";
 if (Msg=='') Msg="Campo Obrigatório";
 alert (Msg);
 tp=='radio' ? Id[0].focus() : Id.focus();
 return true;
}
function obrk(Id,Msg,ind) {
 if (Id.type.indexOf("hidden")>=0) return;
 if (Id.type.indexOf("select")<0) {
    if (Id.value!="") return false;
 }  else
    if (Id.type.indexOf("radio")>=0) {
	   checado=false;
       for (var i=0; i<Id.length; i++)
          if (Id[i].checked) checado=true;
	   if (checado) return false;
	   else return true;

    }  else
       if (ind==null) {if (Id.selectedIndex>=0) return false;}
       else  if (Id.selectedIndex>ind) return false;
 if (Msg!=null) alert (Msg);
 else alert ("Campo Obrigatório");
 Id.focus();
 return true;
}
function clearForm(frm,foco,ind) {
 if (frm==null || frm=="") frm=document.forms[0];
 if (foco==null) foco=0;
 if (ind==null) ind=0;
 for (var i=0; i<frm.elements.length; i++)
    with (frm.elements[i]) {
      if (type.indexOf("text")>=0) value="";
      else if (type.indexOf("hidden")>=0) value="";	  
      else if (type.indexOf("password")>=0) value="";	  	  
      else if (type.indexOf("textarea")>=0) text="";
      else if (type.indexOf("select")>=0) selectedIndex=ind;
      else if (type.indexOf("checkbox")>=0) checked=false;
      else if (type.indexOf("radio")>=0) checked=false;
    }
 frm.elements[foco].focus();
}

function clearRow(l,v) {
 if (v==null) v="";
 for (var i=0; i<l.length; i++)
    if (l.options[i].value==v) {
       for (var j=i; j<l.length-1; j++) {
          l.options[j].value=l.options[j+1].value;
          l.options[j].text =l.options[j+1].text;
       }
       l.length--;
    }
}
function addItem(l,v,t) {
 var q=l.length;
 l.length++;
 l.options[q].value=v;
 l.options[q].text=t;
}
function getCheck(l) {
 return l.checked ? l.value : "0";
}
function selCheck(l, v) {
 l.checked=v=="1"?true:false;
}
function yesCheck(l) {
 return l==1 ? 'Sim' : '&nbsp;';
}
function getList(f,t) {
 var i=f.selectedIndex;
 return i<0 ? "" : t=="text" ? f.options[i].text : f.options[i].value;
}
function selList(l, v1, v2) {
 for (var i=0; i < l.length; i++)
    if (l.options[i].value==v1) {l.options[i].selected = true; return;}
 for (var i=0; i < l.length; i++)
    if (l.options[i].value==v2) {l.options[i].selected = true; return;}
}
function selRadio(l,v) {
 for (var i=0; i<l.length; i++) if (l[i].value==v) {l[i].checked = true; return;}
}
function setArea(ob,t,v) {
 ob.value = t=='i' ? txFormat(t,ob.value) : ob.value=txFormat(t,v);
}
function setCheck(h,c,v) {
 if (h=='') {
    if (c.type=='checkbox') c.checked=v;
    return;
 }
 if (c==null) c=eval('document.forms[0].'+h.name+'x');
 h.value = c.checked ? c.value : 0;
}
function dtFormat(t,d) {
 if (d=="" || d=="0" || d=="&nbsp;" || d=="0000-00-00") return t=="i" ? 0 : t=="E" ? "&nbsp;" : "";
 if (t=="i") return d.substring(6,10)+"-"+d.substring(3,5)+"-"+d.substring(0,2);
 else return d.indexOf("/")>0 ? d : d.substring(8,10)+"/"+d.substring(5,7)+"/"+d.substring(0,4);
}
function vlFormat(t,v) {
 v=""+v;
 if (v=="" || v=="&nbsp;" || v=="0" || v=="0.00") return t=="i" ? 0 : t=="E" ? "&nbsp;" : "";
 if (t=="i") return mTr(v,",.",".");
 v=piece(v,".",1) + (piece(v,".",2)+"00").substring(0,2);
 return formatInv(v,"___.___.___.___.___,__");
}
function txFormat(t,s,c,html) {
 if (c==null) c="<br>";
 if (html==null) html=true;
 var sai="";
 if (t=="i") {
    for (var i=0; i<s.length; i++)
       if (s.charCodeAt(i)!=13) sai+=s.charCodeAt(i)==10 ? c : s.substring(i,i+1);
    return html ? txHtml("i",sai) : sai;
 }
 if (t=="e") {
    for (var i=0; i<s.length; i++){
       if (s.substring(i,i+c.length)==c) {sai+="\n"; i+=c.length-1;}
       else sai+=s.substring(i,i+1);
    }
    return txHtml("e",sai);
 }
 for (var i=0; i<s.length; i++){
    if (s.substring(i,i+c.length)==c) {sai+=t; i+=c.length-1;}
    else sai+=s.substring(i,i+1);
 }
 return sai;
}
function txHtml(t,s) {
 var sai="";
 if (t=="i") {
    for (var i=0; i<s.length; i++) sai+=s.charAt(i)=="'" ? '&apos;' : s.charAt(i);
    return sai;
 }
 if (t=="e")
    while (true) {
       var i=s.indexOf("&apos;");
       if (i<0) break;
       s=s.substring(0,i)+"'"+s.substring(i+6);
    }
  return s;
}
function format(s,f) {
 var sai="";
 var j=0;
 for (var i=0; i<f.length; i++)
   if (f.substring(i,i+1)=="_") {
      sai+=s.substring(j,j+1);
      j++;
      if (j>=s.length) break;
   }  else sai+=f.substring(i, i+1);
 return sai;
}
function formatInv(s,f) {
 var sai="";
 s=mTr(s,".,-/","");
 if (mTr(s,"0","")=="") return "0";
 var j = s.length-1;
 for (var i=f.length-1; i>=0; i--)
   if (f.substring(i,i+1)=="_") {
      sai = s.substring(j,j+1) + sai;
      j--;
      if (j<0) break;
   }  else sai=f.substring(i, i+1) + sai;
 return sai;
}
function lTrim(s,c) {
 for (var j=0; j<s.length; j++) if (s.substring(j,j+1)!=c) break;
 return s.substring(j);
}
function mTr(s,s1,s2) {
 var p;
 var sai="";
 for (var j=0; j<s.length; j++) {
    p=s1.indexOf(s.substring(j,j+1));
    sai=sai + (p<0 ? s.substring(j, j+1) : s2.substring(p, p+1));
 }
 return sai;
}
function piece(s, d, p1) {
 var i,posi;
 if ((s=="") || (p1<1)) return "";
 for (i=1; i <= p1; i++) {
    posi=s.indexOf(d)
    if (i==p1) {
       if (posi < 0) posi=s.length; //último
       s=s.substring(0, posi);
       break;
    }
    if (posi<0) {s=""; break;}
    s=s.substring(posi + d.length, s.length);
 }
 return s;
}
function qtChar(s,c) {
 var qtChar=0;
 var tam=c.length;
 for (var j=0; j<s.length; j++) if (s.substring(j,j+tam)==c) qtChar++;
 return qtChar;
}
function roundVal(v) {
 v=""+v;
 var d=piece(v,".",2)+"00";
 return eval(piece(v,".",1) + "." + d.substring(0,2));
}
function strToInt(s) {
 s=lTrim(s,"0");
 if (s=="") return 0;
 return parseInt(s);
}
function writeImg(nm,pos,tx) {
 if (nm!='') if (nm.substring(nm.length-1)=='/') nm='';
 if (nm=='') {
    if (tx!=null) document.write(tx);
    return;
 }
 if (pos!=null) {
    if (pos>0) pos=piece('left,center,right',',',pos);
    if (pos=='center')
       document.write('<center><img src="banners/'+nm+'" border="0"></center>');
    else
       document.write('<img src="banners/'+nm+'" border="0" align="'+pos+'">');
 }  else
    document.write('<img src="banners/'+nm+'" border="0">');
}
function newLayer(nm, lin, col, alt, lar, vis, ind, tx) {
 if (document.layers) {
    document.writeln('<layer name="' + nm + '" left=' + col + ' top=' + lin + ' width=' + lar + ' height=' + alt + ' visibility=' + vis + ' z-index=' + ind + '>');
    document.writeln(tx);
    document.writeln('</layer>');
 }  else {
    document.writeln('<div id="' + nm + '" style="position:absolute; left:' + col + 'px; top:' + lin + 'px; width:' + lar + 'px; height:' + alt + 'px; visibility:' + (vis=="show" ? 'visible' : 'hidden') + '; z-index=' + ind + '">');
    document.writeln(tx);
    document.writeln('</div>');
 }
}
function visLayer(nm,sh) {
 if (sh==null) sh="show"; //hide
 if (document.layers) document.layers[nm].visibility = sh;
 else document.all[nm].style.visibility = sh=="hide" ? "hidden" : "visible";
}
function writeLayer(nm,tx) {
 if (document.layers) {
    var lay=eval("document."+nm);
    lay.document.open();
    lay.document.write(tx);
    lay.document.close();
 }  else {
    var lay=eval("document.all."+nm);
    lay.innerHTML=tx;
 }
}
function wopen(pg,w,h,tg) {
 if (tg==null) tg='_blank';
 win=window.open(pg,tg,'toolbar=no,location=no,directories=no,status=no,menubar=no,menubar=no,scrollbars=yes,resizable=yes,width='+w+',height='+h);
}
function tHtm(obj) {
 var m="Este campo não permite a inclusão de html.\nSelecione o campo e clique em html.";
 var lastObj=document.forms[0][obj];
 if (lastObj.type!="text" && lastObj.type!="textarea") {alert(m); return;}
 if (lastObj.type=="text") if (lastObj.maxlength<100) {alert(m); return;}
 win=window.open('uti20.wsp?lastObj='+obj,'_blank','toolbar=no,location=no,directories=no,status=no,menubar=no,menubar=no,scrollbars=yes,resizable=yes,width=740,height=420');
 win.main=self;
}
function dateSum(dt, qd) {
 if (qd==0) return dt;
 var d1=new Date(dt.substring(3,5)+"/"+dt.substring(0,2)+"/"+dt.substring(6,10));
 var d2=new Date();
 d2.setTime (d1.getTime()+eval(qd)*86400000);
 var dd=d2.getDate();    if (dd<10) dd="0"+dd;
 var mm=d2.getMonth()+1; if (mm<10) mm="0"+mm;
 return dd+"/"+mm+"/"+d2.getFullYear();
}
function getMonth(m,lang,comp) {
 if (lang==null) lang='ing';
 if (comp==null) comp=false;
 if (lang=='ing') {
    if (comp) me=new Array('January','February','March','April','May','June','July','August','September','October','November','December');
    else me=new Array('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
 }  else {
    if (comp) me=new Array('janeiro','fevereiro','março','abril','maio','junho','julho','agosto','setembro','outubro','novembro','dezembro');
    else me=new Array('Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Otu','Nov','Dez');
 }
 return me[m-1];
}
function getMonth3(m) {
 return piece('Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec',',',m)
}
function getWDay(dt) {
 var d=new Date(dt.substring(3,5)+"/"+dt.substring(0,2)+"/"+dt.substring(6,10));
 var w=new Array('Domingo','Segunda-feira','Terça-feira','Quarta-feira','Quinta-feira','Sexta-feira','Sábado');
 return w[d.getDay()];
}
function orderby(n) {
  if (ordFld!=n) {document.write('<a href="'+wiPag+'.wsp?ss.NOrder='+n+'&ss.Asc="><img src="imagens/iOrder.gif" border="0"></a>'); return;}
  if (ordAsc=='Desc') {document.write('<a href="'+wiPag+'.wsp?ss.Asc="><img src="imagens/iOrderup.gif" border="0"></a>'); return;}
  document.write('<a href="'+wiPag+'.wsp?ss.Asc=Desc"><img src="imagens/iOrderdw.gif" border="0"></a>');
}
function validRequiredElements(frm, msg) {
   if (!frm) frm = document.forms[0];
   for (var i=0; i<frm.elements.length; i++) {
      if (frm.elements[i].getAttribute("required")=="true") {
         var ok = false;
         if (frm.elements[i].type.toLowerCase()=="radio") {
            for (var j=0; j<frm[frm.elements[i].name].length; j++) {
               if (frm[frm.elements[i].name][j].checked) {
                  ok = true; break;
               }
            }
         } else ok = !(frm.elements[i].value=="");
         if (!ok) {
                  msg = frm.elements[i].getAttribute("requiredmsg");
          if (!msg || msg=="") msg="Campo obrigatório não preenchido";
          alert(msg);
        frm.elements[i].focus();
        return false;
      }
      }
  }
   return true;
}

//-->