//Função para validar email
//Forma de usar onblur="checkEmail(this)"
	function checkEmail(obj)
	{
		var reEmail = /^[\w-]+(\.[\w-]+)*@(([\w-]{2,63}\.)+[A-Za-z]{2,6}|\[\d{1,3}(\.\d{1,3}){3}\])$/;
		var email = obj.value;
		if(email.length > 0)
		{
			if (!reEmail.test(obj.value)) 
			{
				alert(obj.value + " NÃO é um endereço de e-mail válido.");
				obj.value="";
				return false;
			} 
		}
		return true;	
	}