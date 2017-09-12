function atualizaItemRequisito(url,div,codigo)
{
	$.ajax(
	{
		type: "POST",
		url: url,
		data: 'uf=' + codigo,
		beforeSend: function()	
		{
			
		},
		success: function(txt)
		{
			document.getElementById('div_item_requisitos').innerHTML=txt;
			var htm = '<table border="0" width="100%" align="center"><tr><td colspan="2"style="text-align:center;background: rgb(238, 239, 242) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous;">Selecione um item de requisito.</td></tr></table>';
			document.getElementById('div_sub_item_requisitos').innerHTML=htm;
		}
	}
	);
}	

function atualizaSubItemRequisito(url,div,codigo)
{
	$.ajax(
	{
		type: "POST",
		url: url,
		data: 'uf=' + codigo,
		beforeSend: function()	
		{
			
		},
		success: function(txt)
		{
			document.getElementById('div_sub_item_requisitos').innerHTML=txt;
		}
	}
	);
}	

function mudaCor(obj){
	if (obj.checked){
		obj.this.style.backgroundColor='#FFFFD0;
	}
	else
		obj.this.style.backgroundColor='#000000;
}
