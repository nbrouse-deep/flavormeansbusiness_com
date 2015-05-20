<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />
<xsl:import href="../utilities/offers.xsl" />




<xsl:template match="/data">
    <div class="left">
        <h1><xsl:value-of select="$page-title"/></h1>
    </div>


    <xsl:call-template name="sidebar" />
</xsl:template>

</xsl:stylesheet>
