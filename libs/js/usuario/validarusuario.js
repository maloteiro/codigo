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
	  	var txt1="<img onclick=\"if(confirm('Deseja realmente ativar o Usuário:"+login_usuario+"?'))ativarUsuario('"+seq_login+"','"+login_usuario+"');\" src=\"html/img/button_ok.gif\" title=\"Clique aqui para reativar o usuário\" alt=\"Clique aqui para reativar o usuário\">";
		document.getElementById("img_"+seq_login).innerHTML=txt1;
		document.getElementById("ativo_"+seq_login).innerHTML="<font class='linkInativo' title='Usuário ativo no sistema' alt='Usuário ativo no sistema'>Inativo</font>";
		document.getElementById("usuario_"+seq_login).innerHTML="<font class='linkInativo' title='Usuário ativo no sistema' alt='Usuário ativo no sistema'>"+login_usuario+"</font>";
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
	  	txt1="<img onclick=\"if(confirm('Deseja realmente inativar o Usuário: "+login_usuario+"?'))inativarUsuario('"+seq_login+"','"+login_usuario+"');\" src=\"html/img/delete_user.gif\" title=\"Clique aqui para inativar o usuário do sistema\" alt=\"Clique aqui para inativar o usuário do sistema\">&nbsp;<img onclick=\"if(confirm('Deseja realmente reinicializar a senha do Usuário: "+login_usuario+" para 123456 ?'))zerarSenhaUsuario('"+seq_login+"');\" src=\"html/img/exit.gif\" title=\"Clique aqui para reinicializar a senha do usuário\" alt=\"Clique aqui para reinicializar a senha do usuário\">&nbsp;<img src=\"html/img/encrypted.gif\" title=\"Clique aqui para adicionar/editar as permissões do usuário\" alt=\"Clique aqui para adicionar/editar as permissões do usuário\">";
		document.getElementById("img_"+seq_login).innerHTML=txt1;
		document.getElementById("ativo_"+seq_login).innerHTML="<font class='linkAtivo' title='Usuário ativo no sistema' alt='Usuário ativo no sistema'>Ativo</font>";
		document.getElementById("usuario_"+seq_login).innerHTML="<font class='linkAtivo' title='Usuário ativo no sistema' alt='Usuário ativo no sistema'>"+login_usuario+"</font>";
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