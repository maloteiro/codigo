/*
 * WEBINSIDE - Ferramenta de produtividade Java
 * Copyright (c) 2011-2012 LINEWEB Solu��es Tecnol�gicas Ltda.
 * Copyright (c) 2009-2010 Inc�gnita Intelig�ncia Digital Ltda.
 *
 * Este programa � software livre; voc� pode redistribu�-lo e/ou modific�-lo 
 * sob os termos da GNU LESSER GENERAL PUBLIC LICENSE (LGPL) conforme publicada 
 * pela Free Software Foundation; vers�o 2.1 da Licen�a.
 * Este programa � distribu�do na expectativa de que seja �til, por�m, SEM 
 * NENHUMA GARANTIA; nem mesmo a garantia impl�cita de COMERCIABILIDADE OU 
 * ADEQUA��O A UMA FINALIDADE ESPEC�FICA.
 * 
 * Consulte a GNU LGPL para mais detalhes.
 * Voc� deve ter recebido uma c�pia da GNU LGPL junto com este programa; se n�o, 
 * veja em http://www.gnu.org/licenses/ 
 */

// Classe WIEvent
// 
// Construtor:  WIEvent(timeout, prjId)
// Parametros:  timeout = tempo de espera em segundos para a resposta do WIEvent. Default = 30.
//              prjId   = id do projeto onde est� o event a ser chamado. Default = projeto chamado na url.
//
// M�todos:
//    
//  execute() -> executa o processamento do WIEvent.
//
//  preread(nome)   -> solicita a leitura de uma vari�vel. O conte�do poder� ser lido
//                     com o m�todo readobj(), ap�s a chamada do m�todo execute().
//
//  readobj(nome)   -> l� uma vari�vel previamente solicitada com preread().
//
//  writeobj(nome, valor) -> grava uma vari�vel na sess�o do WI. A grava��o somente ira se
//                     efetivar ap�s a chamada ao m�todo execute().
//
//  selectdb(eventId) -> solicita a execu��o de um evento do tipo SELECT, identificado por
//                     eventId.
//
//
//  updatedb(eventId) -> solicita a execu��o de um evento do tipo UPDATE, identificado por
//                     eventId. O evento somente ser� executado ao se chamar o m�todo execute().
//
//  next()          -> avan�a para o pr�ximo registro retornado pela chamada ao m�todo selectdb().
//
//  column(nome)    -> retorna o valor da coluna indicada por nome, que pode ser o nome da coluna
//                     ou sua ordem no registro.
//
//  go(linha)       -> move o cursor para a linha indicada, dentro dos registros retornados.
//
//  rowcount()      -> retorna o n�mero de registros retornados pela chamada ao m�todo selectdb().
//
//  populateCombo(eventId, combo, c�digo, valor) -> popula a combo passada como par�metro com registros
//                  retornados por um evento do tipo SELECT identificado por eventId, colocando
//                  como "value" a coluna indicada por c�digo e como texto a coluna indicada por valor.
//  
//  setInputValue(eventId, input, coluna) -> escreve no valor do campo input o valor da coluna indicada 
//                  por coluna, do primeiro registro retornado por um evento do tipo SELECT identificado
//                  por eventId.

var doc = document;
doc.WIEventArray = new Array();

