$(function() {
	$('.close-red').click(function(){
		$('#message-red').fadeOut(
			'slow', function() {
    		$('#message-red').hide();
  		});	
	});
	
	$('.close-yellow').click(function(){
		$('#message-yellow').fadeOut(
			'slow', function() {
    		$('#message-yellow').hide();
  		});	
	});
	
	$('.close-green').click(function(){
		$('#message-green').fadeOut(
			'slow', function() {
    		$('#message-green').hide();
  		});	
	});
	
	$('.close-blue').click(function(){
		$('#message-blue').fadeOut(
			'slow', function() {
    		$('#message-blue').hide();
  		});	
	});
});