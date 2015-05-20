<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />
<xsl:import href="../utilities/videos.xsl" />



<xsl:template match="/data">
    <div class="left">
        <xsl:apply-templates select="videos/entry" mode="multiple" />
    </div>


    <xsl:call-template name="sidebar" />
</xsl:template>

</xsl:stylesheet>
