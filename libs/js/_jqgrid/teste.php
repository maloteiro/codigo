<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>jqGrid Demos</title>
<link rel="stylesheet" type="text/css" media="screen" href="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/themes/tree.css" />
<link rel="stylesheet" type="text/css" media="screen" href="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/themes/tabs.css" />
<link rel="stylesheet" type="text/css" media="screen" title="basic" href="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/themes/basic/grid.css" />
<link rel="alternate stylesheet" type="text/css" href="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/themes/coffee/grid.css" title="coffee" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/themes/green/grid.css" title="green" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/themes/sand/grid.css" title="sand" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/themes/steel/grid.css" title="steel" media="screen" />

<link rel="stylesheet" type="text/css" media="screen" href="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/themes/jqModal.css" />
<link rel="stylesheet" type="text/css" media="screen" href="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/themes/ui.datepicker.css" />

<style>
html, body {
	margin: 0;			/* Remove body margin/padding */
	padding: 0;
	overflow: hidden;	/* Remove scroll bars on browser window */	
	font: 12px "Lucida Grande", "Lucida Sans Unicode", Tahoma, Verdana;
	width: 100%;
	height: 100%
}

/*Splitter style */

#Splitter {
/*	min-width: 600px;*/ /* Splitter can't be too thin ... */
	min-height: 300px; /* ... or too flat */
	margin: .1em .1em .1em .1em;
	border: 4px solid #83B4D8; /* No padding allowed */
}

#LeftPane {
	width: 200px; /* optional, initial splitbar position */
	min-width: 50px; /* optional */
	max-width: 350px;
	background: #F8F8FF;
	padding: 2px;
	overflow: auto;
}
/*
 * Right-side element of the splitter.
 */
.ui-layout-resizer { /* all 'resizer-bars' */ 
	background: #83B4D8 url(images/vgrabber.gif) no-repeat center;
} 

#RightPane {
	background: #F8F8FF;
	padding: 2px;
	overflow: auto;
	width:700px;
	min-width: 500px;
	font: 11px "Lucida Grande", "Lucida Sans Unicode", Tahoma, Verdana;

}
/* 
 * Splitter bar style; the .active class is added when the
 * mouse is over the splitter or the splitter is focused
 * via the keyboard taborder or an accessKey. 
 */
#Splitter .vsplitbar {
	width: 4px;
	background: #83B4D8 url(images/vgrabber.gif) no-repeat center;
}
#Splitter .vsplitbar.active, #Splitter .vsplitbar:hover {
	background: #c66 url(images/vgrabber.gif) no-repeat center;
}



</style>
<script src="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/js/jquery.js" type="text/javascript"></script>
<script src="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/js/jquery.ui.all.js" type="text/javascript"></script>
<script src="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/js/jquery.layout.js" type="text/javascript"></script>
<script src="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/js/jquery.jqTree.js" type="text/javascript"></script>
<script src="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/js/jquery.jqDynTabs.js" type="text/javascript"></script>
<script src="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/js/ui.datepicker.js" type="text/javascript"></script>
<script src="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/js/jquery.jqGrid.js" type="text/javascript"></script>
<script src="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/js/jqModal.js" type="text/javascript"></script>

<script src="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/js/jqDnR.js" type="text/javascript"></script>
<script src="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/js/jquery.tablednd.js" type="text/javascript"></script>
<script type="text/javascript" src="http://127.0.0.1/corregedoria/seguranca/serventias_seg_grau/libJS/jqgrid/js/styleswitch.js"></script>

<script type="text/javascript">

var gridimgpath = 'themes/basic/images';
jQuery(document).ready(function(){
	$.jgrid.defaults = $.extend($.jgrid.defaults,{loadui:"block"});
	$('body').layout();

    $("#LeftPane").jqTree('tree.xml?nd='+new Date().getTime(),
                      {saveNodesStateInCookies : false,
                      imgpath:'images/',
                      onSelectNode: function( id, title, isLeaf ) {
                            if( isLeaf ) {
                        		if (!maintab.tabExists(title) ) {
                        			if( maintab.getTabIndex() >= 6) // maximum 5 tabs open 
                        				maintab.TabCloseEl(1);
                                	maintab.CreateTab(title,true,id)
                                }
                            }
                        }                        
    });
    var maintab = $("#RightPane").jqDynTabs({tabcontrol:$("#mainTabArea"), tabcontent :$("#mainPanelArea"), position:"top", imgpath:"images/"});
    var imgarr = {basic: 'themes/basic/images',coffee: 'themes/coffee/images',green: 'themes/green/images',sand: 'themes/sand/images',steel: 'themes/steel/images'};
// end splitter
    $("#styleswitch").change(function(){
		switchStylestyle($(this).val());
        gridimgpath = imgarr[$(this).val()];
        // close all tabls
        var ti = maintab.getTabIndex();
        for(var i=1;i<ti;i++)
            maintab.TabCloseEl(1);
		return false;
    });
	var c = readCookie('style');
    if (c) {
        switchStylestyle(c);
        $("option","#styleswitch").each(function(){
            if ($(this).val()==c) {
                this.selected = true;
                gridimgpath = imgarr[c];
            }
            else this.selected=false;
        });
    }
    

});
</script>
</head>
<body>

  	<div id="LeftPane" class="ui-layout-west"></div> <!-- #LeftPane -->
	<div id="RightPane" class="ui-layout-center">

        <table class="tabHolder" cellspacing="0" cellpadding="0"  onselectstart="return false;">
            <tr id="mainTabArea">
                <td style="border-bottom:3px solid #83B4D8;white-space:nowrap" align="left">
                    Select Theme: <select id='styleswitch'>
                    <option value='basic'>Basic Theme</option>
                    <option value='coffee'>Coffee</option>
                    <option value='green'>Green</option>

                    <option value='sand'>Sand</option>                    
                    <option value='steel'>Steel</option>                    
                    </select>&nbsp;
                </td>
                <td style="font-size:1px;border-bottom:3px solid #83B4D8; width:100% "  align="right"> &nbsp;</td>
            </tr>
        </table> <!-- Tabs pane -->
        <div id="mainPanelArea" class="tabPanel" ></div>

	</div> <!-- #RightPane -->
</div>
</body>
</html>
