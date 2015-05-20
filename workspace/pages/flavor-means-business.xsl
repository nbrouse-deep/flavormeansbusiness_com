<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />
<xsl:import href="../utilities/featured-sidebar.xsl" />




<xsl:template match="/data">
    <div class="left">
        <iframe src="http://player.vimeo.com/video/44944700?title=0&amp;byline=0&amp;portrait=0" frameborder="0" webkitAllowFullScreen="true" mozallowfullscreen="true" allowFullScreen="true"></iframe>


        <div class="copy">
            <xsl:copy-of select="flavor-means-business/entry/copy/*" />
        </div>
    </div>


    <xsl:call-template name="featured-sidebar" />
</xsl:template>

</xsl:stylesheet>
