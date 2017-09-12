<?php
class xmlToArray
{
	function retornaArray($xml)
	{
		require_once("xml.php");
		
		$filename = $xml;
		$fp = fopen($filename,"r");
		$xml = fread ($fp, filesize ($filename));
		fclose($fp);
		$xml_parser = new xmlM();
		$xml_parser->parse($xml);
		$dom = $xml_parser->dom;
	
		foreach ($dom['child_nodes'][0]['child_nodes'] as $chave => $valor){
			foreach($valor['child_nodes'] as $chave1 => $valor1){
				$array[$chave][$valor1['tag_name']] = $valor1['child_nodes'][0];	
			}
		}
	
		//echo"<pre>";print_r($serventia);echo"</pre>";die;
		return $array;
	}
}
?>