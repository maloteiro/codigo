function hidediv(div, iframe){
    if (document.getElementById) { // DOM3 = IE5, NS6
        var elemento_iframe = document.getElementById(iframe);
        var elemento_div = document.getElementById(div);
        elemento_div.style.visibility = 'hidden';
        elemento_iframe.style.visibility = "hidden";
    }
    else {
        if (document.layers) { // netscape 4 
            document[div].visibility = 'hidden';
            document[iframe].visibility = 'hidden';
        }
        else { // IE 4 
            document.all[div].style.visibility = 'hidden';
            document.all[iframe].style.visibility = 'hidden';
        }
    }
}

function showdiv(div, iframe){
    if (document.getElementById) { // DOM3 = IE5, NS6
        var elemento_div = document.getElementById(div);
        var elemento_iframe = document.getElementById(iframe);
        elemento_div.style.visibility = 'visible';
        var x = elemento_div.offsetLeft;
        var y = elemento_div.offsetTop;
        var w = elemento_div.offsetWidth;
        var h = elemento_div.offsetHeight;
        elemento_iframe.style.left = x + "px";
        elemento_iframe.style.top = y + "px";
        elemento_iframe.style.width = w + "px";
        elemento_iframe.style.height = h + "px";
        elemento_iframe.style.visibility = "visible";
    }
    else {
        if (document.layers) { // netscape 4
            var elemento_div = document[div];
            var elemento_iframe = document[iframe];
            elemento_div.visibility = 'visible';
            var x = elemento_div.offsetLeft;
            var y = elemento_div.offsetTop;
            var w = elemento_div.offsetWidth;
            var h = elemento_div.offsetHeight;
            elemento_iframe.left = x + "px";
            elemento_iframe.top = y + "px";
            elemento_iframe.width = w + "px";
            elemento_iframe.height = h + "px";
            elemento_iframe.visibility = "visible";
        }
        else { // IE 4 
            var elemento_div = document.all[div];
            var elemento_iframe = document.all[iframe];
            elemento_div.style.visibility = 'visible';
            var x = elemento_div.offsetLeft;
            var y = elemento_div.offsetTop;
            var w = elemento_div.offsetWidth;
            var h = elemento_div.offsetHeight;
            elemento_iframe.style.left = x + "px";
            elemento_iframe.style.top = y + "px";
            elemento_iframe.style.width = w + "px";
            elemento_iframe.style.height = h + "px";
            elemento_iframe.style.visibility = "visible";
        }
    }
}