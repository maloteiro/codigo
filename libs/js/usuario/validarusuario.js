function escondeDivMsg(){
document.getElementById('div_msg').style.display='none';

}
function escondeDivMensagem(){
	document.getElementById('div_msg').style.display='none';
	$.ajax(
	{
		type: "POST",
		url: '?d=usuario&a=usuario&f=_excluiMsg',
		data: '',
		beforeSend: function()
		{
		},
		success: function(txt)
		{

		}
	}
	);
}
function inativarUsuario(seq_login,login_usuario){
	$.ajax(
    {
      type: 'POST',
      url:  '?d=usuario&a=usuario&f=_inativaUsuario',
      data: 'seq_login='+ seq_login,
      beforeSend: function()
       {
        },
     success: function(txt)
      {
	  	document.getElementById('div_msg').style.display='block';
	  	document.getElementById('div_msg').innerHTML="<div id='boxCallbackMessage'><span id='CallbackMessage'>"+txt+"</span></div><br />";
	  	var txt1="<img onclick=\"if(confirm('Deseja realmente ativar o Usu�rio:"+login_usuario+"?'))ativarUsuario('"+seq_login+"','"+login_usuario+"');\" src=\"html/img/button_ok.gif\" title=\"Clique aqui para reativar o usu�rio\" alt=\"Clique aqui para reativar o usu�rio\">";
		document.getElementById("img_"+seq_login).innerHTML=txt1;
		document.getElementById("ativo_"+seq_login).innerHTML="<font class='linkInativo' title='Usu�rio ativo no sistema' alt='Usu�rio ativo no sistema'>Inativo</font>";
		document.getElementById("usuario_"+seq_login).innerHTML="<font class='linkInativo' title='Usu�rio ativo no sistema' alt='Usu�rio ativo no sistema'>"+login_usuario+"</font>";
		setTimeout("escondeDivMsg()",5000);
		//alert('oi');
      }
    }
    );
}
function ativarUsuario(seq_login,login_usuario){
	$.ajax(
    {
      type: 'POST',
      url:  '?d=usuario&a=usuario&f=_ativarUsuario',
      data: 'seq_login='+ seq_login,
      beforeSend: function()
       {
        },
     success: function(txt)
      {
	  	document.getElementById('div_msg').style.display='block';
	  	document.getElementById('div_msg').innerHTML="<div id='boxCallbackMessage'><span id='CallbackMessage'>"+txt+"</span></div><br />";
	  	txt1="<img onclick=\"if(confirm('Deseja realmente inativar o Usu�rio: "+login_usuario+"?'))inativarUsuario('"+seq_login+"','"+login_usuario+"');\" src=\"html/img/delete_user.gif\" title=\"Clique aqui para inativar o usu�rio do sistema\" alt=\"Clique aqui para inativar o usu�rio do sistema\">&nbsp;<img onclick=\"if(confirm('Deseja realmente reinicializar a senha do Usu�rio: "+login_usuario+" para 123456 ?'))zerarSenhaUsuario('"+seq_login+"');\" src=\"html/img/exit.gif\" title=\"Clique aqui para reinicializar a senha do usu�rio\" alt=\"Clique aqui para reinicializar a senha do usu�rio\">&nbsp;<img src=\"html/img/encrypted.gif\" title=\"Clique aqui para adicionar/editar as permiss�es do usu�rio\" alt=\"Clique aqui para adicionar/editar as permiss�es do usu�rio\">";
		document.getElementById("img_"+seq_login).innerHTML=txt1;
		document.getElementById("ativo_"+seq_login).innerHTML="<font class='linkAtivo' title='Usu�rio ativo no sistema' alt='Usu�rio ativo no sistema'>Ativo</font>";
		document.getElementById("usuario_"+seq_login).innerHTML="<font class='linkAtivo' title='Usu�rio ativo no sistema' alt='Usu�rio ativo no sistema'>"+login_usuario+"</font>";
		setTimeout("escondeDivMsg()",5000);
      	//document.getElementById('div_msg').innerHTML=txt;
		//setTimeout("window.location.reload()",300);
		//alert('oi');
      }
    }
    );
}
function zerarSenhaUsuario(seq_login){
	$.ajax(
    {
      type: 'POST',
      url:  '?d=usuario&a=usuario&f=_zerarSenhaUsuario',
      data: 'seq_login='+ seq_login,
      beforeSend: function()
       {
        },
     success: function(txt)
      {
	  	document.getElementById('div_msg').style.display='block';
	  	document.getElementById('div_msg').innerHTML="<div id='boxCallbackMessage'><span id='CallbackMessage'>"+txt+"</span></div><br />";
		setTimeout("escondeDivMsg()",5000);
      	//setTimeout("window.location.reload()",300);
		//alert('oi');
      }
    }
    );
}