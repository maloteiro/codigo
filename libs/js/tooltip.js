var qTipTag = new Array("label","a","abbr","acronym","input","textarea"); // Array com as tags que nos implementaremos o Tool-tip
var qTipX = -30; // qTip's X offset//
var qTipY = 15; //qTip's Y offset//

tooltip = {
  name : "qTip",
  offsetX : qTipX,
  offsetY : qTipY,
  tip : null
}

tooltip.init = function () {
	var tipNameSpaceURI = "http://www.w3.org/1999/xhtml";
	if(!tipContainerID){ var tipContainerID = "qTip";}
	var tipContainer = document.getElementById(tipContainerID);

	if(!tipContainer) {
	  tipContainer = document.createElementNS ? document.createElementNS(tipNameSpaceURI, "div") : document.createElement("div");
		tipContainer.setAttribute("id", tipContainerID);
	  document.getElementsByTagName("body").item(0).appendChild(tipContainer);
	}

	if (!document.getElementById) return;
	this.tip = document.getElementById (this.name);
	if (this.tip) document.onmousemove = function (evt) {tooltip.move (evt)};

	var a, sTitle;
	for (var j = 0; j < qTipTag.length; j ++) { // loop que vai implementar o tool-tip nas tags escolhidas
		anchors = document.getElementsByTagName ( qTipTag[j] ); // pegamos a tag escolhida
		
		for (var i = 0; i < anchors.length; i ++) { // atribuicao dos tool tips
			a = anchors[i];
			sTitle = a.getAttribute("title"); // pegamos o atributo title
			if(sTitle) { // se estiver setado
				a.setAttribute("tiptitle", sTitle);
				a.removeAttribute("title");
				a.onmouseover = function() {tooltip.show(this.getAttribute('tiptitle'))};
				a.onmouseout = function() {tooltip.hide()};
			}
		}// fim do for
	}
}

tooltip.move = function (evt) {
	var x=0, y=0;
	if (document.all) {// IE
		x = (document.documentElement && document.documentElement.scrollLeft) ? document.documentElement.scrollLeft : document.body.scrollLeft;
		y = (document.documentElement && document.documentElement.scrollTop) ? document.documentElement.scrollTop : document.body.scrollTop;
		x += window.event.clientX;
		y += window.event.clientY;
		
	} else {//Bons Navegadores
		x = evt.pageX;
		y = evt.pageY;
	}
	this.tip.style.left = (x + this.offsetX) + "px";
	this.tip.style.top = (y + this.offsetY) + "px";
}

tooltip.show = function (text) {
	if (!this.tip) return;
	this.tip.innerHTML = text;
	this.tip.style.display = "block";
}

tooltip.hide = function () {
	if (!this.tip) return;
	this.tip.innerHTML = "";
	this.tip.style.display = "none";
}