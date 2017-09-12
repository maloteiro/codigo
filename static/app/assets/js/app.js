$(document).ready(function(){
        $('.date').mask('39/29/9999');
        $('.dateBR').mask('39/19/2999');
        $('.time').mask('00:00:00');
        $('.date_time').mask('99/99/9999 00:00:00');
        $('.cep').mask('99999-999');
		$('.telefone').mask('(99) 9999-99999');
        $('.phone').mask('9999-9999');
        $('.phone_with_ddd').mask('(99) 9999-9999');
        $('.phone_us').mask('(999) 999-9999');
        $('.mixed').mask('AAA 000-S0S');
        $('.cpf').mask('999.999.999-99');
      });
      /*dateBR:{ mask: '39/19/2999'},
              horaBR:{ mask: '99:99999', type:'reverse'},
				proc_ECNJ:{ mask: '9999999-99.9999.9.99.9999'},
				processo:{ mask: '9999999999999999999999999'},
				CPF:{ mask: '999.999.999-99'},
                CEP:{ mask: '99.999-999'},
				telefone:{ mask: '(99) 9999-99999'}
                */