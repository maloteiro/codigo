$(document).ready(function(){
    $('#btnEnviar').click(function(){
        $('#formulario').ajaxForm({
            uploadProgress: function(event, position, total, percentComplete) {
                $('progress').attr('value',percentComplete);
                $('#porcentagem').html(percentComplete+'%');
            },        
            success: function(data) {
                $('progress').attr('value','100');
                $('#porcentagem').html('100%');                
                if(data.sucesso == true){
                    $('#resposta').html('<img src="'+ data.msg +'" />');
                }
                else{
                    $('#resposta').html(data.msg);
                }                
            },
            error : function(data){
                //alert(data.msg)
                $('#resposta').html('Erro ao enviar requisi��o');
            },
            dataType: 'json',
            url: 'enviar_arquivo.php',
            resetForm: true
        }).submit();
    })
})