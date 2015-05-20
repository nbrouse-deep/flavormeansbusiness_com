<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">




<xsl:import href="../utilities/master.xsl" />




<xsl:template match="/data">
    <div class="left">
        <img src="{$workspace}/img/we-are-partners.jpg" />


        <section class="story">
            <div class="copy">
                <xsl:copy-of select="heritage/entry/story/*" />
            </div>
            
            <div class="images mobile-only">
                <xsl:copy-of select="heritage/entry/story//img" />
            </div>


            <p class="caption">
                <xsl:value-of select="heritage/entry/caption" />
            </p>
        </section>
    </div>


    <div class="sidebar">
        <h2><em>Minor's</em> History</h2>

        <section class="history">
            <xsl:copy-of select="heritage/entry/history/*" />
        </section>
    </div>
</xsl:template>

</xsl:stylesheet>
