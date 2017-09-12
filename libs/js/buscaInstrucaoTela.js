//Função para Busca as Instruções para Cada Tela, essa funçção recebe os Seguintes Parametros: URL, DIV e Código da Funcionalidade
//Modo de Usar: onclick="javascript:buscaInstrucaoTela('?d=instrucoes&a=instrucoes&f=_buscaInstrucoes','box1','6');" (Exemplo do Arquivo: instrucoes_mostraInstrucoes.html
function buscaInstrucaoTela(url,div,co_funcionalidade)
{
	var parametros = 'co_funcionalidade=' + co_funcionalidade;
	var myAjax = new Ajax.Updater(
	div, 
	url, 
	{
		method: 'get',
           encoding: 'iso-8859-1',
           parameters: parametros, 
           contentType:  'application/x-www-form-urlencoded',
		
		onComplete: function()
        {
			new Effect.BlindDown(div,{duration:1.0});
			/*new Effect.SlideDown(div,{queue:{scope:'myscope', position:'end', limit: 1}});*/
			/*new Effect.BlindUp(div,{duration:1.5});*/
		}
	});
}
