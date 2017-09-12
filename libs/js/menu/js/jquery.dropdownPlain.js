
$(function(){

    $("ul.dropdown li").hover(function(){
    	    	    	
    	
//    	$id('boxContainer').className = 'visibility-hidden';
//    	$id('load-menu').className = 'display-block';
    	
    //	var selects = $tag('select');    	    	   	
    	
    //	for (i=0; i < selects.length; i++) {
    //		
	//		selects[i].style.visibility = 'hidden';
	//	}
    
        $(this).addClass("hover");
        $('ul:first',this).css('visibility', 'visible');
    
    }, function(){
    	
//    	$id('boxContainer').className = 'visibility-visible';
//    	$id('load-menu').className = 'display-none';
    	
    //	var selects = $tag('select');
    	
    //	for (i=0; i < selects.length; i++) {
    //		selects[i].style.visibility = 'visible';
	//	}
        
        $(this).removeClass("hover");
        $('ul:first',this).css('visibility', 'hidden');
    
    });
    
    $("ul.dropdown li ul li:has(ul)").find("a:first").append(" &raquo; ");
       
});  