function WIEvent(timeout, prjId) {
   // propriedades
   if(!prjId) {
      prjId = window.location.href.split('/')[3];
   }
   this.project = prjId;
   this.currentRow = - 1;
   this.maxRow = 0;
   this.resultSet = new Array();
   this.params = new Object();
   // m�todos
   this.readobj = readObject;
   this.writeobj = writeObject;
   this.selectdb = selectDb;
   this.updatedb = updateDb;
   this.execute = execute;
   this.next = next;
   this.column = column;
   this.go = go;
   this.preread = preread;
   this.rowcount = rowcount;
   this.populateCombo = populateCombo;
   this.getErrorMessage = getErrorMessage;
   this.setInputValue = setInputValue;
   this.reads = new Object();
}
function execute() {
   this.responseText = '';
   this.resultSet = new Array();
   this.currentRow = - 1;
   var xmlhttp;
   try
   {
      xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
   }
   catch(er) {
      xmlhttp = new XMLHttpRequest();
   }
   var server = location.protocol + "//" + location.host;
   xmlhttp.open("POST", server + "/" + this.project + "/EventConnector.wsp", false);
   xmlhttp.setRequestHeader("Content-Type", 'application/x-www-form-urlencoded');
   var data = '';
   for(i in this.params) {
      tmp = encodeURI(i) + "=" + encodeURI(this.params[i]) + "&";
      tmp = tmp.replace(/%252B/gi,'%2B');
      tmp = tmp.replace(/%2526/gi,'%26');
      data += tmp;
   }

   if (this.debug) {
     alert('Enviando: \n' + data)
   }

   xmlhttp.send(data);
   if(xmlhttp.status != 200) {
      var msg = this.getErrorMessage(xmlhttp.status); 
      if (this.debug) {
         alert('Erro: ' + msg)
      } 
      return msg;
   }
   this.responseText = xmlhttp.responseText;

   if (this.debug) {
     alert('Status: ' + xmlhttp.status + '\nRecebendo: \n' + this.responseText)
   } 

   if (this.responseText == '') return 'Erro: Resposta vazia.';
   if (this.responseText.indexOf('###SESSION_EXPIRED###:') == 0) {
      location = this.responseText.split('\n')[1];
      return;
   }
   var xmlDoc;
   var rows;
   var vars;
   try
   {
      xmlDoc = new ActiveXObject("Msxml2.DOMDocument");
      xmlDoc.async = false;
      xmlDoc.resolveExternals = false;
      if(!xmlDoc.loadXML(xmlhttp.responseText)) {
         if (this.debug) alert(xmlDoc.parseError.reason);
         return xmlDoc.parseError.reason;
      }
      if (xmlDoc.getElementsByTagName('selectdb').length > 0) {
        rows = xmlDoc.getElementsByTagName('selectdb')[0].childNodes;
      }
      if (xmlDoc.getElementsByTagName('reads').length > 0) {
        vars = xmlDoc.getElementsByTagName('reads')[0].childNodes;
      }
   }
   catch(er) {
      xmlDoc = new DOMParser().parseFromString(xmlhttp.responseText, "text/xml").documentElement;
      if (xmlDoc.getElementsByTagName('selectdb')) {
        rows = xmlDoc.getElementsByTagName('div');
      }
      if (xmlDoc.getElementsByTagName('reads').length > 0) {
        vars = xmlDoc.getElementsByTagName('input');
      }
   }
   for(var i = 0; vars && i < vars.length; i++) {
     this.reads[vars[i].getAttribute('name')] = vars[i].getAttribute('value');
   }
   for(var i = 0; rows && i < rows.length; i++) {
      var cols = rows[i].getElementsByTagName('span');
      var obj = new Object();
      for(var k = 0; k < cols.length; k++) {
         var col = cols[k];
         var text = "";  
         if (col.firstChild != null) {
            var text = col.firstChild.nodeValue;
         }
         obj[col.getAttribute('id')] = text;
         obj[col.getAttribute('seq')] = text;
      }
      this.resultSet[this.resultSet.length] = obj;
   }
   this.maxRow = this.resultSet.length;
   return 'OK';
}

function readObject(key) {
   return this.reads[key];
}

function writeObject(name, value) {
  value = value.toString().replace(/\+/g,"%2B");
  value = value.toString().replace(/&/g,"%26");
  this.params[name] = value;
}

function selectDb(id) {
   this.writeobj('tmp.wievent.select', id);
   this.eventId = id;
   return this.execute();
}

function updateDb(id) {
   this.eventId = id;
   this.writeobj('tmp.wievent.update', id);
}

function next() {
   if(this.currentRow < this.maxRow - 1) {
      this.currentRow++;
   }
   else {
      this.currentRow = - 1;
   }
   return this.currentRow;
}

function column(id) {
   var ret = "";
   if(this.resultSet.length == 0) return ret;
   var row = this.resultSet[this.currentRow];
   if(row) ret = row[(id+"").toLowerCase()];
   return ret;
}

function go(row) {
   if(row > this.maxRow) {
      this.currentRow = - 1;
   }
   else {
      this.currentRow = row;
   }
}

function preread(key) {
   this.writeobj('tmp.wievent.read', key);
}

function rowcount() {
   return this.maxRow;
}

function populateCombo(eventId, combo, keyColumn, valueColumn) {
   var ret = this.selectdb(eventId);
   if(ret != 'OK') {
      return ret;
   }
   combo.length = 0;
   // percorre pelos resultados retornados pela consulta
   for(var i = 0; i < this.maxRow; i++) {
      opt = this.resultSet[i][(keyColumn+"").toLowerCase()];
      txt = this.resultSet[i][(valueColumn+"").toLowerCase()];
      combo.options[combo.length] = new Option(txt, opt);
   }
   return ret;
}

function getErrorMessage(err) {
   var ret = 'Erro ao executar event [' + this.eventId + ']: ';
   switch (err) {
      case 600: {
      	ret += "Event n�o encontrado: " + this.eventId;
        break; }
      case 601: {
      	ret += "Condi��o inv�lida.";
        break; }
      case 602: {
      	ret += "Erro de conex�o com banco de dados.";
        break; }
      case 603: {
        ret += "Erro na express�o SQL.";
        break; }
      default: {
      	ret += "Erro " + err;
        break; }
   }
   return ret;
}

function setInputValue(eventId, input, column) {
  ret = this.selectdb(eventId);
   if(ret != 'OK') {
      return ret;
   }
  this.next();
  input.value = this.column(column);
  return ret;
}