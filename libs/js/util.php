<?
class util
{
	function util(&$db, &$smarty)
	{
		$this->db =& $db;
		$this->smarty =& $smarty;
	}
	
	function formatDateForDatabase($dado)
	{
		// recebe a data no formato dd/mm/yyyy e formata de acordo com o formato do banco de dados
		list($dia, $mes, $ano) = explode("/",$dado);
		$data = $ano."-".$mes."-".$dia;
		return $data;
	}
	function showAndHiddenTab($mostrar = false, $esconder = false)
	{
		if(is_array($mostrar))
			foreach($mostrar AS $dado)
				if(in_array($dado, $GLOBALS["abas"]))
					$_SESSION["abas"][$dado] = 1;
		if(is_array($esconder))
			foreach($esconder AS $dado)
				if(in_array($dado, $GLOBALS["abas"]))
					unset($_SESSION["abas"][$dado]);
	}
	
	function validar($parametros)
	{
		//validando os campos definidos obrigatorios
		$erro = $this->validacaoEmBranco();

		if(!empty($erro))
			return $erro;
		else 
			return true;	
	}
	
	function validacaoEmBranco($parametros)
	{
		if (in_array(array("num_serventia", "login"),$parametros))
		{
			foreach ($parametros as $valor) {
				
				if(empty($valor))
					return $erro = "Preencha os campos do formulário.";
			}
		}
		
		if (empty($erro))
			return true;
	}
	
	function camposObrigatorios($parametros){
		
		$camposObrigatorios = array("num_serventia" => '',"login" => '' );
		
		$keys = array_keys($parametros);
		//echo "<pre>"; print_r($parametros); die();
		foreach ( $keys as $chave=>$valor) {

			if (array_key_exists($valor, $camposObrigatorios)) {
				$array = array($parametros[$chave]);
			}
			
		}

		return $array;	
		
		
	}
	
	function data_para_iso($data)
	{
		$d = explode("/",$data);
		return $d[2] . "-" . $d[1] . "-" . $d[0];
	}
	
	function getPaginacao($todosDados)
	{
		require('bibliotecas/Pager/Pager.php');
		if($_SESSION['registro_por_pagina']!="")
			$perPage = $_SESSION['registro_por_pagina'];
		else
			$perPage = 20;
			
		$params = array(
		    'mode'       => 'Sliding',
		    'perPage'    => $perPage,
		    'delta' 	 => 2,
			'itemData'   => $todosDados
		);
		$pager = & Pager::factory($params);
		$res = $pager->getPageData();
		$paginacao = $pager->getLinks();
		$paginacao = $paginacao["all"];
		return compact('res','paginacao');
	}
	
}
?>
