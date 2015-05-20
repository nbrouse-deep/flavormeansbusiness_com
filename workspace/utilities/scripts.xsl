<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- javascript to run at the end of page load -->
<xsl:template name="scripts">
    <xsl:if test="not(/data/staff-ips/entry[address = /data/useragent-details/ip-address])">
        <script>
            window._gaq = [['_setAccount','UA-3420976-72'],['_trackPageview'],['_trackPageLoadTime']];
            Modernizr.load({
                load: ('https:' == location.protocol ? '//ssl' : '//www') + '.google-analytics.com/ga.js'
            });
        </script>
    </xsl:if>
     <meta http-equiv="X-Frame-Options" content="Deny" /> 
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="{$workspace}/php/sql-injection.php"></script>
	 <script type="text/javascript" src="{$workspace}/js/plugins.js"></script>
    <script type="text/javascript" src="{$workspace}/js/script.js"></script>
      <!--<link rel="stylesheet" href="http://www.jacklmoore.com/colorbox/example1/colorbox.css" />-->
    <link rel="stylesheet" href="{$workspace}/css/override.css" />
    <!--<script src="http://www.jacklmoore.com/colorbox/jquery.colorbox.js"></script> 
    <script type="text/javascript" src="{$workspace}/js/the-colorbox.js"></script>
     <script type="text/javascript" src="{$workspace}/js/fmb-colorbox.js"></script>-->
<script src="https://raw.github.com/stowball/jQuery-rwdImageMaps/master/jquery.rwdImageMaps.min.js"></script>
<script>
$(document).ready(function(e) {
    $('img[usemap]').rwdImageMaps();
});
</script>

    <!-- chrome frame -->
    <!--[if lt IE 7 ]>
        <script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js"></script>
        <script>window.attachEvent('onload',function(){CFInstall.check({mode:'overlay'})})</script>
    <![endif]-->
    
   
</xsl:template>
</xsl:stylesheet>
