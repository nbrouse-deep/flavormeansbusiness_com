<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />





<xsl:template match="/data">
    <p>Please wait, redirecting..</p>
</xsl:template>


<xsl:template name="finalize">
    <script type="text/javascript">
        window.location = '/products/latin-flavors/';
    </script> 
</xsl:template>

</xsl:stylesheet>
