jQuery(document).ready(function($){
    $(".tooltip").each(function(){
		$(this).css("cursor", "pointer");
        $(this).qtip({
            show: 'mouseover',
            hide: 'mouseout',
            position: {
                corner: {
                    target: 'topMiddle',
                    tooltip: 'bottomMiddle'
                }
            },
            style: {
                name: 'blue',
                border: {
                    radius: 3
                },
                tip: {
                    corner: 'bottomMiddle',
                    size: {
                        x: 10,
                        y: 10
                    }
                }
            }
        });
    });
});
