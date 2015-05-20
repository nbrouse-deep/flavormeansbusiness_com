<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />
<xsl:import href="../utilities/blog.xsl" />
<xsl:import href="../utilities/pagination.xsl" />




<xsl:template match="/data">
    <div class="left">
        <h1 class="mobile-only">
            <a href="/menu-concepts/">
                Menu Concepts
            </a>
        </h1>


        <!-- show the article summaries -->
        <xsl:apply-templates select="menu-concepts/entry[tags//item/@handle = /data/params/tag]" mode="multiple" />
    </div>


    <xsl:call-template name="menu-concept-sidebar" />
</xsl:template>

</xsl:stylesheet>

